-- Drop existing procedure if it exists
IF OBJECT_ID('dbo.sp_TongSoLuongCungCapNhaCungCap', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_TongSoLuongCungCapNhaCungCap;
GO

-- Create procedure
CREATE PROCEDURE [dbo].sp_TongSoLuongCungCapNhaCungCap
AS
BEGIN
    SELECT 
        NhaCungCap.ID_NCC, 
        NhaCungCap.Ten_NCC, 
        SUM(SanPham.SoLuong) AS TongSoLuongCungCap
    FROM 
        NhaCungCap
    LEFT JOIN 
        SanPham ON NhaCungCap.ID_NCC = SanPham.ID_NCC
    GROUP BY 
        NhaCungCap.ID_NCC, NhaCungCap.Ten_NCC;
END;
GO

-- Execute procedure
EXECUTE [dbo].sp_TongSoLuongCungCapNhaCungCap;
