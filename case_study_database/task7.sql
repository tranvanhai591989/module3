use case_study;

-- 7.	Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue,
--  ten_loai_dich_vu của tất cả các loại dịch vụ đã từng được khách hàng đặt phòng trong 
-- năm 2020 nhưng chưa từng được khách hàng đặt phòng trong năm 2021.

 SELECT
 dv.ma_dich_vu,
  dv.ten_dich_vu,
   dv.dien_tich,
  dv.so_nguoi_toi_da,
  dv.chi_phi_thue,
   hd.ngay_lam_hop_dong,
 ldv.ten_loai_dich_vu from hop_dong hd 
  join dich_vu dv on hd.ma_dich_vu= dv.ma_dich_vu
 JOIN loai_dich_vu ldv on dv.ma_loai_dich_vu= ldv.ma_loai_dich_vu
 WHERE year(hd.ngay_lam_hop_dong)=2020
 GROUP BY dv.ma_dich_vu
HAVING dv.ma_dich_vu NOT in ( SELECT dv.ma_dich_vu FROM hop_dong hd
 join dich_vu dv on hd.ma_dich_vu= dv.ma_dich_vu
 JOIN loai_dich_vu ldv on dv.ma_loai_dich_vu= ldv.ma_loai_dich_vu 
 WHERE  year(hd.ngay_lam_hop_dong)=2021);