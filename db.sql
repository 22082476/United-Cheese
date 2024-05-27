CREATE TABLE product_review (
    s_key INT IDENTITY(1,1) PRIMARY KEY,
	product_review_id INT NOT NULL,
    review_rating INT NOT NULL,
    /* Date */
    year varchar(4) NOT NULL,
    quarter varchar(1) NOT NULL,
    month varchar(2) NOT NULL,
    day varchar(2) NOT NULL,
    hour varchar(2) NOT NULL,
    minute varchar(2) NOT NULL,
    review_date DATETIME NOT NULL, 

    /* Product t */
    product_id VARCHAR(255) NOT NULL,
    product_name varchar(max) NOT NULL,
    product_number varchar(255),
    product_make_flag INT,
    product_finished_goods_flag INT,
    product_safety_stock_level INT,
    product_reorder_point INT,
    product_standard_cost DECIMAL(19,4),
    product_list_price DECIMAL(19,4),
    product_size varchar(255),
    product_weight DECIMAL(19,4),
    product_days_to_manufacture INT,
    product_line varchar(255),
    product_class varchar(255),
    product_style varchar(255),
    product_category varchar(255),
    product_subcategory varchar(255),
    product_model varchar(255),
    product_sell_start_date datetime,
    product_sell_end_date datetime,
    product_discontinued_date datetime,
    product_discontinued bit,
    product_size_unit_measure_code varchar(255),
    product_weight_unit_measure_code varchar(255),
    product_vendor_country varchar(255),
    product_vendor_city varchar(255),
    product_vendor_postal_code varchar(255),
    product_vendor_address varchar(255),
    product_vendor_name varchar(255),
    product_color varchar(255),
    product_quantity INT,

    change_date TIMESTAMP NOT NULL
);

CREATE TABLE bill_of_materials (
    s_key INT IDENTITY(1,1) PRIMARY KEY,
	bill_of_materials_id INT NOT NULL,
    bill_of_materials_bom_level INT NOT NULL,
    bill_of_materials_per_assembly_qty DECIMAL(8,2) NOT NULL,
    bill_of_materials_unit_measure_code varchar(3),

    /* Date */
    start_date_year varchar(4) NOT NULL,
    start_date_quarter varchar(1) NOT NULL,
    start_date_month varchar(2) NOT NULL,
    start_date_day varchar(2) NOT NULL,
    start_date_hour varchar(2) NOT NULL,
    start_date_minute varchar(2) NOT NULL,
    bill_of_materials_start_date DATETIME,

     /* Date */
    end_date_year varchar(4) NOT NULL,
    end_date_quarter varchar(1) NOT NULL,
    end_date_month varchar(2) NOT NULL,
    end_date_day varchar(2) NOT NULL,
    end_date_hour varchar(2) NOT NULL,
    end_date_minute varchar(2) NOT NULL,
    bill_of_materials_end_date DATETIME,
    

    /* Product */
    product_id VARCHAR(255) NOT NULL,
    product_name varchar(max) NOT NULL,
    product_number varchar(255),
    product_make_flag INT,
    product_finished_goods_flag INT,
    product_safety_stock_level INT,
    product_reorder_point INT,
    product_standard_cost DECIMAL(19,4),
    product_list_price DECIMAL(19,4),
    product_size varchar(255),
    product_weight DECIMAL(19,4),
    product_days_to_manufacture INT,
    product_line varchar(255),
    product_class varchar(255),
    product_style varchar(255),
    product_category varchar(255),
    product_subcategory varchar(255),
    product_model varchar(255),
    product_sell_start_date datetime,
    product_sell_end_date datetime,
    product_discontinued_date datetime,
    product_discontinued bit,
    product_size_unit_measure_code varchar(255),
    product_weight_unit_measure_code varchar(255),
    product_vendor_country varchar(255),
    product_vendor_city varchar(255),
    product_vendor_postal_code varchar(255),
    product_vendor_address varchar(255),
    product_vendor_name varchar(255),
    product_color varchar(255),
    product_quantity INT,

    change_date TIMESTAMP NOT NULL
);

CREATE TABLE special_offer (
    s_key INT IDENTITY(1,1) PRIMARY KEY,
	special_offer_id INT NOT NULL,
    special_offer_discount_pct DECIMAL(19,4) NOT NULL,
    special_offer_min_qty INT NOT NULL,
    special_offer_max_qty INT NOT NULL,
    
    /* Date */
    start_date_year varchar(4) NOT NULL,
    start_date_quarter varchar(1) NOT NULL,
    start_date_month varchar(2) NOT NULL,
    start_date_day varchar(2) NOT NULL,
    start_date_hour varchar(2) NOT NULL,
    start_date_minute varchar(2) NOT NULL,
    special_offer_start_date DATETIME NOT NULL, 

    /* Date */
    end_date_year varchar(4) NOT NULL,
    end_date_quarter varchar(1) NOT NULL,
    end_date_month varchar(2) NOT NULL,
    end_date_day varchar(2) NOT NULL,
    end_date_hour varchar(2) NOT NULL,
    end_date_minute varchar(2) NOT NULL,
    special_offer_end_date DATETIME NOT NULL, 

    /* Product */
    product_id VARCHAR(255) NOT NULL,
    product_name varchar(max) NOT NULL,
    product_number varchar(255),
    product_make_flag INT,
    product_finished_goods_flag INT,
    product_safety_stock_level INT,
    product_reorder_point INT,
    product_standard_cost DECIMAL(19,4),
    product_list_price DECIMAL(19,4),
    product_size varchar(255),
    product_weight DECIMAL(19,4),
    product_days_to_manufacture INT,
    product_line varchar(255),
    product_class varchar(255),
    product_style varchar(255),
    product_category varchar(255),
    product_subcategory varchar(255),
    product_model varchar(255),
    product_sell_start_date datetime,
    product_sell_end_date datetime,
    product_discontinued_date datetime,
    product_discontinued bit,
    product_size_unit_measure_code varchar(255),
    product_weight_unit_measure_code varchar(255),
    product_vendor_country varchar(255),
    product_vendor_city varchar(255),
    product_vendor_postal_code varchar(255),
    product_vendor_address varchar(255),
    product_vendor_name varchar(255),
    product_color varchar(255),
    product_quantity INT,

    change_date TIMESTAMP NOT NULL
);

