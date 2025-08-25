-- Drop existing procedure if it exists
IF OBJECT_ID('dbo.sp_TongSanPhamChiNhanh', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_TongSanPhamChiNhanh;
GO

-- Create procedure
CREATE PROCEDURE [dbo].sp_TongSanPhamChiNhanh
AS
BEGIN
    SELECT 
        ChiNhanh.ID_ChiNhanh, 
        ChiNhanh.TenChiNhanh, 
        SUM(SanPham.SoLuong) AS TongSanPham
    FROM 
        ChiNhanh
    LEFT JOIN 
        SanPham ON ChiNhanh.ID_ChiNhanh = SanPham.ID_ChiNhanh
    GROUP BY 
        ChiNhanh.ID_ChiNhanh, ChiNhanh.TenChiNhanh;
END;
GO

-- Execute procedure
EXECUTE [dbo].sp_TongSanPhamChiNhanh;
