DROP TABLE IF EXISTS ctl_batch_schedules;

CREATE TABLE ctl_batch_schedules(
 user_id serial PRIMARY KEY,
 work_station VARCHAR (50),
 schedule VARCHAR (50),
 disabled VARCHAR(50)
);

INSERT INTO ctl_batch_schedules (work_station, schedule, disabled)
VALUES ('WSOGL-1', unnest(ARRAY['NEW_TAPOC-2',
                    'These',
                    'are',
                    'SUMMIT',
                    'projectS']), 'Y');

INSERT INTO ctl_batch_schedules (work_station, schedule, disabled)
VALUES ('WSOGL-2', unnest(ARRAY['TAPOC-2',
                    'These',
                    'are',
                    'SUMMIT',
                    'project']), 'Y');

