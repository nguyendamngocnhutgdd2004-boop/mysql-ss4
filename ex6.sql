-- =========================================================================
-- ĐOẠN 1: KHỞI TẠO CƠ SỞ DỮ LIỆU & BẢNG PRODUCTS
-- =========================================================================
CREATE DATABASE IF NOT EXISTS quan_ly_kho_hang;
USE quan_ly_kho_hang;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(15, 2) NOT NULL,
    quantity INT DEFAULT 0
);

-- Yêu cầu 1: Thêm ít nhất 5 sản phẩm (2 Laptop, 1 Phone, có sản phẩm tồn kho = 0 để test)
INSERT INTO products (product_id, product_name, category, price, quantity) VALUES
('PROD001', 'Samsung Galaxy S24', 'Phone', 22000000.00, 15),
('PROD002', 'Dell Inspiron 14', 'Laptop', 14500000.00, 8),
('PROD003', 'Asus Vivobook 15', 'Laptop', 16000000.00, 0), -- Tồn kho bằng 0
('PROD004', 'iPad Air 5', 'Tablet', 13900000.00, 5),
('PROD005', 'Samsung Galaxy Tab S9', 'Tablet', 12000000.00, 10);


-- =========================================================================
-- ĐOẠN 2: TRUY VẤN DỮ LIỆU (SELECT)
-- =========================================================================

-- Yêu cầu 2: Hiển thị sản phẩm có giá từ 5.000.000 đến 15.000.000
SELECT * FROM products 
WHERE price BETWEEN 5000000.00 AND 15000000.00;

-- Yêu cầu 3: Hiển thị sản phẩm thuộc loại Laptop hoặc Tablet
SELECT * FROM products 
WHERE category IN ('Laptop', 'Tablet');

-- Yêu cầu 4: Hiển thị sản phẩm có tên bắt đầu bằng “Sam”
SELECT * FROM products 
WHERE product_name LIKE 'Sam%';

-- Yêu cầu 5: Hiển thị sản phẩm không thuộc loại Phone
SELECT * FROM products 
WHERE category NOT IN ('Phone'); 
-- Hoặc viết: WHERE category <> 'Phone'


-- =========================================================================
-- ĐOẠN 3: CẬP NHẬT & XÓA DỮ LIỆU (UPDATE - DELETE)
-- =========================================================================

-- Yêu cầu 6: Giảm giá 5% cho các sản phẩm thuộc loại Laptop
UPDATE products 
SET price = price * 0.95 
WHERE category = 'Laptop';

-- Kiểm tra lại bảng sau khi cập nhật giảm giá Laptop
SELECT * FROM products WHERE category = 'Laptop';


-- Yêu cầu 7: Xóa các sản phẩm có số lượng tồn kho bằng 0
DELETE FROM products 
WHERE quantity = 0;

-- Kiểm tra lại toàn bộ bảng sau khi xóa sản phẩm hết hàng
SELECT * FROM products;
