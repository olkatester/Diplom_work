SELECT c.login,
		 COUNT(*) AS ORDERS
FROM "Couriers" AS c
JOIN "Orders" AS o ON c.id="courierId"
WHERE "inDelivery"='t'
GROUP BY  c.login;
