-- 1. Tạo cơ sở dữ liệu và bảng mẫu (Theo mô tả cấu trúc đề bài)
CREATE DATABASE IF NOT EXISTS quan_ly_sinh_vien_dml;
USE quan_ly_sinh_vien_dml;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    student_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    gender VARCHAR(10),
    email VARCHAR(100) -- Có thể để trống (NULL)
);

-- =========================================================================
-- 2. YÊU CẦU 1: Thêm ít nhất 5 sinh viên (Có ít nhất 1 sinh viên không có email)
-- =========================================================================
INSERT INTO students (student_id, full_name, birth_date, gender, email) VALUES
('SV001', 'Nguyen Van A', '2005-05-15', 'Nam', 'nguyenvana@gmail.com'),
('SV002', 'Tran Thi B', '2004-10-20', 'Nu', 'tranthib@gmail.com'),
('SV003', 'Le Van C', '2005-02-11', 'Nam', NULL), -- Sinh viên không có email
('SV004', 'Pham Minh D', '2003-08-30', 'Nam', 'phamminhd@gmail.com'),
('SV005', 'Hoang Thu E', '2005-12-05', 'Nu', 'hoangthue@gmail.com');

-- =========================================================================
-- 3. YÊU CẦU 2: Viết câu lệnh SELECT để truy vấn dữ liệu
-- =========================================================================

-- Câu lệnh 1: Hiển thị toàn bộ danh sách sinh viên
SELECT * FROM students;

-- Câu lệnh 2: Chỉ hiển thị các cột: mã sinh viên, họ tên, email
SELECT student_id, full_name, email FROM students;
