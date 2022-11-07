
SET SERVEROUTPUT ON;

DECLARE
    v_ID SEGMERCADO.ID%type := 1;
    v_DESCRICAO SEGMERCADO.DESCRICAO%type;
BEGIN
    SELECT DESCRICAO
    INTO v_DESCRICAO
    FROM SEGMERCADO
    WHERE ID = v_ID;
    
    dbms_output.put_line(v_DESCRICAO);
END;

/* 
   o SELECT INTO deve ser sempre associado
   a apenas UMA celula da tabela.
*/