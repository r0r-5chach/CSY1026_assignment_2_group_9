-- NOT NULL
ALTER TABLE players
MODIFY (player_name NOT NULL)
MODIFY (contact_email NOT NULL)
MODIFY (contact_number NOT NULL);

ALTER TABLE teams
MODIFY (team_name NOT NULL)
MODIFY (date_established NOT NULL);

ALTER TABLE team_players
MODIFY (date_joined NOT NULL);

ALTER TABLE categories
MODIFY (genre_name NOT NULL);

ALTER TABLE tournaments
MODIFY (tournament_name NOT NULL)
MODIFY (tournament_start_date NOT NULL)
MODIFY (tournament_end_date NOT NULL);

ALTER TABLE sponsors
MODIFY (sponsor_name NOT NULL)
MODIFY (sponsor_start_date NOT NULL);

ALTER TABLE prizes
MODIFY (prize_amount NOT NULL)
MODIFY (achievement_name NOT NULL);

ALTER TABLE rounds
MODIFY (round_name NOT NULL);

ALTER TABLE games
MODIFY (game_name NOT NULL);

ALTER TABLE statistics
MODIFY (game_duration NOT NULL)
MODIFY (game_WLD NOT NULL)
MODIFY (game_kills NOT NULL)
MODIFY (game_deaths NOT NULL)
MODIFY (game_assists NOT NULL);

-- alter primary keys

ALTER TABLE players
ADD CONSTRAINT pk_players
PRIMARY KEY (player_id);

ALTER TABLE teams
ADD CONSTRAINT pk_teams
PRIMARY KEY (team_id);

ALTER TABLE team_players
ADD CONSTRAINT pk_team_players
PRIMARY KEY (team_player_id);

ALTER TABLE categories
ADD CONSTRAINT pk_categories
PRIMARY KEY (genre_id);

ALTER TABLE tournaments
ADD CONSTRAINT pk_tournaments
PRIMARY KEY (tournament_id);

ALTER TABLE tournament_participants
ADD CONSTRAINT pk_tournament_participants
PRIMARY KEY (tournament_participant_id);

ALTER TABLE sponsors
ADD CONSTRAINT pk_sponsors
PRIMARY KEY (sponsor_id);

ALTER TABLE prizes
ADD CONSTRAINT pk_prizes
PRIMARY KEY (prize_id);

ALTER TABLE rounds
ADD CONSTRAINT pk_rounds
PRIMARY KEY (round_id);

ALTER TABLE games
ADD CONSTRAINT pk_games
PRIMARY KEY (game_id);

ALTER TABLE statistics
ADD CONSTRAINT pk_statistics
PRIMARY KEY (game_result_id);

ALTER TABLE game_participants
ADD CONSTRAINT pk_game_participants
PRIMARY KEY (game_participant_id);

-- alter unique

ALTER TABLE players
ADD CONSTRAINT uc_contact_email
UNIQUE (contact_email)
ADD CONSTRAINT uc_contact_number
UNIQUE (contact_number);

ALTER TABLE categories
ADD CONSTRAINT uc_genre_name
UNIQUE (genre_name);

-- alter foreign keys

ALTER TABLE team_players
ADD CONSTRAINT fk_team_players(player_id)
FOREIGN KEY (player_id)
REFERENCES players(player_id)
ADD CONSTRAINT fk_team_players(team_id)
FOREIGN KEY (team_id)
REFERENCES teams(team_id);

ALTER TABLE tournaments
ADD CONSTRAINT fk_tournaments(genre_id)
FOREIGN KEY (genre_id)
REFERENCES categories(genre_id);

ALTER TABLE tournament_participants
ADD CONSTRAINT fk_tournament_participants(tournament_id)
FOREIGN KEY (tournament_id)
REFERENCES tournaments(tournament_id)
ADD CONSTRAINT fk_tournament_participants(player_id)
FOREIGN KEY (player_id)
REFERENCES players(player_id)
ADD CONSTRAINT fk_tp_teams
FOREIGN KEY team_id
REFERENCES teams(team_id);

ALTER TABLE prizes
ADD CONSTRAINT fk_p_sponsors
FOREIGN KEY sponsor_id
REFERENCES sponsors(sponsor_id)
ADD CONSTRAINT fk_p_tournaments
FOREIGN KEY tournament_id
REFERENCES tournaments(tournament_id);

ALTER TABLE games
ADD CONSTRAINT fk_g_rounds
FOREIGN KEY round_id
REFERENCES rounds(round_id);

ALTER TABLE statistics
ADD CONSTRAINT fk_s_games
FOREIGN KEY game_id
REFERENCES games(game_id);

ALTER TABLE game_participants
ADD CONSTRAINT fk_gp_games
FOREIGN KEY game_id
REFERENCES games(game_id)
ADD CONSTRAINT fk_gp_tournament_participants
FOREIGN KEY tournament_participant_id
REFERENCES tournament_participants(tournament_participant_id);

-- CHECK

ALTER TABLE players
ADD CONSTRAINT ck_player_name
CHECK (player_name = UPPER(player_name))
ADD CONSTRAINT ck_contact_email
CHECK (contact_email = UPPER(contact_email));

ALTER TABLE teams
ADD CONSTRAINT ck_team_name
CHECK (team_name = UPPER(team_name));

ALTER TABLE categories
ADD CONSTRAINT ck_genre_name
CHECK (genre_name = UPPER(genre_name))
ADD CONSTRAINT ck_genre_description
CHECK (genre_description = UPPER(genre_description))
ADD CONSTRAINT ck_genre_accronym
CHECK (genre_accronym = UPPER(genre_accronym));

ALTER TABLE tournaments
ADD CONSTRAINT ck_tournament_city
CHECK (tournament_city = UPPER(tournament_city))
ADD CONSTRAINT ck_tournament_country
CHECK (tournament_country = UPPER(tournament_country_))
ADD CONSTRAINT ck_tournament_arena
CHECK (tournament_arena = UPPER(tournament_arena));

ALTER TABLE sponsors
ADD CONSTRAINT ck_sponsor_name
CHECK (sponsor_name = UPPER(sponsor_name))
ADD CONSTRAINT ck_sponsor_type
CHECK (sponsor_type = UPPER(sponsor_type));

ALTER TABLE prizes
ADD CONSTRAINT ck_achievement_name
CHECK (achievement_name = UPPER(achievement_name));

ALTER TABLE rounds
ADD CONSTRAINT ck_round_name
CHECK (round_name = UPPER(round_name));

ALTER TABLE games
ADD CONSTRAINT ck_game_name
CHECK (game_name = UPPER(game_name));

ALTER TABLE statistics
ADD CONSTRAINT ck_game_WLD
CHECK (game_WLD = UPPER(game_WLD));