CREATE TABLE bonus (
    S_KEY INT IDENTITY(1,1) PRIMARY KEY,
    bonus_amount DECIMAL(19,4) NOT NULL,

    /* Date */
    year varchar(4) NOT NULL,
    quarter varchar(1) NOT NULL,
    month varchar(2) NOT NULL,
    day varchar(2) NOT NULL,
    hour varchar(2) NOT NULL,
    minute varchar(2) NOT NULL,
    bonus_date DATETIME NOT NULL,

    /* Employee */
    employee_id VARCHAR(255) NOT NULL,
    employee_full_name varchar(255) NOT NULL,
    employee_extention varchar(255),
    employee_sales_YTD INT,
    employee_sales_last_year INT,
    employee_department_head varchar(255),
    employee_department varchar(255),
    employee_start_date DATETIME,
    employee_birth_date DATETIME,
    employee_salary DECIMAL(19,4),
    employee_country varchar(255),
    employee_region varchar(255),
    employee_city varchar(255),
    employee_zip_code varchar(255),
    employee_street_name varchar(255),
    employee_house_number varchar(10),
    employee_manager varchar(255),
    employee_health_insurance bit,
    employee_life_insurance bit,
    employee_day_care bit,
    employee_sex varchar(1),
    employee_termination_date DATETIME,
    employee_title varchar(255),
    employee_title_of_courtesy varchar(255),
    employee_group varchar(255),
    employee_territory varchar(255),
    employee_country_region_code varchar(255),
    employee_vactions_hours INT,
    employee_sick_leave_hours INT,
    employee_martial_status varchar(255),
    employee_orginanizion_level INT,
    employee_sales_quota INT,
    employee_bonus DECIMAL(19,4),
    employee_commission_pct DECIMAL(19,4),

    change_date TIMESTAMP,
);

CREATE TABLE employee_pay_history (
    S_KEY INT IDENTITY(1,1) PRIMARY KEY,
    business_entity_id VARCHAR(255) NOT NULL,
    rate DECIMAL(19,4) NOT NULL,
    pay_frequency INT NOT NULL,

    /* Date */
    year varchar(4) NOT NULL,
    quarter varchar(1) NOT NULL,
    month varchar(2) NOT NULL,
    day varchar(2) NOT NULL,
    hour varchar(2) NOT NULL,
    minute varchar(2) NOT NULL,
    rate_change_date DATETIME NOT NULL,

     /* Employee */
    employee_id VARCHAR(255) NOT NULL,
    employee_full_name varchar(255) NOT NULL,    
    employee_extention varchar(255),
    employee_sales_YTD INT,
    employee_sales_last_year INT,
    employee_department_head varchar(255),
    employee_department varchar(255),
    employee_start_date DATETIME,
    employee_birth_date DATETIME,
    employee_salary DECIMAL(19,4),
    employee_country varchar(255),
    employee_region varchar(255),
    employee_city varchar(255),
    employee_zip_code varchar(255),
    employee_street_name varchar(255),
    employee_house_number varchar(10),
    employee_manager varchar(255),
    employee_health_insurance bit,
    employee_life_insurance bit,
    employee_day_care bit,
    employee_sex varchar(1),
    employee_termination_date DATETIME,
    employee_title varchar(255),
    employee_title_of_courtesy varchar(255),
    employee_group varchar(255),
    employee_territory varchar(255),
    employee_country_region_code varchar(255),
    employee_vactions_hours INT,
    employee_sick_leave_hours INT,
    employee_martial_status varchar(255),
    employee_orginanizion_level INT,
    employee_sales_quota INT,
    employee_bonus DECIMAL(19,4),
    employee_commission_pct DECIMAL(19,4),
 
    change_date TIMESTAMP,
);

