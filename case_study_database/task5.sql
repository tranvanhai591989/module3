use case_study;

select
kh.ma_khach_hang,
kh.ho_va_ten,
lk.ten_loai_khach,
hd.ma_hop_dong,
dv.ten_dich_vu,
hd.ngay_lam_hop_dong,
hd.ngay_ket_thuc,
ifnull(dv.chi_phi_thue,0)+ ifnull(hdct.so_luong * dvdk.gia,0)
as tong_tien
from khach_hang kh
left join loai_khach lk on lk.ma_loai_khach=kh.ma_loai_khach
left join hop_dong hd on hd.ma_khach_hang= kh.ma_khach_hang
left join dich_vu dv on hd.ma_dich_vu= dv.ma_dich_vu
left join hop_dong_chi_tiet hdct on hd.ma_hop_dong=hdct.ma_hop_dong
left join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem=dvdk.ma_dich_vu_di_kem
group by kh.ma_khach_hang;