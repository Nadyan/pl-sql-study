
CREATE OR REPLACE FUNCTION
    get_description_segmercado(p_ID IN SEGMERCADO.ID%type)
RETURN
    SEGMERCADO.DESCRICAO%type
IS
    v_DESCRICAO SEGMERCADO.DESCRICAO%type;
BEGIN
    SELECT DESCRICAO
    INTO v_DESCRICAO
    FROM SEGMERCADO
    WHERE ID = p_ID;
    
    RETURN v_DESCRICAO;
END;


/*
   SELECT
      ID,
      get_description_segmercado(ID) AS "funcao_descricao"
   FROM SEGMERCADO;
*/