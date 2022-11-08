create or replace NONEDITIONABLE PROCEDURE
    insert_cliente(
        p_ID IN CLIENTE.ID%type,
        p_RAZAO_SOC IN CLIENTE.RAZAO_SOCIAL%type,
        p_CNPJ IN CLIENTE.CNPJ%type,
        p_SEGMERCADO_ID IN SEGMERCADO.ID%type,
        p_FATURAMENTO_PREVISTO IN CLIENTE.FATURAMENTO_PREVISTO%type
    )
IS
    v_CATEGORIA CLIENTE.CATEGORIA%type;
BEGIN
    v_CATEGORIA := get_categoria_cliente(p_FATURAMENTO_PREVISTO);

    INSERT INTO CLIENTE (
        ID,
        RAZAO_SOCIAL,
        CNPJ,
        SEGMERCADO_ID,
        DATA_INCLUSAO,
        FATURAMENTO_PREVISTO,
        CATEGORIA
    )
    VALUES (
        p_ID,
        UPPER(p_RAZAO_SOC),
        p_CNPJ,
        p_SEGMERCADO_ID,
        SYSDATE,
        p_FATURAMENTO_PREVISTO,
        v_CATEGORIA
    );

    COMMIT;
END;

-- EXECUTE insert_cliente(1,'SUPERMERCADO BÃO','1234567890',1,90000);
