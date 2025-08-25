SET XACT_ABORT ON
BEGIN TRY
    BEGIN TRAN
        DECLARE @ID_NV varchar(50), @TenNV varchar(50), @ChucVu varchar(50), @NgaySinh varchar(50),
                @GioiTinh nvarchar(50), @ID_ChiNhanh nvarchar(50)
        
        -- Lấy thông tin nhân viên cần chuyển
        SELECT @ID_NV = ID_NV, @TenNV = TenNV, @GioiTinh = GioiTinh, 
               @NgaySinh = NgaySinh, @ChucVu = ChucVu, @ID_ChiNhanh = ID_ChiNhanh
        FROM [dbo].[NhanVien] WHERE [ID_NV] = 'NV007'
        
        -- Chuyển nhân viên sang chi nhánh mới
        INSERT INTO [CUONG].[QLSP_ND].[dbo].[NhanVien] (ID_NV, TenNV, GioiTinh, NgaySinh, ChucVu, ID_ChiNhanh)
        VALUES (@ID_NV, @TenNV, @GioiTinh, @NgaySinh, @ChucVu, @ID_ChiNhanh)

        -- Xóa nhân viên khỏi bảng hiện tại
        DELETE FROM [dbo].[NhanVien] WHERE [ID_NV] = @ID_NV

        PRINT(N'Chuyển chi nhánh cho nhân viên thành công!')
        
        COMMIT TRAN
END TRY
BEGIN CATCH
    PRINT(N'Chuyển chi nhánh cho nhân viên thất bại!')
    RAISERROR(N'Không tồn tại nhân viên cần chuyển!', 16, 1)
    ROLLBACK TRAN
END CATCH