CREATE TABLE employee_deparment_history (
    S_KEY INT IDENTITY(1,1) PRIMARY KEY,

    /* Shift */
    shift_id INT NOT NULL,
    shift_name varchar(255) NOT NULL,
    shift_start_time TIME NOT NULL,
    shift_end_time TIME NOT NULL,

    /* Department */
    department_id INT NOT NULL,
    department_group_name varchar(255) NOT NULL,
    department_name varchar(255) NOT NULL,
    
    /* Date */
    start_date_year varchar(4) NOT NULL,
    start_date_quarter varchar(1) NOT NULL,
    start_date_month varchar(2) NOT NULL,
    start_date_day varchar(2) NOT NULL,
    start_date_hour varchar(2) NOT NULL,
    start_date_minute varchar(2) NOT NULL,
    start_date DATETIME NOT NULL,

    /* Date */
    end_date_year varchar(4) NOT NULL,
    end_date_quarter varchar(1) NOT NULL,
    end_date_month varchar(2) NOT NULL,
    end_date_day varchar(2) NOT NULL,
    end_date_hour varchar(2) NOT NULL,
    end_date_minute varchar(2) NOT NULL,
    end_date DATETIME NOT NULL,

     /* Employee */
    employee_id VARCHAR(255) NOT NULL,
    employee_full_name varchar(255) NOT NULL,
    employee_extention varchar(255),
    employee_sales_YTD INT,
    employee_sales_last_year INT,
    employee_department_head varchar(255),
    employee_department varchar(255),
    employee_start_date DATETIME,
    employee_birth_date DATETIME,
    employee_salary DECIMAL(19,4),
    employee_country varchar(255),
    employee_region varchar(255),
    employee_city varchar(255),
    employee_zip_code varchar(255),
    employee_street_name varchar(255),
    employee_house_number varchar(10),
    employee_manager varchar(255),
    employee_health_insurance bit,
    employee_life_insurance bit,
    employee_day_care bit,
    employee_sex varchar(1),
    employee_termination_date DATETIME,
    employee_title varchar(255),
    employee_title_of_courtesy varchar(255),
    employee_group varchar(255),
    employee_territory varchar(255),
    employee_country_region_code varchar(255),
    employee_vactions_hours INT,
    employee_sick_leave_hours INT,
    employee_martial_status varchar(255),
    employee_orginanizion_level INT,
    employee_sales_quota INT,
    employee_bonus DECIMAL(19,4),
    employee_commission_pct DECIMAL(19,4),

    change_date TIMESTAMP,
);

CREATE TABLE sales_order (
    S_KEY INT IDENTITY(1,1) PRIMARY KEY,

    id varchar(255) NOT NULL,
    line_id varchar(255) NOT NULL,
    unit_price DECIMAL(19,4) NOT NULL,
    quantity INT NOT NULL,
    freight DECIMAL(19,4),
    sub_total DECIMAL(19,4) NOT NULL,
    tax_amt DECIMAL(19,4),
    total_due DECIMAL(19,4) NOT NULL,
    revenue DECIMAL(19,4) NOT NULL,

     /* Date */
    order_date_year varchar(4) NOT NULL,
    order_date_quarter varchar(1) NOT NULL,
    order_date_month varchar(2) NOT NULL,
    order_date_day varchar(2) NOT NULL,
    order_date_hour varchar(2) NOT NULL,
    order_date_minute varchar(2) NOT NULL,
    order_date DATETIME NOT NULL,

    /* Date */
    due_date_year varchar(4),
    due_date_quarter varchar(1),
    due_date_month varchar(2),
    due_date_day varchar(2),
    due_date_hour varchar(2),
    due_date_minute varchar(2),
    due_date DATETIME NOT NULL,

    /* Date */
    ship_date_year varchar(4),
    ship_date_quarter varchar(1),
    ship_date_month varchar(2),
    ship_date_day varchar(2),
    ship_date_hour varchar(2),
    ship_date_minute varchar(2),
    ship_date DATETIME NOT NULL,

    currency_rate_date DATETIME,

    /* Customer */
    customer_id VARCHAR(255) NOT NULL,
    customer_full_name varchar(255),
    customer_person_type varchar(255),
    customer_name_style varchar(255),
    customer_title varchar(255),
    customer_group varchar(255),
    customer_territory_name varchar(255),
    customer_company_name varchar(255),
    customer_country varchar(255),
    customer_region varchar(255),
    customer_city varchar(255),
    customer_zip_code varchar(255),
    customer_address varchar(255),

    /* Sales territory */
    sales_territory_id INT,
    sales_territory_name varchar(255),
    sales_territory_YTD DECIMAL(19,4),
    sales_territory_sales_last_year DECIMAL(19,4),
    sales_territory_cost_YTD DECIMAL(19,4),
    sales_territory_cost_last_year DECIMAL(19,4),

    /* Address */
    ship_to_address_country varchar(255),
    ship_to_address_region varchar(255),
    ship_to_address_city varchar(255),
    ship_to_address_postalcode varchar(255),
    ship_to_address_street varchar(255),
    ship_to_address varchar(255) NOT NULL,

    /* Address */
    bill_to_address_country varchar(255),
    bill_to_address_region varchar(255),
    bill_to_address_city varchar(255),
    bill_to_address_postalcode varchar(255),
    bill_to_address_street varchar(255),
    bill_to_address varchar(255) NOT NULL,

    /* Shipmethod */
    shipmethod_id INT NOT NULL,
    shipmethod_name varchar(255) NOT NULL,
    shipmethod_ship_base DECIMAL(19,4),
    shipmethod_ship_rate DECIMAL(19,4),

    /* paymethod */
    paymethod varchar(255) NOT NULL,

    /* Currency */
    from_currency_code INT,
    from_currency_name varchar(255),

    /* Currency */
    to_currency_code INT,
    to_currency_name varchar(255),

    /* Region */
    region_country varchar(255),
    region_state varchar(255),
    region varchar(255),

    /* Shipper  */
    company_name varchar(255),

    /* Employee */
    employee_id varchar(255),
    employee_full_name varchar(255),
    employee_extention varchar(255),
    employee_sales_YTD INT,
    employee_sales_last_year INT,
    employee_department_head varchar(255),
    employee_department varchar(255),
    employee_start_date DATETIME,
    employee_birth_date DATETIME,
    employee_salary DECIMAL(19,4),
    employee_country varchar(255),
    employee_region varchar(255),
    employee_city varchar(255),
    employee_zip_code varchar(255),
    employee_street_name varchar(255),
    employee_house_number varchar(10),
    employee_manager varchar(255),
    employee_health_insurance bit,
    employee_life_insurance bit,
    employee_day_care bit,
    employee_sex varchar(1),
    employee_termination_date DATETIME,
    employee_title varchar(255),
    employee_title_of_courtesy varchar(255),
    employee_group varchar(255),
    employee_territory varchar(255),
    employee_country_region_code varchar(255),
    employee_vactions_hours INT,
    employee_sick_leave_hours INT,
    employee_martial_status varchar(255),
    employee_orginanizion_level INT,
    employee_sales_quota INT,
    employee_bonus DECIMAL(19,4),
    employee_commission_pct DECIMAL(19,4),

    /* Product */
    product_id VARCHAR(255) NOT NULL,
    product_name varchar(max) NOT NULL,
    product_number varchar(255),
    product_make_flag INT,
    product_finished_goods_flag INT,
    product_safety_stock_level INT,
    product_reorder_point INT,
    product_standard_cost DECIMAL(19,4),
    product_list_price DECIMAL(19,4),
    product_size varchar(255),
    product_weight DECIMAL(19,4),
    product_days_to_manufacture INT,
    product_line varchar(255),
    product_class varchar(255),
    product_style varchar(255),
    product_category varchar(255),
    product_subcategory varchar(255),
    product_model varchar(255),
    product_sell_start_date datetime,
    product_sell_end_date datetime,
    product_discontinued_date datetime,
    product_discontinued bit,
    product_size_unit_measure_code varchar(255),
    product_weight_unit_measure_code varchar(255),
    product_vendor_country varchar(255),
    product_vendor_city varchar(255),
    product_vendor_postal_code varchar(255),
    product_vendor_address varchar(255),
    product_vendor_name varchar(255),
    product_color varchar(255),
    product_quantity INT,

 
    change_date TIMESTAMP,
);

