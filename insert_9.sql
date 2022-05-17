INSERT INTO players (player_id, player_name, contact_email, contact_number)
VALUES (1234, 'SERHAAN', 'S.SERHAAN@GMAIL.COM', 12345678999);  

INSERT INTO teams (team_id, team_name, date_established)
VALUES (4321, 'A TEAM', '17-MAY-2022');

INSERT INTO team_players (team_player_id, player_id, team_id, date_joined)
VALUES (51354356, 1234, 4321, '10-JAN-2022'); 

INSERT INTO categories (genre_id, genre_name, genre_description, genre_accronym) 
VALUES (5454, 'SHOOTER', 'ROUND BASED OBJECTIVE GAME CALLED SEARCH AND DESTROY', 'FPS');

INSERT INTO tournaments (tournament_id, tournament_name, tournament_start_date, tournament_end_date, tournament_city, tournament_country, tournament_arena, genre_id)
VALUES (2102, 'ANNUAL CUP', '01-JAN-2023', '01-FEB-2023', 'LONDON', 'ENGLAND', 'O2 ARENA', 5454);

INSERT INTO tournament_participants (tournament_participant_id, tournament_id, player_id, team_id) 
VALUES (56319764, 21022102, 1234, 4321);

INSERT INTO sponsors (sponsor_id, sponsor_name, sponsor_type, sponsor_start_date, sponsor_end_date)
VALUES (9539, 'GFUEL', 'FINANCIAL', '02-JAN-2023', '15-JAN-2023');

INSERT INTO prizes (prize_id, sponsor_id, tournament_id, prize_amount, achievement_name) 
VALUES (64654864, 9539, 2102, 10000, 'CHAMPIONS');

INSERT INTO rounds (round_id, round_name, round_description)
VALUES (57429755, 'RANDOM', 'OUTCOME OF THE ROUND');

INSERT INTO games (game_id, game_name, round_id)
VALUES (49841544, 'WARZONE', 57429755);

INSERT INTO stats (game_result_id, game_id, game_duration, game_wld, game_kills, game_deaths, game_assists)
VALUES (44484844, 4984, '1:30:00', 'LOSS', 33, 0, 4);

INSERT INTO game_participants (game_participants_id, game_id, tournament_participant_id) 
VALUES (4456496849846541, 4984, 56319764); 
