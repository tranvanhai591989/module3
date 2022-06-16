use case_study;

 select hd.ma_khach_hang, kh.ho_va_ten , count(hd.ma_khach_hang) as so_lan_thue, lk.ten_loai_khach from hop_dong hd
 join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
 join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
 group by ma_khach_hang having lk.ten_loai_khach  = 'Diamond'
 order by so_lan_thue desc
 ;
