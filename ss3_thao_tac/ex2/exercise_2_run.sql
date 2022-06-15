use `ss3_quan_ly_ban_hang`;

SELECT 
    o.o_id, o.o_date, o.o_total_price
FROM
    `order` o;

SELECT 
    c.*, p.*
FROM
    customer c
        JOIN
    `order` o ON c.c_id = o.c_id
        JOIN
    order_detail odt ON o.o_id = odt.o_id
        JOIN
    product p ON odt.p_id = p.p_id;
    
SELECT 
    c.*, COUNT(o.o_id) AS so_lan_mua
FROM
    customer c
        LEFT JOIN
    `order` o ON c.c_id = o.c_id
GROUP BY o_id
HAVING so_lan_mua =0 ;
    
SELECT 
    o.o_id, o.o_date, SUM(p_price * od_qty)
FROM
    `order` o
        JOIN
    order_detail odt ON o.o_id = odt.o_id
        JOIN
    product p ON odt.p_id = p.p_id
GROUP BY o_id;
