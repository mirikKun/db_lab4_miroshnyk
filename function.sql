CREATE OR REPLACE FUNCTION get_earliest_game_of_developer(developer varchar) RETURNS INT
AS
$$
BEGIN
    RETURN (SELECT min(release_year)
            FROM game
                     INNER JOIN developer a on game.developer_name = a.developer_name
            WHERE a.developer_name = developer);
END;
$$   LANGUAGE plpgsql;

