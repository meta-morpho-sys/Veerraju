This test project runs ion PostgreSQL

Run sql commands contained in a file by using psql

`psql your_awesome_db -U your_awesome_user --set=work_station='some_name' --set=env_project_names='project_names.txt' -f template.sql -a`

Example
`psql pre_jenkins_test -U dumbo --set=work_station='WSOGL-1' --set=env_project_names='summ_projects_var.txt' -f template.sql -a`

