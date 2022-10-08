insert into "williamstamp_QAP_db".passanger_list values(1, 'william', 'stamp', '7097303157');
insert into "williamstamp_QAP_db".passanger_list values(2, 'adam', 'taylor', '7097802222');
insert into "williamstamp_QAP_db".passanger_list values(3, 'odin', 'stamp', '7097303333');
insert into "williamstamp_QAP_db".passanger_list values(4, 'madison', 'mugford', '2502225555');
insert into "williamstamp_QAP_db".passanger_list values(5, 'atticus', 'king', '7097306666');
insert into "williamstamp_QAP_db".passanger_list values(6, 'colin', 'whalen', '7207307777');
insert into "williamstamp_QAP_db".passanger_list values(7, 'bruce', 'banner', '7097308888');


select * from "williamstamp_QAP_db".passanger_list;


SELECT * FROM "williamstamp_QAP_db".passanger_list order by first_name asc;


update "williamstamp_QAP_db".passanger_list set "first_name" = 'adam',phone_number= 7092222222 where phone_number = 7097802222;


insert into "williamstamp_QAP_db".cities values(1, 'halifax', 'NS', '971395');
insert into "williamstamp_QAP_db".cities values(2, 'gander', 'NL', '113948');
insert into "williamstamp_QAP_db".cities values(3, 'mississauga', 'ON', '828854');
insert into "williamstamp_QAP_db".cities values(4, 'charlottetown', 'PEI', '156947');
insert into "williamstamp_QAP_db".cities values(5, 'st.johns', 'NL', '113948');
insert into "williamstamp_QAP_db".cities values(6, 'edmonton', 'AB', '981280');

update "williamstamp_QAP_db".passanger_list set id = 1, 'st.johns','NL','113948';

select * from "williamstamp_QAP_db".cities order by id ASC;

SELECT airports.id, airports."airport_name", cities."city_name"
FROM "williamstamp_QAP_db".airports, "williamstamp_QAP_db".cities
WHERE cities.id = airports.city_id
ORDER BY cities."city_name" ASC;

insert into "williamstamp_QAP_db"."passenger_aircraft" values (1,2);
insert into "williamstamp_QAP_db"."passenger_aircraft" values (2,3);
insert into "williamstamp_QAP_db"."passenger_aircraft" values (3,2); 
insert into "williamstamp_QAP_db"."passenger_aircraft" values (4,1);
insert into "williamstamp_QAP_db"."passenger_aircraft" values (5,1); 
insert into "williamstamp_QAP_db"."passenger_aircraft" values (6,3); 
insert into "williamstamp_QAP_db"."passenger_aircraft" values (7,2); 
insert into "williamstamp_QAP_db"."passenger_aircraft" values (2,1);
insert into "williamstamp_QAP_db"."passenger_aircraft" values (1,3);

select * from "williamstamp_QAP_db".passenger_aircraft order by "passenger_id" asc ;

SELECT DISTINCT airports."airport_name", cities."city_name", passenger_list.first_name, passenger_list.last_name
FROM "williamstamp_QAP_db".airports, "williamstamp_QAP_db".cities, "williamstamp_QAP_db".passenger_aircraft, "williamstamp_QAP_db".passenger_list, "williamstamp_QAP_db".aircraft
WHERE cities.id = airports.city_id
ORDER BY passenger_list.first_name, passenger_list.last_name ASC;


insert into "williamstamp_QAP_db".aircraft 


SELECT arrive_from_to.airport_name, arrive_from_to.aircraft_type, arrive_from_to.depart_from, arrive_from_to.arrive_to
FROM "williamstamp_QAP_db".arrive_from_to
WHERE arrive_from_to.aircraft_type = arrive_from_to.airport_name
ORDER BY arrive_from_to.airport_name ASC;

select * FROM "williamstamp_QAP_db".arrive_from_to order by aircraft_type asc;


--From edmonton Int. Airport to calgary, fort mac, peace river
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (1, 2, 1, 8);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (1, 3, 1, 8);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (1, 2, 1, 9);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (1, 3, 1, 9);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (1, 2, 1, 10);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (1, 3, 1, 10);
--From edmonton Int. Airport to vancouver
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (1, 1, 1, 12);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (1, 2, 1, 12);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (1, 3, 1, 12);
--From edmonton Int. Airport to pearson int. airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (1, 1, 1, 4);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (1, 2, 1, 4);


--From halifax standield int. airport to st. johns
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 1, 2, 3);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 2, 2, 3);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 3, 2, 3);
--From halifax standield int. airport to pearson int. airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 1, 2, 4);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 2, 2, 4);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 3, 2, 4);
--From halifax standield int. airport to billy bishop airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 2, 2, 5);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 3, 2, 5);
--From halifax standield int. airport to John C. hamilton int. airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 1, 2, 6);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 2, 2, 6);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 3, 2, 6);
--From halifax standield int. airport to charlettetown airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 2, 2, 11);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 3, 2, 11);


