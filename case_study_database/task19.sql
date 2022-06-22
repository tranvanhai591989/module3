-- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.

UPDATE dich_vu_di_kem 
set gia =gia*2
WHERE ma_dich_vu_di_kem in (
SELECT*FROM(
SELECT dvdk.ma_dich_vu_di_kem FROM hop_dong hd
JOIN hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
JOIN dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
WHERE year(hd.ngay_lam_hop_dong)=2020 and hdct.so_luong >=10)temp);



