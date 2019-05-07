UPDATE ctl_batch_schedules
SET DISABLED = 'N'
WHERE work_station = 'WSOGL-1'
AND schedule IN
(-- 'THESE', -- comment 
'are', --another comment
'ABCS', --third comment
'projectS' --fourth comment
);
