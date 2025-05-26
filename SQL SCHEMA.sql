CREATE DATABASE IF NOT EXISTS
projectDeliveroo;
USE projectDeliveroo;

-- Creating the Customers table
CREATE TABLE Customers (
    akeed_customer_id VARCHAR (255) PRIMARY KEY, -- Automatically generates unique IDs
    gender VARCHAR(255),
        dob INTEGER,
        status INTEGER,
        verified INTEGER,
        language VARCHAR(255),
        created_at DATETIME,
        updated_at DATETIME
);

-- Creating the Vendors table
CREATE TABLE Vendors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    authentication_id INTEGER,
        latitude NUMERIC,
        longitude NUMERIC,
        vendor_category_en VARCHAR(255),
        vendor_category_id INTEGER,
        delivery_charge NUMERIC,
        serving_distance INTEGER,
        is_open INTEGER,
        opening_time DATETIME,
        opening_time2 DATETIME,
        preparation_time INTEGER,
        commission NUMERIC,
        is_akeed_delivering VARCHAR(255),
        discount_percentage INTEGER,
        status INTEGER,
        verified INTEGER,
        language VARCHAR(20),
        vendor_rating NUMERIC,
        primary_tags VARCHAR(255),
        open_close_flags INTEGER,
        vendor_tag VARCHAR(255),
        vendor_tag_name VARCHAR(255),
        one_click_vendor VARCHAR(255),
        country_id INTEGER,
        city_id INTEGER,
        created_at DATETIME,
        updated_at DATETIME,
        device_type INTEGER,
        display_orders INTEGER
);

-- Creating the Locations table
CREATE TABLE Locations (
    customer_id VARCHAR (255),
        location_number INTEGER NOT NULL,
        location_type VARCHAR(45) NOT NULL,
        latitude NUMERIC,
        longitude NUMERIC,
        PRIMARY KEY (location_number, location_type), -- Composite Key
		FOREIGN KEY (customer_id) REFERENCES Customers(akeed_customer_id)
);


-- Creating the Orders table
CREATE TABLE Orders (
    akeed_order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR (255),
        item_count NUMERIC,
        grand_total NUMERIC,
        payment_mode INTEGER,
        promo_code VARCHAR(255),
        vendor_discount_amount NUMERIC,
        promo_code_discount_percentage NUMERIC,
        is_favorite VARCHAR(255),
        is_rated VARCHAR(255),
        vendor_rating NUMERIC,
        driver_rating NUMERIC,
        delivery_distance NUMERIC,
        preparation_time NUMERIC,
        delivery_time DATETIME,
        order_accepted_time DATETIME,
        driver_accepted_time DATETIME,
        ready_for_pickup_time DATETIME,
        picked_up_time DATETIME,
        delivered_time DATETIME,
        delivery_date DATETIME,
        vendor_id INTEGER,
        created_at DATETIME,
        location_number INTEGER,
        location_type VARCHAR(255),
        FOREIGN KEY (customer_id) REFERENCES Customers(akeed_customer_id),
        FOREIGN KEY (location_number, location_type) REFERENCES Locations(location_number, location_type),
        FOREIGN KEY (vendor_id) REFERENCES Vendors(id)
);

-- Creating the Train_Full table
CREATE TABLE Train_Full (
    customer_id VARCHAR (255),
        gender VARCHAR(35),
        status_x INTEGER,
        verified_x INTEGER,
        created_at_x DATETIME,
        updated_at_x DATETIME,
        location_number INTEGER,
        location_type VARCHAR(45),
        latitude_x NUMERIC,
        longitude_x NUMERIC,
        id INTEGER,
        authentication_id NUMERIC,
        latitude_y NUMERIC,
        longitude_y NUMERIC,
        vendor_category_en VARCHAR(35),
        vendor_category_id NUMERIC,
        delivery_charge NUMERIC,
        serving_distance NUMERIC,
        is_open NUMERIC,
        opening_time DATETIME,
        opening_time2 DATETIME,
        preparation_time INTEGER,
        commission NUMERIC,
        is_akeed_delivering VARCHAR(10),
        discount_percentage NUMERIC,
        status_y NUMERIC,
        verified_y INTEGER,
        language VARCHAR(25),
        vendor_rating NUMERIC,
        primary_tags VARCHAR(255), 
        open_close_flags NUMERIC,
        vendor_tag VARCHAR(255),
        vendor_tag_name VARCHAR(255),
        one_click_vendor VARCHAR(255),
        country_id NUMERIC,
        city_id NUMERIC,
        created_at_y DATETIME,
        updated_at_y DATETIME,
        device_type INTEGER,
        display_orders INTEGER,
        location_number_obj INTEGER,
        id_obj INTEGER,
        target INTEGER,
    FOREIGN KEY (customer_id) REFERENCES Customers(akeed_customer_id),
    FOREIGN KEY (location_number, location_type) REFERENCES Locations(location_number, location_type),
    FOREIGN KEY (id) REFERENCES Vendors(id)
);

