--What airports are in what cities?
SELECT airports.id, airports."airport_name", cities."city_name"
FROM "williamstamp_QAP_db".airports, "williamstamp_QAP_db".cities
WHERE cities.id = airports.city_id
ORDER BY airports.id ASC;

-- List all aircraft passengers have travelled on?
SELECT passenger_list."first_name", passenger_list."last_name", aircraft."craft_type"
FROM "williamstamp_QAP_db".passenger_list, "williamstamp_QAP_db".aircraft, "williamstamp_QAP_db".passenger_aircraft
WHERE passenger_list.id = passenger_aircraft.passenger_id and aircraft.id = passenger_aircraft.aircraft_id
order by passenger_list.id;

-- Which airports can aircraft depart and arrive?
SELECT airports."airport_name", aircraft."craft_type", airports."airport_name", arrivals."arrival_airport"
FROM "williamstamp_QAP_db".airports, "williamstamp_QAP_db".aircraft, "williamstamp_QAP_db".arrive_from_to, "williamstamp_QAP_db".arrivals
WHERE airports.id = arrive_from_to.airport_name and aircraft.id = arrive_from_to.aircraft_type
and airports.id = arrive_from_to.depart_from and arrivals.id = arrive_from_to.arrive_to
ORDER BY airports.id;

-- Q4: What airports have passengers used?
SELECT passenger_list."first_name", passenger_list."last_name", airports."airport_name"
from "williamstamp_QAP_db".passenger_list, "williamstamp_QAP_db".airports, "williamstamp_QAP_db".passengers_airports
where passenger_list."id" = passengers_airports.passenger_id and airports.id = passengers_airports.airports_id
order by passenger_list."id";
