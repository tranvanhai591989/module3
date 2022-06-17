-- 12.	Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), 
-- so_dien_thoai (khách hàng), ten_dich_vu, so_luong_dich_vu_di_kem 
-- (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), tien_dat_coc của tất cả
-- các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng
--  được khách hàng đặt vào 6 tháng đầu năm 2021.

SELECT 
    hd.ma_hop_dong,
    nv.ho_ten AS ho_ten_nhan_vien,
    kh.ho_va_ten AS ho_ten_khach_hang,
    kh.so_dien_thoai,
    dv.ten_dich_vu,
    dv.ma_dich_vu,
    hd.tien_dat_coc,
    (IFNULL(hdct.so_luong, 0)) AS so_luong_dich_vu_di_kem
FROM
    hop_dong hd
        JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        JOIN
    nhan_vien nv ON hd.ma_nhan_vien = nv.ma_nhan_vien
        JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
WHERE
    (MONTH(hd.ngay_lam_hop_dong) BETWEEN 10 AND 12)
        AND YEAR(hd.ngay_lam_hop_dong) = 2020
GROUP BY hd.ma_hop_dong NOT IN (SELECT 
        hd.ngay_lam_hop_dong
    FROM
        hop_dong
    WHERE
        (MONTH(hd.ngay_lam_hop_dong) BETWEEN 1 AND 6)
            AND YEAR(hd.ngay_lam_hop_dong) = 2021);
 
