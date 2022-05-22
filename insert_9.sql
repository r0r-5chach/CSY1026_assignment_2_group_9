INSERT INTO players (player_id, player_name, contact_email, contact_number)
VALUES (seq_players.NEXTVAL, 'SERHAAN', 'S.SERHAAN@GMAIL.COM', 12345678999);
VALUES (seq_players.NEXTVAL, 'JOESEPH' '', 12345679001);
VALUES (seq_players.NEXTVAL, 'JOE', 'JOE.B@GMAIL.COM', 12345679002);
VALUES (seq_players.NEXTVAL, 'DAVID', 'DAVID.G@GMAIL.COM', 12345679003);
VALUES (seq_players.NEXTVAL, 'BEN', 'BEN.BEN@GMAIL.COM', 12345679004);


INSERT INTO teams (team_id, team_name, date_established)
VALUES (seq_teams.NEXTVAL, 'A TEAM', '17-MAY-2022');
VALUES (seq_teams.NEXTVAL, 'B TEAM', '18-MAY-2022'); 
VALUES (seq_teams.NEXTVAL, 'C TEAM', '19-MAY-2022');
VALUES (seq_teams.NEXTVAL, 'D TEAM', '20-MAY-2022');
VALUES (seq_teams.NEXTVAL, 'E TEAM', '21-MAY-2022');

INSERT INTO team_players (team_player_id, player_id, team_id, date_joined)
VALUES (seq_team_players.NEXTVAL, 1234, 4321, '10-JAN-2022');
VALUES (seq_team_players.NEXTVAL, 1235, 4322, '11-JAN-2022');
VALUES (seq_team_players.NEXTVAL, 1236, 4323, '12-JAN-2022');
VALUES (seq_team_players.NEXTVAL, 1237, 4324, '13-JAN-2022');
VALUES (seq_team_players.NEXTVAL, 1238, 4325, '14-JAN-2022');


INSERT INTO categories (genre_id, genre_name, genre_description, genre_accronym) 
VALUES (seq_categories.NEXTVAL, 'SHOOTER', 'ROUND BASED OBJECTIVE GAME CALLED SEARCH AND DESTROY', 'FPS');
VALUES (seq_categories.NEXTVAL, 'FIGHTING', 'ROUND BASED FIGHTING GAME', 'FIGHT');
VALUES (seq_categories.NEXTVAL, 'RACING', 'ROUND BASED RACING GAME', '');
VALUES (seq_categories.NEXTVAL, 'SIMULATION', 'BASED ON REAL LIFE ACTIVITIES','');
VALUES (seq_categories.NEXTVAL, 'SURVIVAL', 'ROUND BASED SURVIVAL GAME', '');

INSERT INTO tournaments (tournament_id, tournament_name, tournament_start_date, tournament_end_date, tournament_city, tournament_country, tournament_arena, genre_id)
VALUES (seq_tournaments.NEXTVAL, 'ANNUAL CUP 1', '01-JAN-2023', '01-FEB-2023', 'PARIS', 'FRANCE', 'O6 ARENA', 5451),
VALUES (seq_tournaments.NEXTVAL, 'ANNUAL CUP 2', '02-JAN-2023', '02-FEB-2023', 'MANCHESTER', 'ENGLAND', 'O5 ARENA', 5452);
VALUES (seq_tournaments.NEXTVAL, 'ANNUAL CUP 3', '03-JAN-2023', '03-FEB-2023', 'LIVERPOOL', 'ENGLAND', 'O4 ARENA', 5453);
VALUES (seq_tournaments.NEXTVAL, 'ANNUAL CUP 4', '04-JAN-2023', '04-FEB-2023', 'BIRMINGHAM', 'ENGLAND', 'O3 ARENA', 5454);
VALUES (seq_tournaments.NEXTVAL, 'ANNUAL CUP 5', '05-JAN-2023', '05-FEB-2023', 'LONDON', 'ENGLAND', 'O2 ARENA', 5455);

