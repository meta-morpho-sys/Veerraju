This test project runs in PostgreSQL

Run sql commands contained in a file by using psql

1. With envsubst
```
export work_station='WSOGL-1'
export env_project_names=`cat summ_projects_var.txt`
envsubst < template.sql > result.sql
psql pre_jenkins_test -U dumbo -f result.sql -e
```

or

2. Using the PostgreSQL built-in in methods. Caution, though! This needs more tweaking before making it work properly.
```
psql your_awesome_db -U your_awesome_user --set=work_station='some_name' --set=env_project_names='project_names.txt' -f template_psql.sql
```

Example:
```
psql pre_jenkins_test -U dumbo --set=work_station='WSOGL-1'  --set=env_project_names=`cat summ_projects_var.txt` -f template_psql.sql -e
```

