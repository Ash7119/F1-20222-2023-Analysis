select results.grid, AVG(results.points),
CASE
	WHEN grid % 2 = 0 THEN 'Right'
	ELSE 'Left'
END AS grid_column,
ROUND(grid / 2, 0) AS grid_row,
circuits.name
FROM results
JOIN races ON races.raceid = results.raceid
JOIN circuits ON circuits.circuitid = races.circuitid
WHERE year >=2022
AND grid > 0
AND grid <= 20
GROUP BY results.grid, circuits.name
ORDER BY results.grid ASC;