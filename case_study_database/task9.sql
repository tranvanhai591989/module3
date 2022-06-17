-- 9.	Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng
--  trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.

SELECT month(ngay_lam_hop_dong) , count(ma_khach_hang) from hop_dong
WHERE year(ngay_lam_hop_dong)=2021
GROUP BY  month(ngay_lam_hop_dong)
ORDER BY  month(ngay_lam_hop_dong) 
