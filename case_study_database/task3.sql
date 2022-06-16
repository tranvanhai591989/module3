use case_study;

SELECT * FROM khach_hang 
WHERE (dia_chi like  '%Đà Nẵng' OR dia_chi like '%Quảng Trị') and (( year(curdate())-year(ngay_sinh)) BETWEEN 18 and 50);