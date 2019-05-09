This test project runs with PostgreSQL. You need to have is installed on your machine.

1. Once you install PostgreSQL and create your user and database 
    For simplicity (I named db = pre_jenkins_test and user = dumbo ;-) )
    If you want to use your own names make sure you change them in run.sh, line 18

2. Create Table
    `psql pre_jenkins_test -U dumbo -f set_up_table.sql`

3. Configure your Jenkins with a Multi-configuration project.

    a. ![Configure a COB date parameter](https://github.com/meta-morpho-sys/Veerraju/blob/master/images/date_parameter.png)
    
    b. Set git to `git@github.com:meta-morpho-sys/Veerraju.git`
    c. ![Configure matrix](https://github.com/meta-morpho-sys/Veerraju/blob/master/images/configure_matrix.png)
    D. Pass the parameters to the ./run.sh script that will execute the logic of generating sql files and running them aginst your db.
        ![Pass parameters](https://github.com/meta-morpho-sys/Veerraju/blob/master/images/pass_parameters_to_run_script.png)
    


4. Run the job "Build with parameters" - pass the date, watch Jenkins jugling multiple builds and check your PostgreSQL server logs and see the table updated.





