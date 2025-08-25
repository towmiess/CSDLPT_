use master 
exec sp_replicationdboption @dbname = N'QLSP', @optname = N'publish', @value = 
N'true' 
GO -- Enabling the replication database 
use master 
exec sp_replicationdboption @dbname = N'QLSP', @optname = N'merge publish', 
@value = N'true' 
GO
-- Adding the merge publication
USE [QLSP]
EXEC sp_addmergepublication 
    @publication = N'QLSP_Publication', 
    @description = N'Merge publication of database ''QLSP'' from Publisher ''TOWMIESS\CSDLPT_G1''.', 
    @sync_mode = N'native', 
    @retention = 14, 
    @allow_push = N'true', 
    @allow_pull = N'true', 
    @allow_anonymous = N'true', 
    @enabled_for_internet = N'false', 
    @snapshot_in_defaultfolder = N'true', 
    @compress_snapshot = N'false', 
    @ftp_port = 21, 
    @ftp_subdirectory = N'ftp', 
    @ftp_login = N'anonymous', 
    @allow_subscription_copy = N'false', 
    @add_to_active_directory = N'false', 
    @dynamic_filters = N'false', 
    @conflict_retention = 14, 
    @keep_partition_changes = N'false', 
    @allow_synctoalternate = N'false', 
    @max_concurrent_merge = 0, 
    @max_concurrent_dynamic_snapshots = 0, 
    @use_partition_groups = N'true', 
    @publication_compatibility_level = N'100RTM', 
    @replicate_ddl = 1, 
    @allow_subscriber_initiated_snapshot = N'false', 
    @allow_web_synchronization = N'false', 
    @allow_partition_realignment = N'true', 
    @retention_period_unit = N'days', 
    @conflict_logging = N'both', 
    @automatic_reinitialization_policy = 0;
GO

EXEC sp_addpublication_snapshot 
    @publication = N'QLSP_DN', 
    @frequency_type = 4, 
    @frequency_interval = 14, 
    @frequency_relative_interval = 1, 
    @frequency_recurrence_factor = 0, 
    @frequency_subday = 1, 
    @frequency_subday_interval = 5, 
    @active_start_time_of_day = 500, 
    @active_end_time_of_day = 235959, 
    @active_start_date = 0, 
    @active_end_date = 0, 
    @job_login = NULL, 
    @job_password = NULL, 
    @publisher_security_mode = 0, 
    @publisher_login = N'sa', 
    @publisher_password = N'';
GO

EXEC sp_grant_publication_access @publication = N'QLSP_DN', @login = N'sa';
GO
EXEC sp_grant_publication_access @publication = N'QLSP_DN', @login = N'DESKTOP-63U6OB2';
GO
EXEC sp_grant_publication_access @publication = N'QLSP_DN', @login = N'NT SERVICE\Winmgmt';
GO
EXEC sp_grant_publication_access @publication = N'QLSP_DN', @login = N'NT SERVICE\SQLAgent$CSDLPT_G1';
GO
EXEC sp_grant_publication_access @publication = N'QLSP_DN', @login = N'NT SERVICE\SQLWriter';
GO
EXEC sp_grant_publication_access @publication = N'QLSP_DN', @login = N'NT SERVICE\MSSQL$CSDLPT_G1';
GO
EXEC sp_grant_publication_access @publication = N'QLSP_DN', @login = N'distributor_admin';
GO

-- Adding the merge articles
USE [QLSP]
EXEC sp_addmergearticle 
    @publication = N'QLSP_Publication', 
    @article = N'KhachHang', 
    @source_owner = N'dbo', 
    @source_object = N'KhachHang', 
    @type = N'table', 
    @description = N'', 
    @creation_script = N'', 
    @pre_creation_cmd = N'drop', 
    @schema_option = 0x000000010C034FD1, 
    @identityrangemanagementoption = N'none';
GO

EXEC sp_addmergearticle 
    @publication = N'QLSP_Publication', 
    @article = N'NhaCungCap', 
    @source_owner = N'dbo', 
    @source_object = N'NhaCungCap', 
    @type = N'table', 
    @description = N'', 
    @creation_script = N'', 
    @pre_creation_cmd = N'drop', 
    @schema_option = 0x000000010C034FD1, 
    @identityrangemanagementoption = N'none';
GO

EXEC sp_addmergearticle 
    @publication = N'QLSP_Publication', 
    @article = N'SanPham', 
    @source_owner = N'dbo', 
    @source_object = N'SanPham', 
    @type = N'table', 
    @description = N'', 
    @creation_script = N'', 
    @pre_creation_cmd = N'drop', 
    @schema_option = 0x000000010C034FD1, 
    @identityrangemanagementoption = N'none';
GO

EXEC sp_addmergearticle 
    @publication = N'QLSP_Publication', 
    @article = N'ChiNhanh', 
    @source_owner = N'dbo', 
    @source_object = N'ChiNhanh', 
    @type = N'table', 
    @description = N'', 
    @creation_script = N'', 
    @pre_creation_cmd = N'drop', 
    @schema_option = 0x000000010C034FD1, 
    @identityrangemanagementoption = N'none';
GO

EXEC sp_addmergearticle 
    @publication = N'QLSP_Publication', 
    @article = N'NhanVien', 
    @source_owner = N'dbo', 
    @source_object = N'NhanVien', 
    @type = N'table', 
    @description = N'', 
    @creation_script = N'', 
    @pre_creation_cmd = N'drop', 
    @schema_option = 0x000000010C034FD1, 
    @identityrangemanagementoption = N'none';
GO

EXEC sp_addmergearticle 
    @publication = N'QLSP_Publication', 
    @article = N'TruSoChinh', 
    @source_owner = N'dbo', 
    @source_object = N'TruSoChinh', 
    @type = N'table', 
    @description = N'', 
    @creation_script = N'', 
    @pre_creation_cmd = N'drop', 
    @schema_option = 0x000000010C034FD1, 
    @identityrangemanagementoption = N'none';
GO

EXEC sp_addmergearticle 
    @publication = N'QLSP_Publication', 
    @article = N'GiaoDich', 
    @source_owner = N'dbo', 
    @source_object = N'GiaoDich', 
    @type = N'table', 
    @description = N'', 
    @creation_script = N'', 
    @pre_creation_cmd = N'drop', 
    @schema_option = 0x000000010C034FD1, 
    @identityrangemanagementoption = N'none';
GO
