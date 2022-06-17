-- 11.	Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có
--  ten_loai_khach là “Diamond” và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.


SELECT 
dvdk.ma_dich_vu_di_kem,
dvdk.ten_dich_vu_di_kem,
lk.ten_loai_khach,
kh.dia_chi FROM khach_hang kh 
JOIN loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
JOIN hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
JOIN hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
JOIN dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
WHERE (kh.dia_chi like '%Vinh' or  kh.dia_chi like '%Quảng Ngãi' ) 
and lk.ten_loai_khach= 'Diamond';