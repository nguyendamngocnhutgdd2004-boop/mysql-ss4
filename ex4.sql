-- 1. Tạo bảng Độc Giả
CREATE TABLE DocGia (
    MaDG VARCHAR(10) PRIMARY KEY,
    TenDG VARCHAR(50) NOT NULL,
    SDT VARCHAR(15),
    DiaChi VARCHAR(100)
);

-- 2. Tạo bảng Sách
CREATE TABLE Sach (
    MaSach VARCHAR(10) PRIMARY KEY,
    TenSach VARCHAR(100) NOT NULL,
    TacGia VARCHAR(50),
    NamXuatBan INT
);

-- 3. Tạo bảng trung gian Mượn Sách (Thể hiện quan hệ N - N)
CREATE TABLE MuonSach (
    MaDG VARCHAR(10),
    MaSach VARCHAR(10),
    NgayMuon DATE,
    NgayTra DATE,
    -- Thiết lập khóa chính kết hợp
    PRIMARY KEY (MaDG, MaSach, NgayMuon),
    -- Thiết lập các khóa ngoại liên kết liên thông dữ liệu
    FOREIGN KEY (MaDG) REFERENCES DocGia(MaDG) ON DELETE CASCADE,
    FOREIGN KEY (MaSach) REFERENCES Sach(MaSach) ON DELETE CASCADE
);
