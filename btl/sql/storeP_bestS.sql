-- Drop existing procedure if it exists
IF OBJECT_ID('dbo.sp_BestSeller', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_BestSeller;
GO

-- Create procedure
CREATE PROCEDURE [dbo].sp_BestSeller
AS
BEGIN
    WITH BestSellers AS (
        SELECT 
            ChiNhanh.ID_ChiNhanh, 
            ChiNhanh.TenChiNhanh, 
            SanPham.ID_SP, 
            SanPham.Ten_SP, 
            SUM(CAST(GiaoDich.SoLuong AS INT)) AS TongSoLuong,
            RANK() OVER (PARTITION BY ChiNhanh.ID_ChiNhanh ORDER BY SUM(CAST(GiaoDich.SoLuong AS INT)) DESC) AS Rank
        FROM 
            ChiNhanh
        LEFT JOIN 
            GiaoDich ON ChiNhanh.ID_ChiNhanh = GiaoDich.ID_ChiNhanh
        LEFT JOIN 
            SanPham ON GiaoDich.ID_SP = SanPham.ID_SP
        GROUP BY 
            ChiNhanh.ID_ChiNhanh, 
            ChiNhanh.TenChiNhanh, 
            SanPham.ID_SP, 
            SanPham.Ten_SP
    )
    SELECT 
        ID_ChiNhanh, 
        TenChiNhanh, 
        ID_SP, 
        Ten_SP, 
        TongSoLuong
    FROM 
        BestSellers
    WHERE 
        Rank = 1;
END;
GO

-- Execute procedure
EXECUTE [dbo].sp_BestSeller;
