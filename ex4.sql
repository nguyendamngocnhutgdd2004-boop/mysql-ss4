-- Chỉ định sử dụng cơ sở dữ liệu quản lý sinh viên
USE quan_ly_sinh_vien_dml;

-- =========================================================================
-- YÊU CẦU 1: Hiển thị danh sách sinh viên chưa có email
-- =========================================================================
SELECT * 
FROM students
WHERE email IS NULL;


-- =========================================================================
-- YÊU CẦU 2: Hiển thị danh sách sinh viên đã có email
-- =========================================================================
SELECT * 
FROM students
WHERE email IS NOT NULL;


-- =========================================================================
-- YÊU CẦU 3: Hiển thị sinh viên có họ tên bắt đầu bằng chữ “Ng”
-- =========================================================================
SELECT * 
FROM students
WHERE full_name LIKE 'Ng%';


-- =========================================================================
-- YÊU CẦU 4: Hiển thị sinh viên không phải giới tính Nam
-- =========================================================================
SELECT * 
FROM students
WHERE NOT gender = 'Nam'; 
-- Hoặc bạn có thể dùng toán tử so sánh khác: WHERE gender <> 'Nam' hoặc WHERE gender != 'Nam'
