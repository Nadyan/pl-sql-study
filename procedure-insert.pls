
-- Criação da procedure
CREATE OR REPLACE PROCEDURE
    insert_segmercado(
        p_ID IN SEGMERCADO.ID%type,
        p_DESCRICAO IN SEGMERCADO.DESCRICAO%type
    )
IS
    -- variaveis extras
BEGIN
    INSERT INTO SEGMERCADO (ID, DESCRICAO)
    VALUES (p_ID, UPPER(p_DESCRICAO));
    
    COMMIT;
END;

-- Execução
DECLARE
    v_ID SEGMERCADO.ID%type := 1;
    v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'Varejo';
BEGIN
    insert_segmercado(v_ID, v_DESCRICAO);
END;

-- EXECUTE INSERT_SEGMERCADO(15, 'Teste procedure');
-- DROP PROCEDURE insert_segmercado;