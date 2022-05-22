

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
DROP CONSTRAINT fk_games;
DROP CONSTRAINT fk_tournament_participants;

ALTER TABLE statistics 
DROP CONSTRAINT fk_statistics;

ALTER TABLE games
DROP CONSTRAINT fk_games;

ALTER TABLE prizes 
DROP CONSTRAINT fk_tournaments
DROP CONSTRAINT fk_sponsors;

ALTER TABLE tournament_participants
DROP CONSTRAINT fk_teams
DROP CONSTRAINT fk_players
DROP CONSTRAINT fk_tournaments;

ALTER TABLE tournaments
DROP CONSTRAINT fk_genres;

ALTER TABLE team_players
DROP CONSTRAINT fk_teams
DROP CONSTRAINT fk_players;


--unique
ALTER TABLE categories
DROP unique (genre_name);

ALTER TABLE players
DROP UNIQUE(contact_email)
DROP UNIQUE(contact_number);

--PRIMARYKEY
ALTER TABLE game_participants
DROP CONSTRAINT pk_game_participant;

ALTER TABLE statistics
DROP CONSTRAINT pk_game_result;


ALTER TABLE rounds 
DROP CONSTRAINT pk_round;

ALTER TABLE prizes
DROP CONSTRAINT pk_prize;

ALTER TABLE sponsors
DROP CONSTRAINT pk_sponsor;

ALTER TABLE tournament_participants
DROP CONSTRAINT pk_tournament_participant;

ALTER TABLE tournaments
DROP CONSTRAINT pk_tournament;

ALTER TABLE categories 
DROP CONSTRAINT pk_genre;

ALTER TABLE team_players
DROP CONSTRAINT pk_team_player;

ALTER TABLE teams
DROP CONSTRAINT pk_team;

ALTER TABLE players
DROP CONSTRAINT pk_player;

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


DROP TABLE game_participants PURGE;


DROP TABLE statistics PURGE; 


DROP TABLE games PURGE;


DROP TABLE rounds PURGE;

DROP TABLE prizes PURGE;


DROP TABLE sponsors PURGE;


DROP TABLE tournament_participants PURGE;


DROP TABLE tournaments PURGE;

DROP TABLE categories PURGE;


DROP TABLE team_players PURGE;


DROP TABLE teams PURGE;


DROP TABLE players PURGE;