CREATE TABLE transaction_history (
    S_KEY INT IDENTITY(1,1) PRIMARY KEY,
    transaction_id INT NOT NULL,
    quantity INT NOT NULL,
    actual_cost DECIMAL(19,4) NOT NULL,

    /* Transaction Type */
    transaction_type varchar(1) NOT NULL,

    /* Forgein keys sales_order */
    sales_order_s_key INT NOT NULL,
    sales_order_id varchar(255) NOT NULL,
    sales_order_line_id varchar(255) NOT NULL,

    /* Date */
    year varchar(4) NOT NULL,
    quarter varchar(1) NOT NULL,
    month varchar(2) NOT NULL,
    day varchar(2) NOT NULL,
    hour varchar(2) NOT NULL,
    minute varchar(2) NOT NULL,
    transaction_date DATETIME NOT NULL,

    /* Product */
    product_id VARCHAR(255) NOT NULL,
    product_name varchar(max) NOT NULL,
    product_number varchar(255),
    product_make_flag INT,
    product_finished_goods_flag INT,
    product_safety_stock_level INT,
    product_reorder_point INT,
    product_standard_cost DECIMAL(19,4),
    product_list_price DECIMAL(19,4),
    product_size varchar(255),
    product_weight DECIMAL(19,4),
    product_days_to_manufacture INT,
    product_line varchar(255),
    product_class varchar(255),
    product_style varchar(255),
    product_category varchar(255),
    product_subcategory varchar(255),
    product_model varchar(255),
    product_sell_start_date datetime,
    product_sell_end_date datetime,
    product_discontinued_date datetime,
    product_discontinued bit,
    product_size_unit_measure_code varchar(255),
    product_weight_unit_measure_code varchar(255),
    product_vendor_country varchar(255),
    product_vendor_city varchar(255),
    product_vendor_postal_code varchar(255),
    product_vendor_address varchar(255),
    product_vendor_name varchar(255),
    product_color varchar(255),
    product_quantity INT,

    change_date TIMESTAMP,
    FOREIGN KEY (sales_order_s_key) references sales_order(s_key)
);

CREATE TABLE business_entity_contact (
    S_KEY INT IDENTITY(1,1) PRIMARY KEY,

    /* Contact Type */
    contact_type_id INT NOT NULL,
    contact_type_name varchar(255) NOT NULL,

    /* Vendor */
    vendor_id INT NOT NULL,
    vendor_account_number varchar(255) NOT NULL,
    vendor_name varchar(255) NOT NULL,
    vendor_purchasing_website varchar(max),
    vendor_credit_rating INT NOT NULL,
    vender_preferred_vendor_status bit NOT NULL,
    vendor_active bit NOT NULL,

    /* Employee */
    employee_id varchar(255) NOT NULL,
    employee_full_name varchar(255) NOT NULL,    
    employee_extention varchar(255),
    employee_sales_YTD INT,
    employee_sales_last_year INT,
    employee_department_head varchar(255),
    employee_department varchar(255),
    employee_start_date DATETIME,
    employee_birth_date DATETIME,
    employee_salary DECIMAL(19,4),
    employee_country varchar(255),
    employee_region varchar(255),
    employee_city varchar(255),
    employee_zip_code varchar(255),
    employee_street_name varchar(255),
    employee_house_number varchar(10),
    employee_manager varchar(255),
    employee_health_insurance bit,
    employee_life_insurance bit,
    employee_day_care bit,
    employee_sex varchar(1),
    employee_termination_date DATETIME,
    employee_title varchar(255),
    employee_title_of_courtesy varchar(255),
    employee_group varchar(255),
    employee_territory varchar(255),
    employee_country_region_code varchar(255),
    employee_vactions_hours INT,
    employee_sick_leave_hours INT,
    employee_martial_status varchar(255),
    employee_orginanizion_level INT,
    employee_sales_quota INT,
    employee_bonus DECIMAL(19,4),
    employee_commission_pct DECIMAL(19,4),
    
    change_date TIMESTAMP,
);