--From halifax standield int. airport to Ottawa MacDonald.. int. airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 2, 2, 14);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (2, 3, 2, 14);
--From st. Johns int. airport to Halifax Stanfield int. airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 1, 3, 2);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 2, 3, 2);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 3, 3, 2);
--From st. Johns int. airport to Pearson int. airport 														 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 1, 3, 4);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 2, 3, 4);
--From st. Johns int. airport to Billy Bishop TO City airport														 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 1, 3, 5);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 2, 3, 5);
--From st. Johns int. airport to John C. Hamilton int. airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 1, 3, 6);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 2, 3, 6);
--From st. Johns int. airport to Niagra Falls int. airport														 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 1, 3, 7);														 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 2, 3, 7);
--From st. Johns int. airport to Charlettetown airport														 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 1, 3, 11);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 2, 3, 11);
--From st. Johns int. airport to Gander int. airport										 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 2, 3, 13);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 3, 3, 13);
--From st. Johns int. airport to Ottawa MacDonald-cartier int. airport														 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 2, 3, 14);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (3, 3, 3, 14);
														 
														 
--From Pearsons int. airport to Edmonton airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 1, 4, 1);
--From Pearsons int. airport to Halifax Stanfield int. airport													 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 1, 4, 2);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 2, 4, 2);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 3, 4, 2);
--From Pearsons int. airport to st. Johns int. airport 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 1, 4, 3);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 2, 4, 3);
--From Pearsons int. airport to Billy Bishop Toronto City airport														 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 2, 4, 5);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 3, 4, 5);
--From Pearsons int. airport to John C. Hamilton int. airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 1, 4, 6);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 2, 4, 6);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 3, 4, 6);												
--From Pearsons int. airport to Niagra Falls int. airport													 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 2, 4, 7);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 3, 4, 7);
--From Pearsons int. airport to Charlettetown airport 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 1, 4, 11);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 2, 4, 11);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 3, 4, 11);
--From Pearsons int. airport to Gander									 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 1, 1, 13);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 2, 2, 13);
--From Pearsons int. airport to Ottawa MacDonald-Cartier int. airport													 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 2, 2, 14);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (4, 2, 3, 14);
			
														 
--From Billy Bishop to Halifax stanfield
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 2, 5, 2);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 3, 5, 2);
														 
--From Billy Bishop to st. johns													 													 
insert INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 1, 5, 3);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 2, 5, 3);
														 
														 
--From Billy Bishop to Pearsons
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 2, 5, 4);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 3, 5, 4);
														 
														 
--From Billy Bishop to John C. 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 1, 5, 6);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 2, 5, 6);
														 
														 
--From Billy Bishop to Niagra Falls
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 2, 5, 7);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 3, 5, 7);													 
														 
--From Billy Bishop to Charlettetown 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 1, 5, 11);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 2, 5, 11);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 3, 5, 11);
														 
--From Billy Bishop to Ottawa
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 2, 5, 14);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (5, 3, 5, 14);
														 
														 
--John C.  airport to st. johns
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 1, 6, 3);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 2, 6, 3);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 3, 6, 3);
														 
--John C. to pearson int. airport 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 1, 6, 4);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 2, 6, 4);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 3, 6, 4);

														 
--john C. to billy bishop airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 2, 6, 5);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 3, 6, 5);
														 
														 
--John C. to Niagra Falls airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 1, 6, 7);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 2, 6, 7);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 3, 6, 7);
														 
														 
--John C. to charlettetown airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 2, 6, 11);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 3, 6, 11);


--John C. to Ottawa MacDonald.. int. airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 2, 6, 14);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (6, 3, 6, 14);
														 
														 
--Niagara Falls int. to Halifax Stanfield	
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 1, 7, 2);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 2, 7, 2);
														 
														
--Niagara Falls int. to to Pearson int. airport 														 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 1, 7, 4);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 2, 7, 4);
														 
--Niagara Falls int. to Billy Bishop TO City airport														 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 1, 7, 5);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 2, 7, 5);
														 
--Niagara Falls int. to John C. Hamilton int. airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 1, 7, 6);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 2, 7, 6);
														 
--Niagara Falls int. to Niagra Falls int. airport														 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 1, 7, 11);														 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 2, 7, 11);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 3, 7, 11);
														 

--From Niagra Falls airport to Gander int. airport										 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 2, 7, 13);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 3, 7, 13);
														 
														 
--From Niagra Falls airport to Ottawa MacDonald-cartier int. airport														 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 2, 7, 14);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (7, 3, 7, 14);
														 
								
														 
-- mid --														 
														 
	
														 
--From Calgary int airport to Edmonton airport
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 2, 8, 1);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 3, 8, 1);

--From Calgary int airport to Halifax Stanfield IA
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 1, 8, 1);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 2, 8, 1);

--From Calgary int airport to St. johns IA
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 1, 8, 3);

--From Calgary int airport to Pearsons IA
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 1, 8, 4);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 2, 8, 4);

--From Calgary int airport to Billy Bishops
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 2, 8, 5);

--From Calgary int airport to John C. IA
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 1, 8, 6);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 2, 8, 6);

--From Calgary int airport to Niagra Falls
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 2, 8, 7);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 3, 8, 7);

--From Calgary int airport to fort mac
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 2, 8, 9);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 3, 8, 9);

