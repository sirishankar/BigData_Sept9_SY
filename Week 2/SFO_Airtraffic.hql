CREATE EXTERNAL TABLE IF NOT EXISTS city 
(      
    activity_period INT,
    operating_airline STRING,
    operating_airline_iata_Code STRING,
    published_airline STRING,
    published_airline_iata_code STRING,
    geo_summary STRING,
    geo_region STRING,
    activity_type_code STRING,
    price_category_code STRING,
    terminal STRING,
    boarding_area STRING,
    passenger_count INT
) 
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n' STORED AS TEXTFILE
LOCATION '/user/ubuntu/city';
