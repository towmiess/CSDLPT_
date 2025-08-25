SET XACT_ABORT ON
BEGIN TRY
    BEGIN TRAN
        DECLARE @ID_NV varchar(50) = 'NV532', -- Gán giá trị mẫu
                @ChucVu varchar(100) = 'Quan lí chi nhanh ' -- Gán địa chỉ mới
        
        -- Cập nhật địa chỉ mới cho nhân viên
        UPDATE [CUONG].[QLSP_ND].[dbo].[NhanVien]
        SET ChucVu = @ChucVu
        WHERE ID_NV = @ID_NV

        PRINT(N'Cập nhật chức vụ thành công!')
        
        COMMIT TRAN
END TRY
BEGIN CATCH
    PRINT(N'Cập nhật chức vụ  thất bại!')
    RAISERROR(N'Có lỗi xảy ra trong quá trình cập nhật chức vụ!', 16, 1)
    ROLLBACK TRAN
END CATCH
