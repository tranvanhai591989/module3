-- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).

select
kh.ma_khach_hang,
kh.ho_va_ten,
kh.ma_loai_khach
from khach_hang kh
 left join loai_khach lk on lk.ma_loai_khach=kh.ma_loai_khach
  left join hop_dong hd on hd.ma_khach_hang= kh.ma_khach_hang
  left join dich_vu dv on hd.ma_dich_vu= dv.ma_dich_vu
  left join hop_dong_chi_tiet hdct on hd.ma_hop_dong=hdct.ma_hop_dong
  left join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem=dvdk.ma_dich_vu_di_kem
WHERE year(hd.ngay_lam_hop_dong) < 2021
GROUP BY kh.ma_khach_hang;
