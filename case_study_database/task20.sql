-- 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, 
-- thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email,
-- so_dien_thoai, ngay_sinh, dia_chi.
SELECT nv.ma_nhan_vien,
nv.ho_ten,
nv.email,
nv.so_dien_thoai,
nv.ngay_sinh,
nv.dia_chi
FROM  nhan_vien nv  

union

SELECT 
kh.ma_khach_hang,
kh.ho_va_ten,
kh.email,
kh.so_dien_thoai,
kh.ngay_sinh,
kh.dia_chi 
FROM  khach_hang kh ;