CREATE TABLE product_cost_history (
    S_KEY INT IDENTITY(1,1) PRIMARY KEY,

    standard_cost DECIMAL(19,4) NOT NULL,

    /* Date */
    start_date_year varchar(4) NOT NULL,
    start_date_quarter varchar(1) NOT NULL,
    start_date_month varchar(2) NOT NULL,
    start_date_day varchar(2) NOT NULL,
    start_date_hour varchar(2) NOT NULL,
    start_date_minute varchar(2) NOT NULL,
    start_date DATETIME NOT NULL,

    /* Date */
    end_date_year varchar(4) NOT NULL,
    end_date_quarter varchar(1) NOT NULL,
    end_date_month varchar(2) NOT NULL,
    end_date_day varchar(2) NOT NULL,
    end_date_hour varchar(2) NOT NULL,
    end_date_minute varchar(2) NOT NULL,
    end_date DATETIME,

    /* Product */
    product_id VARCHAR(255) NOT NULL,
    product_name varchar(max) NOT NULL,
    product_number varchar(255),
    product_make_flag INT,
    product_finished_goods_flag INT,
    product_safety_stock_level INT,
    product_reorder_point INT,
    product_standard_cost DECIMAL(19,4),
    product_list_price DECIMAL(19,4),
    product_size varchar(255),
    product_weight DECIMAL(19,4),
    product_days_to_manufacture INT,
    product_line varchar(255),
    product_class varchar(255),
    product_style varchar(255),
    product_category varchar(255),
    product_subcategory varchar(255),
    product_model varchar(255),
    product_sell_start_date datetime,
    product_sell_end_date datetime,
    product_discontinued_date datetime,
    product_discontinued bit,
    product_size_unit_measure_code varchar(255),
    product_weight_unit_measure_code varchar(255),
    product_vendor_country varchar(255),
    product_vendor_city varchar(255),
    product_vendor_postal_code varchar(255),
    product_vendor_address varchar(255),
    product_vendor_name varchar(255),
    product_color varchar(255),
    product_quantity INT,

    change_date TIMESTAMP,
);

CREATE TABLE sales_territory_history(
    S_KEY INT IDENTITY(1,1) PRIMARY KEY,
    sales_territory_history_business_entity_id varchar(255) NOT NULL,
    sales_territory_history_territory_id INT NOT NULL,

    /* Date */
    end_date_year varchar(4) NOT NULL,
    end_date_quarter varchar(1) NOT NULL,
    end_date_month varchar(2) NOT NULL,
    end_date_day varchar(2) NOT NULL,
    end_date_hour varchar(2) NOT NULL,
    end_date_minute varchar(2) NOT NULL,
    end_date datetime,

    /* Date */
    start_date_year varchar(4) NOT NULL,
    start_date_quarter varchar(1) NOT NULL,
    start_date_month varchar(2) NOT NULL,
    start_date_day varchar(2) NOT NULL,
    start_date_hour varchar(2) NOT NULL,
    start_date_minute varchar(2) NOT NULL,
    start_date datetime NOT NULL,

    /* Employee */
    employee_id varchar(255) NOT NULL,
    employee_full_name varchar(255) NOT NULL,
    employee_extention varchar(255),
    employee_sales_YTD INT,
    employee_sales_last_year INT,
    employee_department_head varchar(255),
    employee_department varchar(255),
    employee_start_date datetime,
    employee_birth_date datetime,
    employee_salary DECIMAL(19,4),
    employee_country varchar(255),
    employee_region varchar(255),
    employee_city varchar(255),
    employee_zip_code varchar(255),
    employee_street_name varchar(255),
    employee_house_number varchar(10),
    employee_manager varchar(255),
    employee_health_insurance bit,
    employee_life_insurance bit,
    employee_day_care bit,
    employee_sex varchar(1),
    employee_termination_date datetime,
    employee_title varchar(255),
    employee_title_of_courtesy varchar(255),
    employee_group varchar(255),
    employee_territory varchar(255),
    employee_country_region_code varchar(255),
    employee_vactions_hours INT,
    employee_sick_leave_hours INT,
    employee_martial_status varchar(255),
    employee_orginanizion_level INT,
    employee_sales_quota INT,
    employee_bonus DECIMAL(19,4),
    employee_commission_pct DECIMAL(19,4),

    /*sales_territory*/
    sales_territory_territory_id INT NOT NULL,
    sales_territory_country_region_code varchar(3) NOT NULL,
    sales_territory_group varchar(50) NOT NULL,
    sales_territory_name varchar(50) NOT NULL,
    sales_territory_sales_ytd DECIMAL(19,4) NOT NULL,
    sales_territory_sales_last_year DECIMAL(19,4) NOT NULL,
    sales_territory_cost_ytd DECIMAL(19,4) NOT NULL,
    sales_territory_cost_last_year DECIMAL(19,4) NOT NULL,

    /*country_region_currency*/
    country_region_currency_currency_code varchar(3) NOT NULL,
    country_region_currency_country_region_code varchar(3) NOT NULL,

    /*currency*/
    currency_code varchar(3) NOT NULL,
    currency_name varchar(255) NOT NULL,
 
    change_date TIMESTAMP,
);


