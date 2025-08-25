-- Thêm dữ liệu vào bảng KhachHang
INSERT INTO KhachHang (ID_KH, TenKH, SDT, Email, GioiTinh, DiaChi) VALUES
('KH001', 'Nguyen Van Khanh', '0123456789', 'nguyenvankhanh@gmail.com', 'Nam', '123 Duong Tran Hung Dao, Quan Hoan Kiem, Ha Noi'),
('KH002', 'Tran Thi An Nhien', '0987654321', 'tranthiannhien@gmail.com', 'Nu', '456 Duong Le Duan, Quan Hai Chau, Da Nang'),
('KH003', 'Le Van An', '0912345678', 'levanan@gmail.com', 'Nam', '789 Duong Nguyen Hue, Quan 1, TP. Ho Chi Minh'),
('KH004', 'Pham Thi Huong', '0923456789', 'phamthihuong@gmail.com', 'Nu', '101 Duong 30 Thang 4, Quan Ninh Kieu, Can Tho'),
('KH005', 'Hoang Van Nam', '0934567890', 'hoangvannam@gmail.com', 'Nam', '202 Duong Le Loi, Quan Ngo Quyen, Hai Phong'),
('KH006', 'Nguyen Thi Tuyen', '0945678901', 'nguyenthituyen@gmail.com', 'Nu', '303 Duong Tran Dang Ninh, Quan Ly Nhan, Nam Dinh'),
('KH007', 'Tran Van An', '0956789012', 'tranvanan@gmail.com', 'Nam', '404 Duong Kim Ma, Quan Ba Dinh, Ha Noi'),
('KH008', 'Le Thi Lien', '0967890123', 'lethilien@gmail.com', 'Nu', '505 Duong Bach Dang, Quan Hai Chau, Da Nang'),
('KH009', 'Pham Van Thai', '0978901234', 'phamvanthai@gmail.com', 'Nam', '606 Duong Cach Mang Thang 8, Quan 3, TP. Ho Chi Minh'),
('KH010', 'Hoang Thi Ha', '0989012345', 'hoangthiha@gmail.com', 'Nu', '707 Duong Nguyen Trai, Quan Ninh Kieu, Can Tho');

-- Thêm dữ liệu vào bảng NhaCungCap
INSERT INTO NhaCungCap (ID_NCC, Ten_NCC, Email, SDT, DiaChi) VALUES
('NCC001', 'Apple', 'apple@gmail.com', '0123456789', '789 Duong Tran Hung Dao, Quan Hoan Kiem, Ha Noi'),
('NCC002', 'Samsung', 'samsung@gmail.com', '0987654321', '101 Duong Le Duan, Quan Hai Chau, Da Nang'),
('NCC003', 'Huawei', 'huawei@gmail.com', '0912345678', '202 Duong Nguyen Hue, Quan 1, TP. Ho Chi Minh'),
('NCC004', 'Xiaomi', 'xiaomi@gmail.com', '0923456789', '303 Duong 30 Thang 4, Quan Ninh Kieu, Can Tho'),
('NCC005', 'Oppo', 'oppo@gmail.com', '0934567890', '404 Duong Le Loi, Quan Ngo Quyen, Hai Phong'),
('NCC006', 'Vivo', 'vivo@gmail.com', '0945678901', '505 Duong Tran Dang Ninh, Quan Ly Nhan, Nam Dinh'),
('NCC007', 'Sony', 'sony@gmail.com', '0956789012', '606 Duong Kim Ma, Quan Ba Dinh, Ha Noi'),
('NCC008', 'LG', 'lg@gmail.com', '0967890123', '707 Duong Bach Dang, Quan Hai Chau, Da Nang'),
('NCC009', 'Nokia', 'nokia@gmail.com', '0978901234', '808 Duong Cach Mang Thang 8, Quan 3, TP. Ho Chi Minh'),
('NCC010', 'Asus', 'asus@gmail.com', '0989012345', '909 Duong Nguyen Trai, Quan Ninh Kieu, Can Tho');

