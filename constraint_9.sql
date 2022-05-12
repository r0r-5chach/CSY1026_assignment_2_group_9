-- alter primary keys

ALTER TABLE players
ADD CONSTRAINT pk_players
PRIMARY KEY player_id;

ALTER TABLE teams
ADD CONSTRAINT pk_teams
PRIMARY KEY team_id;

ALTER TABLE team_players
ADD CONSTRAINT pk_team_players
PRIMARY KEY team_player_id;

ALTER TABLE categories
ADD CONSTRAINT pk_categories
PRIMARY KEY genre_id;

ALTER TABLE tournaments
ADD CONSTRAINT pk_tournaments
PRIMARY KEY tournament_id;

ALTER TABLE tournament_participants
ADD CONSTRAINT pk_tournament_participants
PRIMARY KEY tournament_participant_id

ALTER TABLE sponsors
ADD CONSTRAINT pk_sponsors
PRIMARY KEY sponsor_id;

ALTER TABLE prizes
ADD CONSTRAINT pk_prizes
PRIMARY KEY prize_id;

ALTER TABLE rounds
ADD CONSTRAINT pk_rounds
PRIMARY KEY round_id;

ALTER TABLE games
ADD CONSTRAINT pk_games
PRIMARY KEY game_id;

ALTER TABLE statistics
ADD CONSTRAINT pk_statistics
PRIMARY KEY game_result_id;

ALTER TABLE game_participants
ADD CONSTRAINT pk_game_participants
PRIMARY KEY game_participant_id;

-- NOT NULL

-- alter foreign keys

ALTER TABLE team_players
ADD CONSTRAINT fk_team_players(player_id)
FOREIGN KEY player_id
REFERENCES players(player_id)
ADD CONSTRAINT fk_team_players(team_id)
FOREIGN KEY team_id
REFERENCES teams(team_id);

ALTER TABLE tournaments
ADD CONSTRAINT fk_tournaments(genre_id)
FOREIGN KEY genre_id
REFERENCES categories(genre_id);

ALTER TABLE tournament_participants
ADD CONSTRAINT fk_tournament_participants(tournament_id)
FOREIGN KEY tournament_id
REFERENCES tournaments(tournament_id)
ADD CONSTRAINT fk_tournament_participants(player_id)
FOREIGN KEY player_id
REFERENCES players(player_id)
ADD CONSTRAINT fk_tournament_participants(team_id)
FOREIGN KEY team_id
REFERENCES teams(team_id);

ALTER TABLE prizes
ADD CONSTRAINT fk_prizes(sponsor_id)
FOREIGN KEY sponsor_id
REFERENCES sponsors(sponsor_id)
ADD CONSTRAINT fk_prizes(tournament_id)
FOREIGN KEY tournament_id
REFERENCES tournaments(tournament_id);

ALTER TABLE games
ADD CONSTRAINT fk_games(round_id)
FOREIGN KEY round_id
REFERENCES rounds(round_id);

ALTER TABLE statistics
ADD CONSTRAINT fk_statistics(game_id)
FOREIGN KEY game_id
REFERENCES games(game_id);

ALTER TABLE game_participants
ADD CONSTRAINT fk_game_participants(game_id)
FOREIGN KEY game_id
REFERENCES games(game_id)
ADD CONSTRAINT fk_game_participants(tournament_participant_id)
FOREIGN KEY tournament_participant_id
REFERENCES tournament_participants(tournament_participant_id);

-- alter unique

-- CHECK