CREATE TABLE sales_person_quota_history(
    S_KEY INT IDENTITY(1,1) PRIMARY KEY,
    sales_person_quota_history_business_entity_id varchar(255) NOT NULL,
    sales_quota DECIMAL(19,4) NOT NULL,
    
    /* Date */
    year varchar(4) NOT NULL,
    quarter varchar(1) NOT NULL,
    month varchar(2) NOT NULL,
    day varchar(2) NOT NULL,
    hour varchar(2) NOT NULL,
    minute varchar(2) NOT NULL,
    quota_date datetime NOT NULL,

    /* Employee */
    employee_id varchar(255) NOT NULL,
    employee_full_name varchar(255) NOT NULL,
    employee_extention varchar(255),
    employee_sales_YTD INT,
    employee_sales_last_year INT,
    employee_department_head varchar(255),
    employee_department varchar(255),
    employee_start_date datetime,
    employee_birth_date datetime,
    employee_salary DECIMAL(19,4),
    employee_country varchar(255),
    employee_region varchar(255),
    employee_city varchar(255),
    employee_zip_code varchar(255),
    employee_street_name varchar(255),
    employee_house_number varchar(10),
    employee_manager varchar(255),
    employee_health_insurance bit,
    employee_life_insurance bit,
    employee_day_care bit,
    employee_sex varchar(1),
    employee_termination_date datetime,
    employee_title varchar(255),
    employee_title_of_courtesy varchar(255),
    employee_group varchar(255),
    employee_territory varchar(255),
    employee_country_region_code varchar(255),
    employee_vactions_hours INT,
    employee_sick_leave_hours INT,
    employee_martial_status varchar(255),
    employee_orginanizion_level INT,
    employee_sales_quota INT,
    employee_bonus DECIMAL(19,4),
    employee_commission_pct DECIMAL(19,4),

    /*sales_territory*/
    sales_territory_territory_id INT NOT NULL,
    sales_territory_country_region_code varchar(3) NOT NULL,
    sales_territory_group varchar(50) NOT NULL,
    sales_territory_name varchar(50) NOT NULL,
    sales_territory_sales_ytd DECIMAL(19,4) NOT NULL,
    sales_territory_sales_last_year DECIMAL(19,4) NOT NULL,
    sales_territory_cost_ytd DECIMAL(19,4) NOT NULL,
    sales_territory_cost_last_year DECIMAL(19,4) NOT NULL,

    /*country_region_currency*/
    country_region_currency_currency_code varchar(3) NOT NULL,
    country_region_currency_country_region_code varchar(3) NOT NULL,

    /*currency*/
    currency_code varchar(3) NOT NULL,
    currency_name varchar(255) NOT NULL,
 
    change_date TIMESTAMP,
);

CREATE TABLE work_order_routing(
    S_KEY INT IDENTITY(1,1) PRIMARY KEY,

    work_order_id INT NOT NULL,

     /* Date */
    scheduled_start_date_year varchar(4) NOT NULL,
    scheduled_start_date_quarter varchar(1) NOT NULL,
    scheduled_start_date_month varchar(2) NOT NULL,
    scheduled_start_date_day varchar(2) NOT NULL,
    scheduled_start_date_hour varchar(2) NOT NULL,
    scheduled_start_date_minute varchar(2) NOT NULL,
    scheduled_start_date datetime NOT NULL,

    /* Date */
    scheduled_end_date_year varchar(4) NOT NULL,
    scheduled_end_date_quarter varchar(1) NOT NULL,
    scheduled_end_date_month varchar(2) NOT NULL,
    scheduled_end_date_day varchar(2) NOT NULL,
    scheduled_end_date_hour varchar(2) NOT NULL,
    scheduled_end_date_minute varchar(2) NOT NULL,
    scheduled_end_date datetime NOT NULL,

    /* Date */
    actual_start_date_year varchar(4) NOT NULL,
    actual_start_date_quarter varchar(1) NOT NULL,
    actual_start_date_month varchar(2) NOT NULL,
    actual_start_date_day varchar(2) NOT NULL,
    actual_start_date_hour varchar(2) NOT NULL,
    actual_start_date_minute varchar(2) NOT NULL,
    actual_start_date datetime,

    /* Date */
    actual_end_date_year varchar(4) NOT NULL,
    actual_end_date_quarter varchar(1) NOT NULL,
    actual_end_date_month varchar(2) NOT NULL,
    actual_end_date_day varchar(2) NOT NULL,
    actual_end_date_hour varchar(2) NOT NULL,
    actual_end_date_minute varchar(2) NOT NULL,
    actual_end_date datetime,

    /* Date */
    start_date_year varchar(4) NOT NULL,
    start_date_quarter varchar(1) NOT NULL,
    start_date_month varchar(2) NOT NULL,
    start_date_day varchar(2) NOT NULL,
    start_date_hour varchar(2) NOT NULL,
    start_date_minute varchar(2) NOT NULL,
    start_date datetime NOT NULL,

    /* Date */
    end_date_year varchar(4) NOT NULL,
    end_date_quarter varchar(1) NOT NULL,
    end_date_month varchar(2) NOT NULL,
    end_date_day varchar(2) NOT NULL,
    end_date_hour varchar(2) NOT NULL,
    end_date_minute varchar(2) NOT NULL,
    end_date datetime,

    /* Date */
    due_date_year varchar(4) NOT NULL,
    due_date_quarter varchar(1) NOT NULL,
    due_date_month varchar(2) NOT NULL,
    due_date_day varchar(2) NOT NULL,
    due_date_hour varchar(2) NOT NULL,
    due_date_minute varchar(2) NOT NULL,
    due_date datetime NOT NULL,

    operations_sequence INT NOT NULL,
    actual_resource_hours DECIMAL(9,4),
    planned_cost DECIMAL NOT NULL,
    actual_cost DECIMAL,
    order_qty INT NOT NULL,
    stocked_qty INT NOT NULL,
    scrapped_qty INT NOT NULL,

    /* Product */
    product_id VARCHAR(255) NOT NULL,
    product_name varchar(max) NOT NULL,
    product_number varchar(255),
    product_make_flag INT,
    product_finished_goods_flag INT,
    product_safety_stock_level INT,
    product_reorder_point INT,
    product_standard_cost DECIMAL(19,4),
    product_list_price DECIMAL(19,4),
    product_size varchar(255),
    product_weight DECIMAL(19,4),
    product_days_to_manufacture INT,
    product_line varchar(255),
    product_class varchar(255),
    product_style varchar(255),
    product_category varchar(255),
    product_subcategory varchar(255),
    product_model varchar(255),
    product_sell_start_date datetime,
    product_sell_end_date datetime,
    product_discontinued_date datetime,
    product_discontinued bit,
    product_size_unit_measure_code varchar(255),
    product_weight_unit_measure_code varchar(255),
    product_vendor_country varchar(255),
    product_vendor_city varchar(255),
    product_vendor_postal_code varchar(255),
    product_vendor_address varchar(255),
    product_vendor_name varchar(255),
    product_color varchar(255),
    product_quantity INT,

    /*scrap_reason*/
    scrap_reason_id INT,
    scrap_reason_name varchar(50),

    /*location*/
    location_id INT NOT NULL,
    availability DECIMAL(8,2) NOT NULL,
    cost_rate DECIMAL(8,2) NOT NULL,
    location_name varchar(50) NOT NULL,

    change_date TIMESTAMP,
)

