CREATE
OR REPLACE PROCEDURE create_table_of_developer_games(developer varchar)
LANGUAGE 'plpgsql'
AS $$
BEGIN
        CREATE TABLE developer_game  as select name,release_year from game
        WHERE developer_name =developer;
END
$$;