-- Thêm dữ liệu vào bảng SanPham
INSERT INTO SanPham (ID_SP, Ten_SP, Gia, TheLoai, MoTa, SoLuong, ID_NCC) VALUES
('SP001', 'iPhone 13', 20000000, 'Dien thoai', 'Dien thoai thong minh Apple iPhone 13', 100, 'NCC001'),
('SP002', 'Galaxy S21', 18000000, 'Dien thoai', 'Dien thoai thong minh Samsung Galaxy S21', 50, 'NCC002'),
('SP003', 'P40 Pro', 15000000, 'Dien thoai', 'Dien thoai thong minh Huawei P40 Pro', 75, 'NCC003'),
('SP004', 'Mi 11', 12000000, 'Dien thoai', 'Dien thoai thong minh Xiaomi Mi 11', 30, 'NCC004'),
('SP005', 'Reno 6', 10000000, 'Dien thoai', 'Dien thoai thong minh Oppo Reno 6', 20, 'NCC005'),
('SP006', 'V21', 9000000, 'Dien thoai', 'Dien thoai thong minh Vivo V21', 60, 'NCC006'),
('SP007', 'Xperia 5', 11000000, 'Dien thoai', 'Dien thoai thong minh Sony Xperia 5', 40, 'NCC007'),
('SP008', 'Velvet', 13000000, 'Dien thoai', 'Dien thoai thong minh LG Velvet', 25, 'NCC008'),
('SP009', '8.3 5G', 14000000, 'Dien thoai', 'Dien thoai thong minh Nokia 8.3 5G', 15, 'NCC009'),
('SP010', 'Zenfone 8', 16000000, 'Dien thoai', 'Dien thoai thong minh Asus Zenfone 8', 10, 'NCC010'),
('SP011', 'iPhone 16 Pro Max', 50000000, 'Dien thoai', 'Dien thoai thong minh Apple iPhone 16 Pro Max', 80, 'NCC001');

-- Thêm dữ liệu vào bảng ChiNhanh
INSERT INTO ChiNhanh (ID_ChiNhanh, TenChiNhanh, Email, DiaChi, SDT) VALUES
('CN001', 'Chi nhanh Ha Noi', 'chinhanhhanoi@gmail.com', '123 Duong Tran Hung Dao, Quan Hoan Kiem, Ha Noi', '0123456789'),
('CN002', 'Chi nhanh Da Nang', 'chinhanhdanang@gmail.com', '456 Duong Le Duan, Quan Hai Chau, Da Nang', '0987654321'),
('CN003', 'Chi nhanh TP. Ho Chi Minh', 'chinhanhtphcm@gmail.com', '789 Duong Nguyen Hue, Quan 1, TP. Ho Chi Minh', '0912345678'),
('CN004', 'Chi nhanh Can Tho', 'chinhanhcantho@gmail.com', '101 Duong 30 Thang 4, Quan Ninh Kieu, Can Tho', '0923456789'),
('CN005', 'Chi nhanh Hai Phong', 'chinhanhhaiphong@gmail.com', '202 Duong Le Loi, Quan Ngo Quyen, Hai Phong', '0934567890'),
('CN006', 'Chi nhanh Nam Dinh', 'chinhanhnamdinh@gmail.com', '303 Duong Tran Dang Ninh, Quan Ly Nhan, Nam Dinh', '0945678901');

-- Thêm dữ liệu vào bảng NhanVien
INSERT INTO NhanVien (ID_NV, TenNV, ChucVu, NgaySinh, GioiTinh, ID_ChiNhanh) VALUES
('NV001', 'Tran Thi Quynh Thom', 'Nhan vien quan li ', '2003-11-11', 'Nu', 'CN001'),
('NV002', 'Le Dinh Tu', 'Nhan vien ky thuat', '2003-02-10', 'Nam', 'CN002'),
('NV003', 'Ta Dang Tuan', 'Nhan vien ky thuat', '2003-07-03', 'Nam', 'CN003'),
('NV004', 'Ngo The Viet','Nhan vien ke toan', '2003-05-07', 'Nam', 'CN004'),
('NV005', 'Do Dinh Cuong', 'Nhan vien ban hang', '2003-04-04', 'Nam', 'CN006'),
('NV008', 'Nguyen Xuan Tra', 'Nhan vien ban hang', '2003-05-05', 'Nam', 'CN005'),
('NV006', 'Nguyen Thi Hanh', 'Nhan vien ban hang', '1995-06-06', 'Nu', 'CN006'),
('NV007', 'Tran Van Quang', 'Nhan vien ky thuat',  '1995-08-06', 'Nam', 'CN005');