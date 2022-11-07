
DECLARE
    v_ID SEGMERCADO.ID%type := 1;
    v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'Automotivo';
BEGIN
    INSERT 
    INTO 
        SEGMERCADO (ID, DESCRICAO)
    VALUES (
        UPPER(v_ID),
        UPPER(REPLACE(v_DESCRICAO, '-', '>'))
    );
    
    COMMIT;
END;