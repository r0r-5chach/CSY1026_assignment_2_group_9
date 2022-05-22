SELECT * FROM players WHERE player_id > 2;

SELECT tournament_name, tournament_country, tournament_start_date FROM tournaments
WHERE tournament_id > 2
AND tournament_country = 'france'
ORDER BY tournament_country DESC;

SELECT game_id FROM statistics
WHERE game_duration LIKE 30
AND game_kills LIKE 10
AND game_deaths LIKE 4;

SELECT player_name FROM players
WHERE player_name LIKE 'jo'
AND contact_email IS NOT NULL;

SELECT prize_amount FROM prizes
WHERE NOT achievement_name = 'winner'
AND prize_amount > 100;

SELECT tournament_name, genre_name
FROM categories, tournaments
WHERE categories.genre_id = tournaments.genre_id;

SELECT team_name, player_name, team_player_id
FROM teams, players, team_players
WHERE teams.team_id = team_players.team_id
AND players.player_id = team_players.player_id;

SELECT  tournament_name, genre_name, prize_amount, tournament_start_date
FROM categories, tournaments, prizes
WHERE categories.genre_id = tournaments.genre_id
AND tournaments.tournament_id = prizes.tournament_id
AND tournament_start_date BETWEEN '01-FEB-2022' AND '01-MAR-2022'
ORDER BY prize_amount DESC;

SELECT  tournament_name, genre_name, prize_amount, tournament_start_date
FROM categories, tournaments, prizes
WHERE categories.genre_id = tournaments.genre_id
AND tournaments.tournament_id = prizes.tournament_id
ORDER BY tournament_start_date ASC;