CREATE TABLE purchase_order(
    S_KEY INT IDENTITY(1,1) PRIMARY KEY,

    purchase_order_id INT NOT NULL,
    purchase_order_detail_id INT NOT NULL,
    purchase_order_transaction_id INT NOT NULL,

    revision_number INT NOT NULL,
    status INT NOT NULL,
    order_qty INT NOT NULL,
    unit_price DECIMAL(18,4) NOT NULL,
    line_total DECIMAL(18,4) NOT NULL,
    received_qty DECIMAL(8,2) NOT NULL, 
    rejected_qty DECIMAL(8,2) NOT NULL,
    stocket_qty DECIMAL(8,2) NOT NULL,
    sub_total DECIMAL(18,4) NOT NULL,
    tax_amt DECIMAL(18,4) NOT NULL,
    freight DECIMAL(18,4) NOT NULL,
    total_due DECIMAL(18,4) NOT NULL,

     /* Date */
    order_date_year varchar(4) NOT NULL,
    order_date_quarter varchar(1) NOT NULL,
    order_date_month varchar(2) NOT NULL,
    order_date_day varchar(2) NOT NULL,
    order_date_hour varchar(2) NOT NULL,
    order_date_minute varchar(2) NOT NULL,
    order_date DATETIME NOT NULL,

     /* Date */
    ship_date_year varchar(4) NOT NULL,
    ship_date_quarter varchar(1) NOT NULL,
    ship_date_month varchar(2) NOT NULL,
    ship_date_day varchar(2) NOT NULL,
    ship_date_hour varchar(2) NOT NULL,
    ship_date_minute varchar(2) NOT NULL,
    ship_date DATETIME NOT NULL,

    /* Product */
    product_id VARCHAR(255) NOT NULL,
    product_name varchar(max) NOT NULL,
    product_number varchar(255),
    product_make_flag INT,
    product_finished_goods_flag INT,
    product_safety_stock_level INT,
    product_reorder_point INT,
    product_standard_cost DECIMAL(19,4),
    product_list_price DECIMAL(19,4),
    product_size varchar(255),
    product_weight DECIMAL(19,4),
    product_days_to_manufacture INT,
    product_line varchar(255),
    product_class varchar(255),
    product_style varchar(255),
    product_category varchar(255),
    product_subcategory varchar(255),
    product_model varchar(255),
    product_sell_start_date datetime,
    product_sell_end_date datetime,
    product_discontinued_date datetime,
    product_discontinued bit,
    product_size_unit_measure_code varchar(255),
    product_weight_unit_measure_code varchar(255),
    product_vendor_country varchar(255),
    product_vendor_city varchar(255),
    product_vendor_postal_code varchar(255),
    product_vendor_address varchar(255),
    product_vendor_name varchar(255),
    product_color varchar(255),
    product_quantity INT,

    /* Employee */
    employee_id varchar(255) NOT NULL,
    employee_full_name varchar(255) NOT NULL,
    employee_extention varchar(255),
    employee_sales_YTD INT,
    employee_sales_last_year INT,
    employee_department_head varchar(255),
    employee_department varchar(255),
    employee_start_date datetime,
    employee_birth_date datetime,
    employee_salary DECIMAL(19,4),
    employee_country varchar(255),
    employee_region varchar(255),
    employee_city varchar(255),
    employee_zip_code varchar(255),
    employee_street_name varchar(255),
    employee_house_number varchar(10),
    employee_manager varchar(255),
    employee_health_insurance bit,
    employee_life_insurance bit,
    employee_day_care bit,
    employee_sex varchar(1),
    employee_termination_date datetime,
    employee_title varchar(255),
    employee_title_of_courtesy varchar(255),
    employee_group varchar(255),
    employee_territory varchar(255),
    employee_country_region_code varchar(255),
    employee_vactions_hours INT,
    employee_sick_leave_hours INT,
    employee_martial_status varchar(255),
    employee_orginanizion_level INT,
    employee_sales_quota INT,
    employee_bonus DECIMAL(19,4),
    employee_commission_pct DECIMAL(19,4),

    /*ship_method*/
    ship_method_name varchar(255) NOT NULL,
    ship_method_base DECIMAL(18,4) NOT NULL,
    ship_method_rate DECIMAL(18,4) NOT NULL,

    /*vendor*/
    vendor_business_entity_id varchar(255) NOT NULL,
    vendor_credit_rating INT NOT NULL,
    vendor_account_number varchar(15) NOT NULL,
    vendor_name varchar(50) NOT NULL,
    vendor_active_flag bit NOT NULL,
    vendor_purchasing_webservice_url varchar(1024),
    vendor_preferred_vendor_status bit NOT NULL,

    change_date TIMESTAMP,
)

