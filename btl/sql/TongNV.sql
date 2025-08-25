IF OBJECT_ID('dbo.sp_TongNhanVienChiNhanh', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_TongNhanVienChiNhanh;
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

EXECUTE [dbo].sp_TongNhanVienChiNhanh;
