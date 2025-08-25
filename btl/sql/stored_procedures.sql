-- Drop existing procedures if they exist
IF OBJECT_ID('dbo.sp_TongSanPhamChiNhanh', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_TongSanPhamChiNhanh;
GO

IF OBJECT_ID('dbo.sp_TongGiaoDichChiNhanh', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_TongGiaoDichChiNhanh;
GO

IF OBJECT_ID('dbo.sp_TongNhanVienChiNhanh', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_TongNhanVienChiNhanh;
GO

-- Create procedures
CREATE PROCEDURE [dbo].sp_TongSanPhamChiNhanh
AS
BEGIN
    SELECT 
        ChiNhanh.ID_ChiNhanh, 
        ChiNhanh.TenChiNhanh, 
        COUNT(SanPham.SoLuong) AS TongSanPham
    FROM 
        ChiNhanh
    LEFT JOIN 
        SanPham ON ChiNhanh.ID_ChiNhanh = SanPham.ID_ChiNhanh
    GROUP BY 
        ChiNhanh.ID_ChiNhanh, ChiNhanh.TenChiNhanh;
END;
GO

CREATE PROCEDURE [dbo].sp_TongGiaoDichChiNhanh
AS
BEGIN
    SELECT 
        ChiNhanh.ID_ChiNhanh, 
        ChiNhanh.TenChiNhanh, 
        COUNT(GiaoDich.ID_GD) AS TongGiaoDich, 
        SUM(GiaoDich.TongTien) AS TongTienGiaoDich
    FROM 
        ChiNhanh
    LEFT JOIN 
        GiaoDich ON ChiNhanh.ID_ChiNhanh = GiaoDich.ID_ChiNhanh
    GROUP BY 
        ChiNhanh.ID_ChiNhanh, ChiNhanh.TenChiNhanh;
END;
GO

CREATE PROCEDURE [dbo].sp_TongNhanVienChiNhanh
AS
BEGIN
    SELECT 
        ChiNhanh.ID_ChiNhanh, 
        ChiNhanh.TenChiNhanh, 
        COUNT(NhanVien.ID_NV) AS TongNhanVien
    FROM 
        ChiNhanh
    LEFT JOIN 
        NhanVien ON ChiNhanh.ID_ChiNhanh = NhanVien.ID_ChiNhanh
    GROUP BY 
        ChiNhanh.ID_ChiNhanh, ChiNhanh.TenChiNhanh;
END;
GO

-- Execute procedures
EXECUTE [dbo].sp_TongSanPhamChiNhanh;
EXECUTE [dbo].sp_TongGiaoDichChiNhanh;
EXECUTE [dbo].sp_TongNhanVienChiNhanh;
