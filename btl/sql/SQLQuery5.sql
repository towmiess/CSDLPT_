SET XACT_ABORT ON
BEGIN TRY
    BEGIN TRAN
        DECLARE @ID_NCC varchar(50) = 'NCC001236', -- Gán giá trị mẫu
                @TenNCC varchar(100) = 'Cong ty ABC',
                @Email varchar(50) = 'contact@abc.com',
                @SDT varchar(20) = '0123456789',
                @DiaChi varchar(100) = 'New York'
        
        -- Thêm mới nhà cung cấp
        INSERT INTO [LINK_SERVER_TUAN].[QLSP_DN].[dbo].[NhaCungCap] (ID_NCC, TenNCC, Email, SDT, DiaChi)
        VALUES (@ID_NCC, @TenNCC, @Email, @SDT, @DiaChi)

        PRINT(N'Thêm nhà cung cấp thành công!')
        
        COMMIT TRAN
END TRY
BEGIN CATCH
    PRINT(N'Thêm nhà cung cấp thất bại!')
    RAISERROR(N'Có lỗi xảy ra trong quá trình thêm nhà cung cấp!', 16, 1)
    ROLLBACK TRAN
END CATCH
