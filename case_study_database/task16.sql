-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.

SET SQL_SAFE_UPDATES = 0;
ALTER TABLE nhan_vien ADD `status` BIT;
update nhan_vien set `status` = 1
where nhan_vien.ma_nhan_vien in (
select * from (
select nv.ma_nhan_vien from nhan_vien nv
left join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
where nv.ma_nhan_vien not in (
select nv.ma_nhan_vien from nhan_vien nv
right join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
WHERE year(ngay_lam_hop_dong) BETWEEN 2020 and 2021
group by ma_nhan_vien)
) temp);
-- những Nhân viên đã được xoá
select ma_nhan_vien, ho_ten from nhan_vien where `status` = 1;