--From Calgary int airport to Peacr river
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 1, 8, 10);

--From Calgary int airport to vancouver IA
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 1, 8, 12);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 2, 8, 12);

--From Calgary int airport to vancouver IA
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (8, 1, 8, 14);


--From Fort Mac to Edmonton
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (9, 2, 9, 1);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (9, 3, 9, 1);

--From Fort Mac to Halifax Stanfield
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (9, 1, 9, 2);

--From Fort Mac to Perasons 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (9, 1, 9, 4);

--From Fort Mac to calgary
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (9, 2, 9, 8);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (9, 3, 9, 8);

--From Fort Mac to Peace River
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (9, 3, 9, 10);

--From Fort Mac to Vancouver
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (9, 1, 9, 12);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (9, 2, 9, 12);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (9, 3, 9, 12);

--From Fort Mac to Ottawa
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (9, 1, 9, 14);

--Peace River to Edmonton
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (10, 3, 10, 1);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (10, 2, 10, 1);

--Peace River to Calgary
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (10, 3, 10, 8);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (10, 2, 10, 8);

--Peace River to Fort Mac
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (10, 3, 10, 9);

--Peace River to Vancouver
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (10, 3, 10, 12);

--Peace River to Calgary
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (10, 3, 10, 8);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (10, 2, 10, 8);


-- CharlettTown airport to Halifax Stanfield
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 3, 11, 2);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 2, 11, 2);


-- CharlettTown airport to st. johns
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 1, 11, 3);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 2, 11, 3);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 3, 11, 3);

-- CharlettTown airport to Pearsons
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 1, 11, 4);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 2, 11, 4);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 3, 11, 4);

-- CharlettTown airport to Billy Bishop
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 2, 11, 5);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 3, 11, 5);

-- CharlettTown airport to John C. Hamilton AI
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 2, 11, 6);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 3, 11, 6);

-- CharlettTown airport to Niagra Falls
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 2, 11, 7);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 3, 11, 7);

-- CharlettTown airport to Gander
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 2, 11, 13);


-- CharlettTown airport to Niagra Falls
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 2, 11, 14);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (11, 3, 11, 14);
														 
-- Gander int. to Halifax Stanfield	
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (13, 2, 13, 2);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (13, 3, 13, 2);
														 
-- Gander int. to st.johns
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (13, 2, 13, 3);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (13, 3, 13, 3);


-- Gander int. to Pearson
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (13, 1, 13, 4);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (13, 2, 13, 4);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (13, 3, 13, 4);

-- Gander int. to Billy Bishop
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (13, 2, 13, 5);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (13, 3, 13, 5);

-- Gander int. to John C. Hamilton 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (13, 2, 13, 6);

-- Gander int. to Niagra Falls
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (13, 2, 13, 7);

-- Gander int. to Charlettetown
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (13, 2, 13, 11);




-- Gander int. to Ottawa
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (13, 2, 13, 14);


-- Ottawa to Edmonton
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 1, 14, 1);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 2, 14, 1);


-- Ottawa to Halifax Stanfield
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 2, 14, 2);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 3, 14, 2);


-- Ottawa to St. johns 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 1, 14, 3);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 2, 14, 3);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 3, 14, 3);
														 
-- Ottawa to Pearsons 
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 2, 14, 4);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 3, 14, 4);

-- Ottawa to Billy Bishop
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 2, 14, 5);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 3, 14, 5);


-- Ottawa to John C.
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 2, 14, 6);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 3, 14, 6);


-- Ottawa to Niagra Falls
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 2, 14, 7);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 3, 14, 7);

-- Ottawa to Charlettetown
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 2, 14, 11);
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 3, 14, 11);


-- Ottawa to Gander
INSERT INTO "williamstamp_QAP_db".arrive_from_to VALUES (14, 2, 14, 13);




select * FROM "williamstamp_QAP_db".arrive_from_to order by aircraft_type asc;

SELECT airports.airport_name, aircraft.craft_type
FROM "williamstamp_QAP_db".airports, "williamstamp_QAP_db".aircraft, "williamstamp_QAP_db".aircraft_from_to
WHERE airports.id = "aircraft_from_to".airport_name and aircraft.id = aircraft_from_to.aircraft_type
order by airports.airport_id



select * from "williamstamp_QAP_db".aircraft order by id asc;


INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (1,1);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (1,2);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (1,3);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (1,4);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (2,1);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (2,2);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (2,3);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (2,4);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (2,9);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (3,1);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (3,2);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (3,3);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (3,4);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (3,5);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (3,6);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (3,7);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (3,12);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (4,4);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (4,5);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (4,6);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (4,11);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (4,8);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (5,1);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (5,3);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (5,13);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (5,7);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (5,10);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (6,1);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (6,2);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (6,3);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (6,4);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (6,5);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (6,6);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (6,7);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (6,12);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (7,1);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (7,2);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (7,3);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (7,4);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (7,10);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (7,11);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (7,13);
INSERT INTO "williamstamp_QAP_db".passengers_airports VALUES (7,14);



select * from "williamstamp_QAP_db".passengers_airports;