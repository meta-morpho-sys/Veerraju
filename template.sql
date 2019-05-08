-- UPDATE ctl_batch_schedules SET disabled = 'Y';

UPDATE ctl_batch_schedules
SET disabled = 'N'
WHERE work_station = '${work_station}'
AND schedule IN
(${env_project_names}
);

DO $$
DECLARE
    P_COB_DATE  VARCHAR(200) := '${p_cob_date}';
END $$;