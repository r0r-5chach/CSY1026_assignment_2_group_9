ALTER TABLE statistics 
DROP CONSTRAINT ck_game_WLD;

ALTER TABLE games
DROP CONSTRAINT ck_game_name;

ALTER TABLE rounds
DROP CONSTRAINT ck_achievement_name;

ALTER TABLE prizes
DROP CONSTRAINT ck_achievement_name;

ALTER TABLE sponsors
DROP CONSTRAINT ck_sponsor_type
DROP CONSTRAINT ck_sponsor_name;

ALTER TABLE tournaments
DROP CONSTRAINT ck_tournament_arena
DROP CONSTRAINT ck_tournament_country
DROP CONSTRAINT ck_tournament_city;

ALTER TABLE categories
DROP CONSTRAINT ck_genre_accronym
DROP CONSTRAINT ck_genre_description
DROP CONSTRAINT ck_genre_name;

ALTER TABLE teams
DROP CONSTRAINT ck_team_name;

ALTER TABLE players
DROP CONSTRAINT ck_contact_email
DROP CONSTRAINT ck_player_name;

--foreign key 

ALTER TABLE game_participants
DROP FOREIGN KEY game_id
DROP FOREIGN KEY tournament_participants;

ALTER TABLE statistics 
DROP FOREIGN KEY fk_statistics;

ALTER TABLE games
DROP FOREIGN KEY fk_games;

ALTER TABLE prizes 
DROP FOREIGN KEY tournament_id
DROP FOREIGN KEY sponsor_id;

ALTER TABLE tournament_participants
DROP FOREIGN KEY team_id
DROP FOREIGN KEY player_id
DROP FOREIGN KEY tournament_id;

ALTER TABLE tournaments
DROP FOREIGN KEY genre_id;

ALTER TABLE team_players
DROP FOREIGN KEY team_id
DROP FOREIGN KEY player_id


--unique
ALTER TABLE categories
DROP unique (genre_name);

ALTER TABLE players
DROP UNIQUE(contact_email)
DROP UNIQUE(contact_number);

--Primary key
ALTER TABLE game_participants
DROP PRIMARY KEY game_participant_id;

ALTER TABLE statistics
DROP PRIMARY KEY game_result_id;

ALTER TABLE games 
DROP TABLE game_id;

ALTER TABLE rounds 
DROP PRIMARY KEY round_id;

ALTER TABLE prizes
DROP PRIMARY KEY prize_id;

ALTER TABLE sponsors
DROP PRIMARY KEY sponsor_id;

ALTER TABLE tournament_participants
DROP PRIMARY KEY tournament_participant_id;

ALTER TABLE tournaments
DROP PRIMARY KEY tournament_id;

ALTER TABLE categories 
DROP PRIMARY KEY genre_id;

ALTER TABLE team_players
DROP PRIMARY KEY team_player_id;

ALTER TABLE teams
DROP PRIMARY KEY team_id;

ALTER TABLE players
DROP PRIMARY KEY player_id;

--Sequence 


ALTER TABLE game_participants
DROP SEQUENCE seq_game_participants;

ALTER TABLE statistics
DROP SEQUENCE seq_statistics;

ALTER TABLE games
DROP SEQUENCE seq_games;

ALTER TABLE rounds
DROP SEQUENCE seq_rounds;


ALTER TABLE prizes
DROP SEQUENCE seq_prizes;

ALTER TABLE sponsors
DROP SEQUENCE seq_sponsors;

ALTER TABLE tournament_participants
DROP SEQUENCE seq_tournament_participants;

ALTER TABLE tournaments
DROP SEQUENCE seq_tournament;

ALTER TABLE categories
DROP SEQUENCE seq_categories;

ALTER TABLE team_players
DROP SEQUENCE seq_team_players;

ALTER TABLE teams
DROP SEQUENCE seq_teams;

ALTER TABLE players
DROP SEQUENCE seq_players;

-- Tables 

ALTER TABLE game_participants
DROP TABLE game_participants;

ALTER TABLE statistics
DROP TABLE statistics; 

ALTER TABLE games
DROP TABLE games;

ALTER TABLE rounds
DROP TABLE rounds;

ALTER TABLE prizes
DROP TABLE prizes;

ALTER TABLE sponsors
DROP TABLE sponsors;

ALTER TABLE tournament_participants
DROP TABLE tournament_participants

ALTER TABLE tournaments
DROP TABLE tournaments

ALTER TABLE categories
DROP TABLE categories;

ALTER TABLE team_players
DROP TABLE team_players;

ALTER TABLE teams
DROP TABLE teams;

ALTER TABLE players
DROP TABLE players;