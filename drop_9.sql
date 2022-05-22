

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
DROP CONSTRAINT game_id
DROP CONSTRAINT tournament_participants;

ALTER TABLE statistics 
DROP CONSTRAINT fk_statistics;

ALTER TABLE games
DROP CONSTRAINT fk_games;

ALTER TABLE prizes 
DROP CONSTRAINT tournament_id
DROP CONSTRAINT sponsor_id;

ALTER TABLE tournament_participants
DROP CONSTRAINT team_id
DROP CONSTRAINT player_id
DROP CONSTRAINT tournament_id;

ALTER TABLE tournaments
DROP CONSTRAINT genre_id;

ALTER TABLE team_players
DROP CONSTRAINT team_id
DROP CONSTRAINT player_id


--unique
ALTER TABLE categories
DROP unique (genre_name);

ALTER TABLE players
DROP UNIQUE(contact_email)
DROP UNIQUE(contact_number);

--CONSTRAINT
ALTER TABLE game_participants
DROP CONSTRAINT game_participant_id;

ALTER TABLE statistics
DROP CONSTRAINT game_result_id;

ALTER TABLE games 
DROP TABLE game_id;

ALTER TABLE rounds 
DROP CONSTRAINT round_id;

ALTER TABLE prizes
DROP CONSTRAINT prize_id;

ALTER TABLE sponsors
DROP CONSTRAINT sponsor_id;

ALTER TABLE tournament_participants
DROP CONSTRAINT tournament_participant_id;

ALTER TABLE tournaments
DROP CONSTRAINT tournament_id;

ALTER TABLE categories 
DROP CONSTRAINT genre_id;

ALTER TABLE team_players
DROP CONSTRAINT team_player_id;

ALTER TABLE teams
DROP CONSTRAINT team_id;

ALTER TABLE players
DROP CONSTRAINT player_id;

--Sequence 



DROP SEQUENCE seq_game_participants;


DROP SEQUENCE seq_statistics;


DROP SEQUENCE seq_games;


DROP SEQUENCE seq_rounds;



DROP SEQUENCE seq_prizes;


DROP SEQUENCE seq_sponsors;


DROP SEQUENCE seq_tournament_participants;


DROP SEQUENCE seq_tournament;


DROP SEQUENCE seq_categories;


DROP SEQUENCE seq_team_players;


DROP SEQUENCE seq_teams;


DROP SEQUENCE seq_players;

-- Tables 

ALTER TABLE game_participants
DROP TABLE game_participants PURGE;

ALTER TABLE statistics
DROP TABLE statistics PURGE; 

ALTER TABLE games
DROP TABLE games PURGE;

ALTER TABLE rounds
DROP TABLE rounds PURGE;

ALTER TABLE prizes
DROP TABLE prizes PURGE;

ALTER TABLE sponsors
DROP TABLE sponsors PURGE;

ALTER TABLE tournament_participants
DROP TABLE tournament_participants PURGE;

ALTER TABLE tournaments
DROP TABLE tournaments PURGE;

ALTER TABLE categories
DROP TABLE categories PURGE;

ALTER TABLE team_players
DROP TABLE team_players PURGE;

ALTER TABLE teams
DROP TABLE teams PURGE;

ALTER TABLE players
DROP TABLE players PURGE;
