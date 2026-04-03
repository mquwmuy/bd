SELECT 
    l.last_name_credentials || ' ' || l.name_credentials || ' ' || l.middle_name_credentials AS "ФИО клиента/работника",
    k.number_contract AS "№ Договора",
    m.article_med AS "Артикул продукта",
    m.price_med AS "Стоимость продукта",
    o.number_order AS "№ Заказа",
    c.login_client AS "Логин клиента" 

    
FROM credentials l
JOIN client c ON l.login_credentials = c.login_client 
JOIN order_ o ON c.login_client = l.login_credentials 
JOIN med_products m ON m.article_med = m.article_med
JOIN contract k ON o.number_order = o.number_order;
