CALL create_table_of_developer_games('Steam');

SELECT get_earliest_game_of_developer('Steam');

INSERT INTO game(appid,name,release_year,price,developer_name)
values (1405,'CS GO5',2012,102,'Steam');