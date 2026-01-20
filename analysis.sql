SELECT r.name, SUM(t.fare) AS total_revenue
FROM riders r
INNER JOIN trips t ON r.rider_id = t.rider_id
WHERE DATE(t.trip_date) = CURDATE()
GROUP BY r.fullname
ORDER BY total_revenue DESC
LIMIT 1;
