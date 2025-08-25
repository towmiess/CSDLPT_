-- Đếm số lượng nhân viên tại chi nhánh Đà Nẵng
SELECT COUNT(*) AS SoNV_ChiNhanh_DN FROM NhanVien;

-- Đếm số lượng nhân viên tại chi nhánh NAM DINH qua linked server
SELECT COUNT(*) AS SoNV_ChiNhanh_ND FROM [CUONG].[QLSP_ND].[dbo].[NhanVien];
