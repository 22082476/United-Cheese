import pandas as pd
from handle import setup_cursor, get_data
from dotenv import load_dotenv
load_dotenv('.env')
import os
from classes import Employee, Employees, DateTable, AdressTable, SalesCurrency, ShipMethod, Shippers, SalesOrderReason, SalesTerritory, PayMethod

def aw_sales_currency():
    cursor_aw = setup_cursor(os.getenv("adventureworks"))
    aw_salescurrency = get_data(cursor_aw, "sales.currency")
    aw_salescurrency = aw_salescurrency.rename(columns={'CurrencyCode': 'currency_code','Name': 'currency_name'})
    sales_currencies = []
    for index, row in aw_salescurrency.iterrows():
        sales_currencies.append(SalesCurrency(row['currency_code'], row['currency_name']))
    
    print(sales_currencies)
    return sales_currencies

def aw_shipmethod():
    cursor_aw = setup_cursor(os.getenv("adventureworks"))

    aw_shipmethod = get_data(cursor_aw, "Purchasing.ShipMethod")

    aw_shipmethod = aw_shipmethod.loc[:, ['ShipMethodID', 'Name', 'ShipBase', 'ShipRate']].rename(columns={'ShipMethodID':'shipmethod_id', 'Name':'shipmethod_name', 'ShipBase':'shipmethod_ship_base', 'ShipRate':'shipmethod_ship_rate'})

    ship_methods = []
    for index, row in aw_shipmethod.iterrows():
        ship_methods.append(ShipMethod(row['shipmethod_id'], row['shipmethod_name'], row['shipmethod_ship_base'], row['shipmethod_ship_rate']))
    print(len(ship_methods))
    return ship_methods


def nw_shippers():
    cursor_nw = setup_cursor(os.getenv('northwind'))
    nw_shipper = get_data(cursor_nw, "dbo.Shippers")
    nw_shipper = nw_shipper.loc[:, ['ShipperID', 'CompanyName', 'Phone']].rename(columns={'ShipperID':'shipper_id', 'CompanyName':'company_name', 'Phone':'Phone'})

    shippers = []
    for index, row in nw_shipper.iterrows():
        shippers.append(Shippers(row['shipper_id'], row['company_name'], row['Phone']))
    print(len(shippers))
    return shippers


def aw_salesorderreason():
    cursor_aw = setup_cursor(os.getenv("adventureworks"))
    aw_salesorderheaderreason = get_data(cursor_aw, "Sales.SalesOrderHeaderSalesReason")
    aw_salesorderreason = get_data(cursor_aw, "Sales.SalesReason")

    aw_salesorderheaderreason = aw_salesorderheaderreason.loc[:, ['SalesOrderID', 'SalesReasonID']].rename(columns={'SalesOrderID':'salesorder_id', 'SalesReasonID':'salesreason_id'})
    aw_salesorderreason = aw_salesorderreason.loc[:, ['SalesReasonID', 'Name', 'ReasonType']].rename(columns={'SalesReasonID':'salesreason_id', 'Name':'salesreason_name', 'ReasonType':'salesreason_type'})
    aw_salesorderheaderreasonmerge = pd.merge(aw_salesorderreason, aw_salesorderheaderreason, on='salesreason_id', how='inner')

    sales_order_reasons = []
    for index, row in aw_salesorderheaderreasonmerge.iterrows():
        sales_order_reasons.append(SalesOrderReason(row["salesorder_id"], row["salesreason_id"], row["salesreason_name"], row["salesreason_type"]))
    print(len(sales_order_reasons))
    return sales_order_reasons


def aw_sales_territory():
    cursor_aw = setup_cursor(os.getenv("adventureworks"))
    aw_sales_territory = get_data(cursor_aw, "Sales.SalesTerritory")
    aw_sales_territory = aw_sales_territory.loc[:, ['TerritoryID', 'Name', 'SalesYTD', 'SalesLastYear', 'CostYTD', 'CostLastYear']].rename(columns={'TerritoryID':'sales_territory_id', 'Name':'sales_territory_name', 'SalesYTD':'sales_territory_YTD', 'SalesLastYear':'sales_territory_sales_last_year', 'CostYTD':'sales_territory_cost_YTD', 'CostLastYear':'sales_territory_cost_last_year'})

    sales_territories = []
    for index, row in aw_sales_territory.iterrows():
        sales_territories.append(SalesTerritory(row["sales_territory_id"], row["sales_territory_name"], row["sales_territory_YTD"], row["sales_territory_sales_last_year"], row["sales_territory_cost_YTD"], row["sales_territory_cost_last_year"]))
    print(len(sales_territories))
    return sales_territories


def aw_paymethod_table():
    aw_paymethod_columns = ['paymethod_id', 'creditcard']
    aw_paymethod = pd.DataFrame(columns=aw_paymethod_columns)
    aw_paymethod = aw_paymethod.rename(columns={'paymethod_id':'paymethod', 'creditcard':'CreditCard'})

    pay_methods = []
    for index, row in aw_paymethod.iterrows():
        pay_methods.append(PayMethod(row["paymethod"], row["CreditCard"]))
    print(len(pay_methods))
    return pay_methods

def aw_date_table():
    aw_date_columns = ['year', 'quarter', 'month', 'day', 'hour', 'minute', 'Date']
    aw_date = pd.DataFrame(columns=aw_date_columns)
    aw_date = aw_date.rename(columns={'year':'year', 'quarter':'quarter', 'month':'month', 'day':'day', 'hour':'hour', 'minute':'minute', 'Date':'Date'})

    date_tables = []
    for index, row in aw_date.iterrows():
        date_tables.append(DateTable(row["year"], row["quarter"], row["month"], row["day"], row["hour"], row["minute"], row["Date"]))
    print(len(date_tables))
    return date_tables



def aw_adress_table():
    aw_adress_columns = ['country', 'region', 'city', 'postalcode', 'street', 'adress']
    aw_adress = pd.DataFrame(columns=aw_adress_columns)

    adress_tables = []
    for index, row in aw_adress.iterrows():
        adress_tables.append(AdressTable(row["country"], row["region"], row["city"], row["postalcode"], row["street"], row["adress"]))
    print(len(adress_tables))
    return adress_tables