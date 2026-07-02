-- Chỉ định sử dụng cơ sở dữ liệu quản lý sinh viên
USE quan_ly_sinh_vien_dml;

-- =========================================================================
-- YÊU CẦU 1: Hiển thị sinh viên có năm sinh từ 2003 đến 2005 (Dùng BETWEEN)
-- =========================================================================
SELECT student_id, full_name, birth_date
FROM students
WHERE birth_date BETWEEN '2003-01-01' AND '2005-12-31';


-- =========================================================================
-- YÊU CẦU 2: Hiển thị sinh viên có giới tính là 'Nam' hoặc 'Nu' (Dùng IN)
-- =========================================================================
SELECT student_id, full_name, birth_date
FROM students
WHERE gender IN ('Nam', 'Nu');


-- =========================================================================
-- YÊU CẦU 3: Hiển thị sinh viên có mã thuộc danh sách: SV001, SV004, SV005
-- =========================================================================
SELECT student_id, full_name, birth_date
FROM students
WHERE student_id IN ('SV001', 'SV004', 'SV005');
