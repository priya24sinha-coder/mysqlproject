--Track a Parcel by ID

SELECT parcels.parcel_id, customers.name, tracking.location, tracking.status, tracking.updated_at
FROM tracking
JOIN parcels ON tracking.parcel_id = parcels.parcel_id
JOIN customers ON parcels.customer_id = customers.customer_id
WHERE parcels.parcel_id = 1
ORDER BY tracking.updated_at;



--Average Delivery Time per City

SELECT b.city,
       AVG(DATEDIFF(p.delivery_date, p.booking_date)) AS avg_delivery_days
FROM parcels p
JOIN branches b ON p.branch_id = b.branch_id
WHERE p.delivery_date IS NOT NULL
GROUP BY b.city;

--Branch with Most Parcels

SELECT b.branch_name, COUNT(*) AS total_parcels
FROM parcels p
JOIN branches b ON p.branch_id = b.branch_id
GROUP BY b.branch_name
ORDER BY total_parcels DESC;


