use case_study;

--  6.	Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu 
--  của tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt từ quý 1 của 
--  năm 2021 (Quý 1 là tháng 1, 2, 3).
 SELECT dv.ma_dich_vu,
 dv.ma_dich_vu,
 dv.dien_tich,
 dv.chi_phi_thue,
 hd.ngay_lam_hop_dong,
 ldv.ten_loai_dich_vu from hop_dong hd 
  join dich_vu dv on hd.ma_dich_vu= dv.ma_dich_vu
 JOIN loai_dich_vu ldv on dv.ma_loai_dich_vu= ldv.ma_loai_dich_vu
 GROUP BY dv.ma_dich_vu
HAVING dv.ma_dich_vu NOT in ( SELECT dv.ma_dich_vu FROM hop_dong hd
 join dich_vu dv on hd.ma_dich_vu= dv.ma_dich_vu
 JOIN loai_dich_vu ldv on dv.ma_loai_dich_vu= ldv.ma_loai_dich_vu 
 WHERE ((month(hd.ngay_lam_hop_dong))BETWEEN 1 and 3) and year(hd.ngay_lam_hop_dong)=2021);