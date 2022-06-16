use ss4_quan_ly_sinh_vien ;


-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select *  FROM `subject`  s
GROUP BY s.credit 
ORDER BY  max(credit) DESC
LIMIT 1;

select * from `subject` s where credit= (select max(credit) from `subject`);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select m.*  from mark m
join `subject` s on m.sub_id = s.sub_id
GROUP BY  m.mark ORDER BY max(m.mark) DESC
LIMIT 1;

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên,
--  xếp hạng theo thứ tự điểm giảm dần
select s.* ,avg(m.mark) as `avg` from mark m
join student s on m.student_id = s.student_id
GROUP BY  m.student_id ORDER BY avg(m.mark) DESC;

