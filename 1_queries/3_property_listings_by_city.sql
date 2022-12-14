-- View the properties and filter them by location

SELECT properties.id, title, cost_per_night, avg(property_reviews.rating) as average_rating 
FROM properties
LEFT JOIN property_reviews ON property_id = properties.id
WHERE city LIKE '%ancouver%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;