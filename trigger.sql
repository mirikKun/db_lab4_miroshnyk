CREATE OR REPLACE FUNCTION add_game() RETURNS TRIGGER AS
$$
BEGIN
    UPDATE game
    SET name = concat('Game ',name) WHERE appid = new.appid;
    RETURN NULL;
END;
$$ LANGUAGE 'plpgsql';



CREATE TRIGGER game_insert
    AFTER INSERT ON game
    FOR EACH ROW EXECUTE FUNCTION add_game();