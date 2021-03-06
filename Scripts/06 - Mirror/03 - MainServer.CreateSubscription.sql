/**************************************************************************************************
Script name: 03 - MainServer.CreateSubscription
Description: This script will create a subscription from the main publication to subscriber instance
Author: CS
Date: 08/22/2016
Version: 1.0
IMPORTANT: 
	The variable @subscriber_password must to be fill with mirror server sa password
	The variable @subscriber must to be fill with <server>/<instance> of subscriber
**************************************************************************************************/
-----------------BEGIN: Script to be run at Publisher
use [ScreeningProject]
exec sp_addsubscription @publication = N'ScreeningProjectPublication', @subscriber = N'localhost\Mirror', @destination_db = N'ScreeningProject', @subscription_type = N'Push', @sync_type = N'automatic', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'ScreeningProjectPublication', @subscriber = N'localhost\Mirror', @subscriber_db = N'ScreeningProject', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = N'', @frequency_type = 64, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 20160822, @active_end_date = 99991231, @enabled_for_syncmgr = N'False', @dts_package_location = N'Distributor'
GO
exec sp_startpublication_snapshot @publication = 'ScreeningProjectPublication';
-----------------END: Script to be run at Publisher