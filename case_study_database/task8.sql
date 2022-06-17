use case_study;


-- 8.	Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu
--  ho_ten không trùng nhau. Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên.

-- cach 1:

SELECT DISTINCT
    khach_hang.ho_va_ten
FROM
    khach_hang;

--  cach 2:

SELECT 
    khach_hang.ho_va_ten
FROM
    khach_hang
GROUP BY khach_hang.ho_va_ten;

-- cach 3:
SELECT 
    kh.ho_va_ten
FROM
    khach_hang kh
UNION
SELECT 
    kh.ho_va_ten
FROM
    khach_hang kh;
