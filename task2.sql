CREATE OR REPLACE PROCEDURE prc_ClearAllTables()
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM background_information;
    DELETE FROM client;
    DELETE FROM contract;
    
    DELETE FROM credentials;
    DELETE FROM estimate;
    
    DELETE FROM indications_contraindications;
    DELETE FROM med_product_order;
    DELETE FROM med_product;

	DELETE FROM order_;

    
    DELETE FROM worker;

    RAISE NOTICE 'Все таблицы базы очищены (Этап 2)';
END;
$$;
