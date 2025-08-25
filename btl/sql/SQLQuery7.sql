USE QLSP;

BEGIN TRY
	BEGIN TRAN
		INSERT INTO NhaCungCap (ID_NCC, Ten_NCC, Email, SDT, DiaChi) VALUES
		('NCC116', 'Apple_VN', 'appleVN@gmail.com', '0123456789', '789 Duong Tran Hung Dao, Quan 7, Ho Chi Minh');

		INSERT INTO [QLSP].[DBO].[KhachHang] 
		(ID_KH, TenKH, SDT, Email, GioiTinh, DiaChi) VALUES
		('KH0181', 'Nguyen Duong', '0365856789', 'nguyenduong@gmail.com', 'Nam', '123 Duong Tran Hung Dao, Quan Hoan Kiem, Ha Noi');

		 -- Kết thúc transaction nếu không có lỗi  
		 COMMIT TRANSACTION;  
		 PRINT 'Transaction committed successfully.';  
END TRY

BEGIN CATCH
	-- Nếu có lỗi, thực hiện rollback 
	ROLLBACK TRANSACTION;   
    DECLARE @ErrorMessage NVARCHAR(4000), @ErrorSeverity INT, @ErrorState INT;  
    SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();  
    -- Hiển thị thông báo lỗi  
	RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState); 
END CATCH