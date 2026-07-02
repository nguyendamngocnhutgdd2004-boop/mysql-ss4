-- Chỉ định sử dụng cơ sở dữ liệu từ bài trước
USE quan_ly_sinh_vien_dml;

-- =========================================================================
-- YÊU CẦU 1: Cập nhật email cho sinh viên chưa có email (SV003)
-- =========================================================================
UPDATE students 
SET email = 'levanc_updated@gmail.com' 
WHERE student_id = 'SV003';

-- Kiểm tra lại sau khi cập nhật email
SELECT * FROM students WHERE student_id = 'SV003';


-- =========================================================================
-- YÊU CẦU 2: Cập nhật giới tính cho sinh viên có mã là SV005
-- =========================================================================
UPDATE students 
SET gender = 'Nu' 
WHERE student_id = 'SV005';

-- Kiểm tra lại sau khi cập nhật giới tính
SELECT * FROM students WHERE student_id = 'SV005';


-- =========================================================================
-- YÊU CẦU 3: Xóa sinh viên có mã sinh viên là SV003
-- =========================================================================
DELETE FROM students 
WHERE student_id = 'SV003';

-- Kiểm tra lại toàn bộ bảng để xác nhận SV003 đã biến mất
SELECT * FROM students;
