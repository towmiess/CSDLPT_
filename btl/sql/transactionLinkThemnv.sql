SET XACT_ABORT ON
BEGIN TRY
    BEGIN TRAN
        DECLARE @ID_NV varchar(50) = 'NV523' -- Gán giá trị mẫu
        
        -- Xóa nhân viên khỏi bảng
        DELETE FROM [CUONG].[QLSP_ND].[dbo].[NhanVien] WHERE ID_NV = @ID_NV

        PRINT(N'Xóa nhân viên thành công!')
        
        COMMIT TRAN
END TRY
BEGIN CATCH
    PRINT(N'Xóa nhân viên thất bại!')
    RAISERROR(N'Có lỗi xảy ra trong quá trình xóa nhân viên!', 16, 1)
    ROLLBACK TRAN
END CATCH
