-- 13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các 
-- Khách hàng đã đặt phòng. (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).


-- cach 1 
create VIEW w_table_max as
SELECT 
sum(hdct.so_luong) as sl
FROM hop_dong hd
JOIN hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
JOIN dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hdct.ma_dich_vu_di_kem;

SELECT * from w_table_max;

SELECT 
hd.ma_khach_hang,
hdct.ma_hop_dong,
hdct.ma_dich_vu_di_kem,
dvdk.ten_dich_vu_di_kem,
sum(hdct.so_luong) as sl
FROM hop_dong hd
JOIN hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
JOIN dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hdct.ma_dich_vu_di_kem
having sl = (SELECT  max(sl) from w_table_max) ;

-- cach 2

SELECT 
hd.ma_khach_hang,
hdct.ma_hop_dong,
hdct.ma_dich_vu_di_kem,
dvdk.ten_dich_vu_di_kem,
sum(hdct.so_luong) as sl
FROM hop_dong hd
JOIN hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
JOIN dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hdct.ma_dich_vu_di_kem
having sl = (SELECT max(sl) from (SELECT 
sum(hdct.so_luong) as sl
FROM hop_dong hd
JOIN hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
JOIN dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hdct.ma_dich_vu_di_kem) as tb) ;
