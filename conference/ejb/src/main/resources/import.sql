--
-- JBoss, Home of Professional Open Source
-- Copyright 2013, Red Hat, Inc. and/or its affiliates, and individual
-- contributors by the @authors tag. See the copyright.txt in the
-- distribution for a full listing of individual contributors.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
-- http://www.apache.org/licenses/LICENSE-2.0
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

-- You can use this file to load seed data into the database using SQL statements
insert into Registrant(id, name, email, phone_number) values (0, 'John Smith', 'john.smith@mailinator.com', '2125551212') 


insert into Room(id, name, capacity) values (1, 'Raum 1', 50) 
insert into Room(id, name, capacity) values (2, 'Raum 2', 100) 
insert into Room(id, name, capacity) values (3, 'Raum 3', 75) 

insert into speaker(id, firstname, lastname) values (1, 'Max', 'Mustermann') 
insert into speaker(id, firstname, lastname) values (2, 'Susi', 'Sonnenschein') 
insert into speaker(id, firstname, lastname) values (3, 'Leo', 'Laberbacke') 

insert into Conference(id, name, start, end, archived, location) values (1, 'Konferenz 1', '2013-10-01 00:00:00', '2013-10-05 00:00:00', 0, 'Eschborn')
insert into Conference(id, name, start, end, archived, location) values (2, 'Konferenz 2', '2013-10-03 00:00:00' , '2013-10-08 00:00:00', 0, 'Wolfsburg') 
insert into Conference(id, name, start, end, archived, location) values (3, 'Konferenz 3', '2013-10-06 00:00:00', '2013-10-11 00:00:00', 0, 'München') 

insert into Talk(id, name, duration, room_id, conference_id, description, start) values (1, 'Talk 1', 60, 1, 1, 'Description 1', '2013-10-01 09:00:00') 
insert into Talk(id, name, duration, room_id, conference_id, description, start) values (2, 'Talk 2', 120, 2, 1, 'Description 2', '2013-10-01 09:00:00') 
insert into Talk(id, name, duration, room_id, conference_id, description, start) values (3, 'Talk 3', 180, 3, 1, 'Description 3', '2013-10-01 10:00:00') 
insert into Talk(id, name, duration, room_id, conference_id, description, start) values (4, 'Talk 4', 180, 3, 1, 'Description 3', '2013-10-02 09:00:00') 
insert into Talk(id, name, duration, room_id, conference_id, description, start) values (5, 'Talk 5', 180, 1, 1, 'Description 3', '2013-10-02 11:00:00')

insert into talk_speaker (speakers_id, talk_id) values (1, 1);
insert into talk_speaker (speakers_id, talk_id) values (2, 1);
insert into talk_speaker (speakers_id, talk_id) values (2, 2);
insert into talk_speaker (speakers_id, talk_id) values (3, 3);
insert into talk_speaker (speakers_id, talk_id) values (3, 4);