CREATE TABLE price_history_shopping_cart(
    S_KEY INT IDENTITY(1,1) PRIMARY KEY,
    price_history_shopping_cart_item_id INT NOT NULL,

    /* Date */
    start_date_year varchar(4) NOT NULL,
    start_date_quarter varchar(1) NOT NULL,
    start_date_month varchar(2) NOT NULL,
    start_date_day varchar(2) NOT NULL,
    start_date_hour varchar(2) NOT NULL,
    start_date_minute varchar(2) NOT NULL,
    start_date datetime NOT NULL,

    /* Date */
    end_date_year varchar(4) NOT NULL,
    end_date_quarter varchar(1) NOT NULL,
    end_date_month varchar(2) NOT NULL,
    end_date_day varchar(2) NOT NULL,
    end_date_hour varchar(2) NOT NULL,
    end_date_minute varchar(2) NOT NULL,
    end_date datetime NOT NULL,

    price_history_shopping_cart_list_price DECIMAL(18,4) NOT NULL,
    price_history_shopping_cart_quantity INT NOT NULL,

    /* Product */
    product_id VARCHAR(255) NOT NULL,
    product_name varchar(max) NOT NULL,
    product_number varchar(255),
    product_make_flag INT,
    product_finished_goods_flag INT,
    product_safety_stock_level INT,
    product_reorder_point INT,
    product_standard_cost DECIMAL(19,4),
    product_list_price DECIMAL(19,4),
    product_size varchar(255),
    product_weight DECIMAL(19,4),
    product_days_to_manufacture INT,
    product_line varchar(255),
    product_class varchar(255),
    product_style varchar(255),
    product_category varchar(255),
    product_subcategory varchar(255),
    product_model varchar(255),
    product_sell_start_date datetime,
    product_sell_end_date datetime,
    product_discontinued_date datetime,
    product_discontinued bit,
    product_size_unit_measure_code varchar(255),
    product_weight_unit_measure_code varchar(255),
    product_vendor_country varchar(255),
    product_vendor_city varchar(255),
    product_vendor_postal_code varchar(255),
    product_vendor_address varchar(255),
    product_vendor_name varchar(255),
    product_color varchar(255),
    product_quantity INT,

    change_date TIMESTAMP,
)

/* For testing write to db
CREATE TABLE order_temp(
    S_KEY INT IDENTITY(1,1) PRIMARY KEY,

    /* Product */
    product_id VARCHAR(255) NOT NULL,
    product_name varchar(max) NOT NULL,
    product_number varchar(255),
    product_make_flag INT,
    product_finished_goods_flag INT,
    product_safety_stock_level INT,
    product_reorder_point INT,
    product_standard_cost DECIMAL(19,4),
    product_list_price DECIMAL(19,4),
    product_size varchar(255),
    product_weight DECIMAL(19,4),
    product_days_to_manufacture INT,
    product_line varchar(255),
    product_class varchar(255),
    product_style varchar(255),
    product_category varchar(255),
    product_subcategory varchar(255),
    product_model varchar(255),
    product_sell_start_date datetime,
    product_sell_end_date datetime,
    product_discontinued_date datetime,
    product_discontinued bit,
    product_size_unit_measure_code varchar(255),
    product_weight_unit_measure_code varchar(255),
    product_vendor_country varchar(255),
    product_vendor_city varchar(255),
    product_vendor_postal_code varchar(255),
    product_vendor_address varchar(255),
    product_vendor_name varchar(255),
    product_color varchar(255),
    product_quantity INT,

    change_date TIMESTAMP,
)

CREATE TABLE customer_temp (
    S_KEY INT IDENTITY(1,1) PRIMARY KEY,

	customer_id VARCHAR(255) NOT NULL,
    customer_full_name varchar(255),
    customer_person_type varchar(255),
    customer_name_style varchar(255),
    customer_title varchar(255),
    customer_group varchar(255),
    customer_territory_name varchar(255),
    customer_company_name varchar(255),
    customer_country varchar(255),
    customer_region varchar(255),
    customer_city varchar(255),
    customer_zip_code varchar(255),
    customer_address varchar(255),

	change_date TIMESTAMP,
);
*/