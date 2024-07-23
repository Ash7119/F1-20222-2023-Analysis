SELECT drivers.code, constructors.name, SUM(results.points), circuits.name 
FROM results
JOIN races ON races.raceid = results.raceid
JOIN drivers ON drivers.driverid = results.driverid
JOIN constructors ON constructors.constructorid = results.constructorid
JOIN circuits ON circuits.circuitid = races.circuitid
WHERE races.year >= 2022
GROUP BY drivers.code, constructors.name, circuits.name;
