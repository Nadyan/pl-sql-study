/* chamar função fora de um programa plsql:
VARIABLE g_DESCRICAO VARCHAR2(100);
EXECUTE :g_DESCRICAO:=get_description_segmercado(1);
PRINT g_DESCRICAO;
*/

SET SERVEROUTPUT ON;

DECLARE
    v_DESCRICAO SEGMERCADO.DESCRICAO%type;
    v_ID SEGMERCADO.ID%type := 1;
BEGIN
    v_DESCRICAO := get_description_segmercado(v_ID);
    dbms_output.put_line('Descrição: ' || v_DESCRICAO);
END;