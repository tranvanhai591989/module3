-- 21.	Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên
--  có địa chỉ là “Hải Châu” và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì 
-- với ngày lập hợp đồng là “12/12/2019”.

CREATE VIEW v_nhan_vien as 
SELECT nv.* FROM nhan_vien nv
join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
 WHERE nv.dia_chi like '%Gia Lai' and hd.ngay_lam_hop_dong='2019-12-12' and hd.ma_nhan_vien IN (
 hd.ma_nhan_vien);
SELECT*FROM v_nhan_vien;

-- 22.	Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành “Liên Chiểu”
--  đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.

UPDATE v_nhan_vien
SET dia_chi = 'Liên Chiểu';



DROP VIEW v_nhan_vien;
