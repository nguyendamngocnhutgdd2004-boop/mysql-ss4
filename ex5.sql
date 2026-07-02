-- =========================================================================
-- ĐOẠN 1: KHỞI TẠO CƠ SỞ DỮ LIỆU & BẢNG EMPLOYEES
-- =========================================================================
CREATE DATABASE IF NOT EXISTS quan_ly_nhan_su;
USE quan_ly_nhan_su;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_year INT,
    department VARCHAR(50),
    salary DECIMAL(15, 2) NOT NULL,
    phone VARCHAR(15) -- Có thể trống (NULL)
);

-- Thêm tối thiểu 10 dữ liệu mẫu đa dạng các phòng ban và mức lương
INSERT INTO employees (emp_id, full_name, birth_year, department, salary, phone) VALUES
('NV001', 'Nguyen Hoang Anh', 1995, 'IT', 15000000.00, '0912345678'),
('NV002', 'Tran Thi Mai Anh', 1998, 'HR', 12000000.00, NULL), -- Chưa có SĐT
('NV003', 'Le Van Binh', 1992, 'IT', 25000000.00, '0987654321'),
('NV004', 'Pham Minh Tu', 2000, 'Sales', 8000000.00, '0901122334'),
('NV005', 'Hoang Ngoc Lan', 1996, 'HR', 11000000.00, '0933445566'),
('NV006', 'Vuong Duc Anh', 1994, 'IT', 18000000.00, NULL), -- Chưa có SĐT
('NV007', 'Doan Quoc Bao', 1990, 'Marketing', 14000000.00, '0977889900'),
('NV008', 'Nguyen Thuy Tien', 1997, 'Sales', 4500000.00, '0955667788'), -- Lương dưới 5M
('NV009', 'Bui Van Hung', 1993, 'IT', 9500000.00, '0944556677'),
('NV010', 'Dang Kim Anh', 1999, 'Accounting', 13500000.00, '0922334455');


-- =========================================================================
-- ĐOẠN 2: TRUY VẤN DỮ LIỆU (SELECT)
-- =========================================================================

-- Yêu cầu 1: Hiển thị danh sách nhân viên có mức lương từ 10.000.000 đến 20.000.000
SELECT * FROM employees 
WHERE salary BETWEEN 10000000.00 AND 20000000.00;

-- Yêu cầu 2: Hiển thị nhân viên thuộc phòng ban IT hoặc HR
SELECT * FROM employees 
WHERE department IN ('IT', 'HR');

-- Yêu cầu 3: Hiển thị nhân viên có họ tên chứa chữ “Anh”
SELECT * FROM employees 
WHERE full_name LIKE '%Anh%';

-- Yêu cầu 4: Hiển thị nhân viên chưa có số điện thoại
SELECT * FROM employees 
WHERE phone IS NULL;


-- =========================================================================
-- ĐOẠN 3: CẬP NHẬT & XÓA DỮ LIỆU (UPDATE - DELETE)
-- =========================================================================

-- Yêu cầu 5: Cập nhật lương tăng thêm 10% cho nhân viên phòng IT
UPDATE employees 
SET salary = salary * 1.10 
WHERE department = 'IT';

-- Yêu cầu 6: Cập nhật số điện thoại cho nhân viên chưa có số điện thoại (ví dụ: gán SĐT mặc định)
UPDATE employees 
SET phone = '0900000000' 
WHERE phone IS NULL;

-- Yêu cầu 7: Xóa nhân viên có mức lương thấp hơn 5.000.000
DELETE FROM employees 
WHERE salary < 5000000.00;


-- =========================================================================
-- ĐOẠN 4: KIỂM TRA LẠI DỮ LIỆU SAU KHI THAY ĐỔI
-- =========================================================================
SELECT * FROM employees;
