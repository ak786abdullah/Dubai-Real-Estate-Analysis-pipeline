CREATE DATABASE dubai_housing;

USE dubai_housing;


#  Top 10 most popular areas in Dubai based on the number of sales.

SELECT
    area_name,
    count(*) as total_transaction,
    round(avg(actual_worth),0) as avg_price,
    round(avg(actual_worth / area),0) as price_per_sqft
FROM transactions
GROUP BY area_name
ORDER BY total_transaction desc
LIMIT 10;

#  which type of property is the most expensive per square metter: Villas, Units (Apartments), or Land.

 SELECT 
    property_type,
    count(*) as total_sale,
    round(avg(actual_worth),0) as avg_price,
    round(avg(actual_worth / area )) as price_per_sqft
FROM transactions
where property_type in ("Villa","Unit","Land")
GROUP BY property_type
ORDER by price_per_sqft desc;

 # which apartment size is selling the most volume: Studios, 1-Bedrooms, or 2-Bedrooms.

 SELECT 
        rooms,
        count(*) as total_sale,
        round(avg(actual_worth),0) as avg_price
    FROM transactions 
    WHERE rooms IN (0,1,2,3)
    GROUP BY rooms
    ORDER BY total_sale DESC;





