SELECT track,
		 (CASE
	WHEN finished = 't' THEN '2'
	WHEN cancelled = 't' THEN '-1'
	WHEN "inDelivery" = 't' THEN '1'
	ELSE '0' 
                          END) AS status
FROM "Orders"
GROUP BY  track, finished, cancelled, "inDelivery";
