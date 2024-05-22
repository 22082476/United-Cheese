import pandas as pd
from connections import setup_cursors, get_data

def main():
    cursor_aw, cursor_nw, cursor_aenc, export_cursor = setup_cursors()
    #  cursor_aw = connection_aw.cursor()
    #     cursor_nw = connection_nw.cursor()
    #     cursor_aenc = connection_aenc.cursor()
    #     export_cursor = connection_dw.cursor()

    product = get_data(cursor_aw, "Production.Product")

    sub_category = get_data(cursor_aw, "Production.ProductSubcategory")
    category = get_data(cursor_aw, "Production.ProductCategory")
    
    inventory = get_data(cursor_aw, "Production.ProductInventory")
    
    model = get_data(cursor_aw, "Production.ProductModel")
    description_culture = get_data(cursor_aw, "Production.ProductModelProductDescriptionCulture")
    description = get_data(cursor_aw, "Production.ProductDescription")
    culture = get_data(cursor_aw, "Production.Culture")

    purchase_vendor = get_data(cursor_aw, 'Purchasing.ProductVendor')
    vendor = get_data(cursor_aw, 'Purchasing.Vendor')
    business_entity_address = get_data(cursor_aw, 'Person.BusinessEntityAddress')
    address = get_data(cursor_aw, 'Person.Address')
    state_province = get_data(cursor_aw, 'Person.StateProvince')
    country_region = get_data(cursor_aw, 'Person.CountryRegion')

    categories = pd.merge(sub_category, category, left_on="ProductCategoryID", right_on="ProductCategoryID")
    categories = categories.rename(columns={'Name_x': 'ProductSubCategory', 'Name_y': 'ProductCategory'})
    categories = categories.loc[:, ['ProductSubcategoryID', 'ProductSubCategory', 'ProductCategory']]
    

    # Som van alle hoeveelheden gepakt per ProductID, kan ook anders
    inventory = inventory.groupby('ProductID')['Quantity'].sum().reset_index()
    
    # Nog ff checken met het lege CultureID en die naam
    merge = pd.merge(description_culture, description, how='left')
    merge2 = pd.merge(merge, culture, left_on='CultureID', right_on='CultureID', how='left')
    merge2 = merge2.loc[:, ['ProductModelID', 'Description', 'Name']].rename(columns={'Name': 'Culture'})
    merge2 = merge2.pivot_table(index='ProductModelID', columns='Culture', values='Description', aggfunc='first')
    merge2.reset_index(inplace=True)
    merge2 = merge2.rename(columns={'Arabic':'Description_Arabic','Chinese':'Description_Chinese','English':'Description_English','French':'Description_French','Hebrew':'Description_Hebrew','Thai':'Description_Thai'})
    merge3 = pd.merge(model, merge2, left_on='ProductModelID', right_on='ProductModelID', how='left')
    merge3 = merge3.loc[:, ['ProductModelID', 'Name', 'CatalogDescription', 'Instructions', 'Description_Arabic','Description_Chinese','Description_English','Description_French','Description_Hebrew','Description_Thai']].rename(columns={'Name': 'ModelName'})

    product1 = pd.merge(product, merge3, left_on='ProductModelID', right_on='ProductModelID', how='left')
    product2 = pd.merge(product1, inventory, left_on='ProductID', right_on='ProductID', how='left')
    product3 = pd.merge(product2, categories, left_on='ProductSubcategoryID', right_on='ProductSubcategoryID', how='left')
   
    business_entity_address = business_entity_address.loc[:, ['BusinessEntityID', 'AddressID']]
    address = address.loc[:, ['AddressID', 'AddressLine1', 'City', 'StateProvinceID', 'PostalCode']].rename(columns={'AddressLine1': 'Vendor_Address', 'City': 'Vendor_City', 'PostalCode': 'Vendor_PostalCode'})
    state_province = state_province.loc[:, ['StateProvinceID', 'Name', 'CountryRegionCode']].rename(columns={'Name':'Vendor_StateProvinceName'})
    
    all_vendors = purchase_vendor.loc[:, ['ProductID', 'BusinessEntityID', 'StandardPrice', 'OnOrderQty']]
    vendors_merge = pd.merge(all_vendors, vendor, left_on='BusinessEntityID', right_on='BusinessEntityID', how='left')
    vendors_merge = vendors_merge.loc[:, ['ProductID', 'BusinessEntityID', 'StandardPrice', 'Name', 'ActiveFlag', 'PreferredVendorStatus', 'OnOrderQty']].rename(columns={'Name':'VendorName', 'StandardPrice':'StandardCost'})

    duplicated_product_ids = vendors_merge[vendors_merge.duplicated('ProductID', keep=False)]['ProductID'].unique()
    duplicated_vendors = vendors_merge[vendors_merge['ProductID'].isin(duplicated_product_ids)]
    unique_vendors = vendors_merge[~vendors_merge['ProductID'].isin(duplicated_product_ids)]

    duplicated_vendors = duplicated_vendors.sort_values(by=['ProductID', 'BusinessEntityID'])
    duplicated_vendors = duplicated_vendors.groupby('ProductID').apply(
        lambda group: group if group['ActiveFlag'].all() and group['PreferredVendorStatus'].all() else group.head(1)
    ).reset_index(drop=True)
    vendors_merge_clean_1 = pd.concat([duplicated_vendors, unique_vendors])
    
    def remove_nan_onorderqty(group):
        if group['OnOrderQty'].notna().any():
            return group.dropna(subset=['OnOrderQty'])
        return group.head(1)
    
    vendors_merge_clean = vendors_merge_clean_1.groupby('ProductID').apply(remove_nan_onorderqty).reset_index(drop=True)
    vendors_merge_clean = vendors_merge_clean.drop_duplicates(subset='ProductID', keep='first')
    vendor_info = vendors_merge_clean.loc[:, ['ProductID', 'BusinessEntityID', 'StandardCost', 'VendorName']]
    vendor_address = pd.merge(vendor_info, business_entity_address, left_on='BusinessEntityID', right_on='BusinessEntityID', how='left')
    vendor_address2 = pd.merge(vendor_address, address, left_on='AddressID', right_on='AddressID', how='left')
    state_country = pd.merge(state_province, country_region, left_on='CountryRegionCode', right_on='CountryRegionCode', how='left')
    state_country = state_country.loc[:, ['StateProvinceID', 'Vendor_StateProvinceName', 'Name']].rename(columns={'Name': 'Vendor_CountryName'})
    vendor_info2 = pd.merge(vendor_address2, state_country, left_on='StateProvinceID', right_on='StateProvinceID', how='left')

    aw_products = pd.merge(product3, vendor_info2, left_on='ProductID', right_on='ProductID', how='left')
    aw_products['ProductID'] = 'AW_' + aw_products['ProductID'].astype(str)


 
def main2():
       # combi tabel van products, suppliers & Categories
    cursor_aw, cursor_nw, cursor_aenc, export_cursor = setup_cursors()

    nw_category = get_data(cursor_nw, "dbo.Categories")
    nw_products = get_data(cursor_nw, "dbo.Products")
    nw_suppliers = get_data(cursor_nw, "dbo.Suppliers")

    nw_product_merge = pd.merge(nw_category, nw_products)
    nw_product_merge2 = pd.merge(nw_product_merge, nw_suppliers)
    nw_product_merge2



