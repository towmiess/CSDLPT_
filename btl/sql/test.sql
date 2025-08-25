exec sp_replicationdboption @dbname = N'QLSP', @optname = N'publish', @value = 
N'true' 
GO -- Enabling the replication database 
use master 
exec sp_replicationdboption @dbname = N'QLSP', @optname = N'merge publish', 
@value = N'true' 
GO -- Adding the merge publication 
use [QLSP] 
exec sp_addmergepublication @publication = N'TSDN', @description = N'Merge 
publication of database ''QLSP'' from Publisher ''TOWMIESS\CSDLPT_G1''.', 
@sync_mode = N'native', @retention = 14, @allow_push = N'true', @allow_pull = N'true', 
@allow_anonymous = N'true', @enabled_for_internet = N'false', 
@snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, 
@ftp_subdirectory = N'ftp', @ftp_login = N'anonymous', @allow_subscription_copy = 
Page 114 
NHÓM 2 
N'false', @add_to_active_directory = N'false', @dynamic_filters = N'false', 
@conflict_retention = 14, @keep_partition_changes = N'false', @allow_synctoalternate = 
N'false', @max_concurrent_merge = 0, @max_concurrent_dynamic_snapshots = 0, 
@use_partition_groups = N'true', @publication_compatibility_level = N'100RTM', 
@replicate_ddl = 1, @allow_subscriber_initiated_snapshot = N'false', 
@allow_web_synchronization = N'false', @allow_partition_realignment = N'true', 
@retention_period_unit = N'days', @conflict_logging = N'both', 
@automatic_reinitialization_policy = 0 
GO 
exec sp_addpublication_snapshot @publication = N'TSDN', @frequency_type = 4, 
@frequency_interval = 14, @frequency_relative_interval = 1, 
@frequency_recurrence_factor = 0, @frequency_subday = 1, 
@frequency_subday_interval = 5, @active_start_time_of_day = 500, 
@active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, 
@job_login = null, @job_password = null, @publisher_security_mode = 0, 
@publisher_login = N'sa', @publisher_password = N'' 
exec sp_grant_publication_access @publication = N'TSDN', @login = N'sa' 
GO 
exec sp_grant_publication_access @publication = N'TSDN', @login = N'DESKTOP-63U6OB2\SQLSVCUATU' 
GO 
exec sp_grant_publication_access @publication = N'TSDN', @login = N'NT 
SERVICE\Winmgmt' 
GO 
exec sp_grant_publication_access @publication = N'TSDN', @login = N'NT 
SERVICE\SQLAgent$CSDLPT_G1' 
GO 
exec sp_grant_publication_access @publication = N'TSDN', @login = N'NT 
SERVICE\SQLWriter' 
GO 
exec sp_grant_publication_access @publication = N'TSDN', @login = N'NT 
Service\MSSQL$CSDLPT_G1' 
GO 
exec sp_grant_publication_access @publication = N'TSDN', @login = 
N'distributor_admin' 
GO -- Adding the merge articles 
use [QLSP] 
exec sp_addmergearticle @publication = N'TSDN', @article = N'headquarter', 
@source_owner = N'dbo', @source_object = N'headquarter', @type = N'table', 
@description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', 
@schema_option = 0x000000010C034FD1, @identityrangemanagementoption = N'none', 
Page 115 
NHÓM 2 
@destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = 
N'false', @subset_filterclause = N'[ID] =''TSDN''', @vertical_partition = N'false', 
@verify_resolver_signature = 1, @allow_interactive_resolver = N'false', 
@fast_multicol_updateproc = N'true', @check_permissions = 0, 
@subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = 
N'false', @stream_blob_columns = N'true', @partition_options = 0 
GO 
use [QLSP] 
exec sp_addmergearticle @publication = N'TSDN', @article = N'department', 
@source_owner = N'dbo', @source_object = N'department', @type = N'table', 
@description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', 
@schema_option = 0x000000010C034FD1, @identityrangemanagementoption = N'none', 
@destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = 
N'false', @subset_filterclause = N'', @vertical_partition = N'false', 
@verify_resolver_signature = 1, @allow_interactive_resolver = N'false', 
@fast_multicol_updateproc = N'true', @check_permissions = 0, 
@subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = 
N'false', @stream_blob_columns = N'true', @partition_options = 0 
GO 
use [QLSP] 
exec sp_addmergearticle @publication = N'TSDN', @article = N'student', 
@source_owner = N'dbo', @source_object = N'student', @type = N'table', @description = 
N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 
0x000000010C034FD1, @identityrangemanagementoption = N'none', 
@destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = 
N'false', @subset_filterclause = N'', @vertical_partition = N'false', 
@verify_resolver_signature = 1, @allow_interactive_resolver = N'false', 
@fast_multicol_updateproc = N'true', @check_permissions = 0, 
@subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = 
N'false', @stream_blob_columns = N'true', @partition_options = 0 
GO 
use [QLSP] 
exec sp_addmergearticle @publication = N'TSDN', @article = N'teacher', 
@source_owner = N'dbo', @source_object = N'teacher', @type = N'table', @description = 
N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 
0x000000010C034FD1, @identityrangemanagementoption = N'none', 
@destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = 
N'false', @subset_filterclause = N'', @vertical_partition = N'false', 
@verify_resolver_signature = 1, @allow_interactive_resolver = N'false', 
@fast_multicol_updateproc = N'true', @check_permissions = 0, 
@subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = 
N'false', @stream_blob_columns = N'true', @partition_options = 0 
GO 
use [QLSP] 
Page 116 
NHÓM 2 
exec sp_addmergearticle @publication = N'TSDN', @article = N'class', @source_owner = 
N'dbo', @source_object = N'class', @type = N'table', @description = N'', @creation_script 
= N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000010C034FD1, 
@identityrangemanagementoption = N'none', @destination_owner = N'dbo', 
@force_reinit_subscription = 1, @column_tracking = N'false', @subset_filterclause = N'', 
@vertical_partition = N'false', @verify_resolver_signature = 1, 
@allow_interactive_resolver = N'false', @fast_multicol_updateproc = N'true', 
@check_permissions = 0, @subscriber_upload_options = 0, @delete_tracking = N'true', 
@compensate_for_errors = N'false', @stream_blob_columns = N'true', @partition_options 
= 0 
GO 
use [QLSP] 
exec sp_addmergearticle @publication = N'TSDN', @article = N'point', @source_owner 
= N'dbo', @source_object = N'point', @type = N'table', @description = N'', 
@creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 
0x000000010C034FD1, @identityrangemanagementoption = N'none', 
@destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = 
N'false', @subset_filterclause = N'', @vertical_partition = N'false', 
@verify_resolver_signature = 1, @allow_interactive_resolver = N'false', 
@fast_multicol_updateproc = N'true', @check_permissions = 0, 
@subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = 
N'false', @stream_blob_columns = N'true', @partition_options = 0 
GO -- Adding the merge article join filters 
use [QLSP] 
exec sp_addmergefilter @publication = N'TSDN', @article = N'point', @filtername = 
N'point_class', @join_articlename = N'class', @join_filterclause = N'[class].[ID] = 
[point].[ID_class]', @join_unique_key = 1, @filter_type = 1, @force_invalidate_snapshot 
= 1, @force_reinit_subscription = 1 
GO 
use [QLSP] 
exec sp_addmergefilter @publication = N'TSDN', @article = N'student', @filtername = 
N'student_department', @join_articlename = N'department', @join_filterclause = 
N'[department].[ID] = [student].[ID_department]', @join_unique_key = 1, @filter_type = 
1, @force_invalidate_snapshot = 1, @force_reinit_subscription = 1 
GO 
use [QLSP] 
exec sp_addmergefilter @publication = N'TSDN', @article = N'teacher', @filtername = 
N'teacher_department', @join_articlename = N'department', @join_filterclause = 
N'[department].[ID] = [teacher].[ID_department]', @join_unique_key = 1, @filter_type = 
1, @force_invalidate_snapshot = 1, @force_reinit_subscription = 1 
GO 
use [QLSP] 
Page 117 
NHÓM 2 
exec sp_addmergefilter @publication = N'TSDN', @article = N'department', @filtername 
= N'department_headquarter', @join_articlename = N'headquarter', @join_filterclause = 
N'[headquarter].[ID] = [department].[ID_headquarter]', @join_unique_key = 1, 
@filter_type = 1, @force_invalidate_snapshot = 1, @force_reinit_subscription = 1 
GO 
use [QLSP] 
exec sp_addmergefilter @publication = N'TSDN', @article = N'class', @filtername = 
N'class_teacher', @join_articlename = N'teacher', @join_filterclause = N'[teacher].[ID] = 
[class].[ID_teacher]', @join_unique_key = 1, @filter_type = 1, 
@force_invalidate_snapshot = 1, @force_reinit_subscription = 1 
GO