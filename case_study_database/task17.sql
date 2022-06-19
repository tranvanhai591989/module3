-- 17. Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm
-- 2021 là lớn hơn 10.000.000 VNĐ.

select
kh.ma_khach_hang,
kh.ho_va_ten,
kh.ma_loai_khach
from khach_hang kh
 join loai_khach lk on lk.ma_loai_khach=kh.ma_loai_khach
 join hop_dong hd on hd.ma_khach_hang= kh.ma_khach_hang
 join dich_vu dv on hd.ma_dich_vu= dv.ma_dich_vu
 join hop_dong_chi_tiet hdct on hd.ma_hop_dong=hdct.ma_hop_dong
 join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem=dvdk.ma_dich_vu_di_kem
WHERE (ifnull(dv.chi_phi_thue,0)+ ifnull(hdct.so_luong * dvdk.gia,0)>10000000)
 AND year(hd.ngay_lam_hop_dong) = 2021;