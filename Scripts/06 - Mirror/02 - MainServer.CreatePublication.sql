/**************************************************************************************************
Script name: 02 - MainServer.CreatePublication
Description: This script will create a publication from the main server
Author: CS
Date: 08/22/2016
Version: 1.0
IMPORTANT: The variable @publisher_password must to be fill with sa password
**************************************************************************************************/

use [ScreeningProject]
exec sp_replicationdboption @dbname = N'ScreeningProject', @optname = N'publish', @value = N'true'
GO
-- Adding transactional publication
use [ScreeningProject]
exec sp_addpublication @publication = N'ScreeningProjectPublication', @description = N'Transactional publication of database ''ScreeningProject'' from Publisher ''localhost''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'true', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'true', @allow_sync_tran = N'false', @autogen_sync_procs = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO

exec sp_addpublication_snapshot @publication = N'ScreeningProjectPublication', @frequency_type = 1, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 0, @publisher_login = N'sa', @publisher_password = N''

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'Address', @source_owner = N'dbo', @source_object = N'Address', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'Address', @destination_owner = N'dbo', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_dboAddress', @del_cmd = N'CALL sp_MSdel_dboAddress', @upd_cmd = N'SCALL sp_MSupd_dboAddress'
GO

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'Company', @source_owner = N'dbo', @source_object = N'Company', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'Company', @destination_owner = N'dbo', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_dboCompany', @del_cmd = N'CALL sp_MSdel_dboCompany', @upd_cmd = N'SCALL sp_MSupd_dboCompany'
GO

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'Contact', @source_owner = N'dbo', @source_object = N'Contact', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'Contact', @destination_owner = N'dbo', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_dboContact', @del_cmd = N'CALL sp_MSdel_dboContact', @upd_cmd = N'SCALL sp_MSupd_dboContact'
GO

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'ContactBalancer', @source_owner = N'dbo', @source_object = N'ContactBalancer', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'ContactBalancer', @destination_owner = N'dbo', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_dboContactBalancer', @del_cmd = N'CALL sp_MSdel_dboContactBalancer', @upd_cmd = N'SCALL sp_MSupd_dboContactBalancer'
GO

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'ContactType', @source_owner = N'dbo', @source_object = N'ContactType', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'ContactType', @destination_owner = N'dbo', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_dboContactType', @del_cmd = N'CALL sp_MSdel_dboContactType', @upd_cmd = N'SCALL sp_MSupd_dboContactType'
GO

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'Customer', @source_owner = N'dbo', @source_object = N'Customer', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'Customer', @destination_owner = N'dbo', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_dboCustomer', @del_cmd = N'CALL sp_MSdel_dboCustomer', @upd_cmd = N'SCALL sp_MSupd_dboCustomer'
GO

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'Order', @source_owner = N'dbo', @source_object = N'Order', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'Order', @destination_owner = N'dbo', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_dboOrder', @del_cmd = N'CALL sp_MSdel_dboOrder', @upd_cmd = N'SCALL sp_MSupd_dboOrder'
GO

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'Order_OrderItems', @source_owner = N'dbo', @source_object = N'Order_OrderItems', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'Order_OrderItems', @destination_owner = N'dbo', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_dboOrder_OrderItems', @del_cmd = N'CALL sp_MSdel_dboOrder_OrderItems', @upd_cmd = N'SCALL sp_MSupd_dboOrder_OrderItems'
GO

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'OrderItems', @source_owner = N'dbo', @source_object = N'OrderItems', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'OrderItems', @destination_owner = N'dbo', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_dboOrderItems', @del_cmd = N'CALL sp_MSdel_dboOrderItems', @upd_cmd = N'SCALL sp_MSupd_dboOrderItems'
GO

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'Product', @source_owner = N'dbo', @source_object = N'Product', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'Product', @destination_owner = N'dbo', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_dboProduct', @del_cmd = N'CALL sp_MSdel_dboProduct', @upd_cmd = N'SCALL sp_MSupd_dboProduct'
GO

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'ProductCompanyPrice', @source_owner = N'dbo', @source_object = N'ProductCompanyPrice', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'ProductCompanyPrice', @destination_owner = N'dbo', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_dboProductCompanyPrice', @del_cmd = N'CALL sp_MSdel_dboProductCompanyPrice', @upd_cmd = N'SCALL sp_MSupd_dboProductCompanyPrice'
GO

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'Subsidiarie', @source_owner = N'dbo', @source_object = N'Subsidiarie', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'Subsidiarie', @destination_owner = N'dbo', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_dboSubsidiarie', @del_cmd = N'CALL sp_MSdel_dboSubsidiarie', @upd_cmd = N'SCALL sp_MSupd_dboSubsidiarie'
GO

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'Supplier', @source_owner = N'dbo', @source_object = N'Supplier', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'Supplier', @destination_owner = N'dbo', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_dboSupplier', @del_cmd = N'CALL sp_MSdel_dboSupplier', @upd_cmd = N'SCALL sp_MSupd_dboSupplier'
GO

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'Supplier_Product', @source_owner = N'dbo', @source_object = N'Supplier_Product', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'Supplier_Product', @destination_owner = N'dbo', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_dboSupplier_Product', @del_cmd = N'CALL sp_MSdel_dboSupplier_Product', @upd_cmd = N'SCALL sp_MSupd_dboSupplier_Product'
GO

use [ScreeningProject]
exec sp_addarticle @publication = N'ScreeningProjectPublication', @article = N'InsertNewSubsidiarie', @source_owner = N'dbo', @source_object = N'InsertNewSubsidiarie', @type = N'proc schema only', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x0000000008000001, @destination_table = N'InsertNewSubsidiarie', @destination_owner = N'dbo'
GO