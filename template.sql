UPDATE ctl_batch_schedules
SET DISABLED = 'N'
WHERE work_station = '${work_station}'
AND schedule IN
('${env_project_names}');
