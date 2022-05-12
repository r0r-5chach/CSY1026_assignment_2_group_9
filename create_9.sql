CREATE TABLE players (
    player_id NUMBER(4),
    player_name VARCHAR2(15),
    contact_email VARCHAR2(25),
    contact_number CHAR(13),
)

CREATE TABLE teams (
    team_id NUMBER(4),
    team_name VARCHAR2(15),
    date_established DATE,
)

CREATE TABLE team_players (
    team_player_id NUMBER(8),
    player_id NUMBER(4),
    team_id NUMBER(4),
    date_joined DATE,
)

CREATE TABLE categories (
    genre_id NUMBER(4),
    genre_name VARCHAR2(15),
    genre_description VARCHAR2(200),
    genre_accronym CHAR(5),
)

CREATE TABLE tournaments (
    tournament_id NUMBER(4),
    tournament_name VARCHAR2(15),
    tournament_start_date DATE,
    tournament_end_date DATE,
    tournament_city VARCHAR2(15),
    tournament_country VARCHAR2(15),
    tournament_arena VARCHAR2(15),
    genre_id NUMBER(4),
)

CREATE TABLE tournament_participants (
    tournament_participant_id NUMBER(8),
    tournament_id NUMBER(8),
    player_id NUMBER(4),
    team_id NUMBER(4),
)

CREATE TABLE sponsors (
    sponsor_id NUMBER(4),
    sponsor_name VARCHAR2(15),
    sponsor_type VARCHAR2(15),
    sponsor_start_date DATE,
    sponsor_end_date DATE,
)

CREATE TABLE prizes (
    prize_id NUMBER(8),
    sponsor_id NUMBER(4),
    tournament_id NUMBER(4),
    prize_amount NUMBER(10),
    achievement_name VARCHAR2(15),
)

CREATE TABLE rounds (
    round_id NUMBER(8),
    round_name VARCHAR2(25),
    round_description VARCHAR2(200),
)

CREATE TABLE games (
    game_id NUMBER(8),
    game_name VARCHAR2(15),
    round_id NUMBER(8),
)

CREATE TABLE statistics (
    game_result_id NUMBER(8),
    game_id NUMBER(4),
    game_duration NUMBER(8),
    game_WLD CHAR(4),
    game_kills NUMBER(5),
    game_deaths NUMBER(5),
    game_assists NUMBER(5),
)

CREATE TABLE game_participants (
    game_participant_id NUMBER(16),
    game_id NUMBER(8),
    tournament_participant_id NUMBER(8)
);