INSERT INTO tournament_participants (tournament_participant_id, tournament_id, player_id, team_id) 
VALUES (seq_tournament_participants.NEXTVAL, 21022101, 1234, 4321);
VALUES (seq_tournament_participants.NEXTVAL, 21022102, 1235, 4322);
VALUES (seq_tournament_participants.NEXTVAL, 21022103, 1236, 4323);
VALUES (seq_tournament_participants.NEXTVAL, 21022104, 1237, 4324);
VALUES (seq_tournament_participants.NEXTVAL, 21022105, 1238, 4325);


INSERT INTO sponsors (sponsor_id, sponsor_name, sponsor_type, sponsor_start_date, sponsor_end_date)
VALUES (seq_sponsors.NEXTVAL, 'GFUEL', 'FINANCIAL', '02-JAN-2023', '16-JAN-2023');
VALUES (seq_sponsors.NEXTVAL, 'APPLE', 'MEDIA', '03-JAN-2023', '17-JAN-2023');
VALUES (seq_sponsors.NEXTVAL, 'MERCEDES', 'PROMOTIONAL', '04-JAN-2023', '18-JAN-2023');
VALUES (seq_sponsors.NEXTVAL, 'MICROSOFT', 'TITLE', '05-JAN-2023', '19-JAN-2023');
VALUES (seq_sponsors.NEXTVAL, 'TWITCH', 'LIVE', '06-JAN-2023', '20-JAN-2023');

INSERT INTO prizes (prize_id, sponsor_id, tournament_id, prize_amount, achievement_name) 
VALUES (seq_prizes.NEXTVAL, 9531, 2101, 10000, 'CHAMPIONS');
VALUES (seq_prizes.NEXTVAL, 9532, 2102, 9000, 'PLATINUM');
VALUES (seq_prizes.NEXTVAL, 9533, 2103, 8000, 'BRONZE');
VALUES (seq_prizes.NEXTVAL, 9534, 2104, 7000, 'SILVER');
VALUES (seq_prizes.NEXTVAL, 9535, 2105, 6000, 'LOWEST');

INSERT INTO rounds (round_id, round_name, round_description)
VALUES (seq_rounds.NEXTVAL, 'ROUND1', 'WINNER');
VALUES (seq_rounds.NEXTVAL, 'ROUND2', 'WINNER');
VALUES (seq_rounds.NEXTVAL, 'DECIDER', 'WINNER');
VALUES (seq_rounds.NEXTVAL, 'TEST1', 'WINNER');
VALUES (seq_rounds.NEXTVAL, 'TEST2', 'WINNER'); 

INSERT INTO games (game_id, game_name, round_id)
VALUES (seq_games.NEXTVAL, 'WARZONE', 57429751);
VALUES (seq_games.NEXTVAL, 'MINECRAFT', 57429752);
VALUES (seq_games.NEXTVAL, 'CLASH', 57429753);
VALUES (seq_games.NEXTVAL, 'COD', 57429754);
VALUES (seq_games.NEXTVAL, 'BATTLE', 57429755);

INSERT INTO statistics (game_result_id, game_id, game_duration, game_wld, game_kills, game_deaths, game_assists)
VALUES (seq_statistics.NEXTVAL, 4981, '120', 'LOSS', 33, 5, 4);
VALUES (seq_statistics.NEXTVAL, 4982, '120', 'WIN', 25, 0, 1);
VALUES (seq_statistics.NEXTVAL, 4983, '120', 'DRAW', 19, 0, 4);
VALUES (seq_statistics.NEXTVAL, 4984, '120', 'LOSS', 15, 0, 4);
VALUES (seq_statistics.NEXTVAL, 4985, '120', 'WIN', 10, 0, 4);

INSERT INTO game_participants (game_participants_id, game_id, tournament_participant_id) 
VALUES (seq_game_participants.NEXTVAL, 4981, 56319761);
VALUES (seq_game_participants.NEXTVAL, 4982, 56319762);
VALUES (seq_game_participants.NEXTVAL, 4983, 56319763);
VALUES (seq_game_participants.NEXTVAL, 4984, 56319764);
VALUES (seq_game_participants.NEXTVAL, 4985, 56319765);
