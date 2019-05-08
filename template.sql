-- UPDATE ctl_batch_schedules SET disabled = 'Y';

UPDATE ctl_batch_schedules
SET disabled = 'N'
WHERE work_station = '${work_station}'
AND schedule IN
(${env_project_names}
);

DO $$ 
DECLARE
    P_COB_DATE  VARCHAR2(200) := '${p_cob_date}';
BEGIN
    RAISE NOTICE 'Date Inputted by Veerraju is: %', P_COB_DATE;
END $$:


DO $$ 
DECLARE
   counter    INTEGER := 1;
   first_name VARCHAR(50) := 'John';
   last_name  VARCHAR(50) := 'Doe';
   payment    NUMERIC(11,2) := 20.5;
BEGIN 
   RAISE NOTICE '% % % has been paid % USD', counter, first_name, last_name, payment;
END $$;