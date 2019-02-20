-- create table with basic fields
CREATE TABLE black_friday (
    user_id INTEGER UNSIGNED,
    product_id VARCHAR(20),
    gender ENUM('M','F') default NULL,
    age VARCHAR(6),
    occupation TINYINT UNSIGNED default NULL,
    city_category ENUM('A','B','C','D','E') default NULL,
    stay_in_current_city_years VARCHAR(6),
    martial_status TINYINT UNSIGNED default 0,
    product_category_1 TINYINT UNSIGNED default 0,
    product_category_2 TINYINT  UNSIGNED default 0,
    product_category_3 TINYINT UNSIGNED default 0,
    purchase_amount INTEGER UNSIGNED default 0
);

-- add new fields to hold formatted field values
ALTER TABLE black_friday ADD min_age TINYINT UNSIGNED default NULL AFTER age;
ALTER TABLE black_friday ADD max_age TINYINT UNSIGNED 120 NULL AFTER min_age;
ALTER TABLE black_friday ADD stay_in_current_city_years_formatted TINYINT UNSIGNED default 0;
ALTER TABLE black_friday ADD id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY;
