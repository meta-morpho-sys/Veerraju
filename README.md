This test project runs with PostgreSQL. You need to have this installed on your machine. 
The installation guide can be found at https://www.postgresql.org/download/

(What commands do you need to run to get postgresql up and running and working)

For simplicity, I named db = pre_jenkins_test and user = dumbo.
    
If you want to use your own names make sure you change them in run.sh, line 18.

1. Install PostgreSQL and 
    create a user
    (You can add code blocks with the triple funny apostrophe, left of Z key)
        ``` createuser my_user ```

     and a database

       ``` createdb my_db ```

2. Create the initial table. Run in CL:
    `psql pre_jenkins_test -U dumbo -f set_up_table.sql`

3. Configure your Jenkins with a Multi-configuration project. (Can you specify the location of Jenkins for whoever is following this? Or put the steps required to create the multi-configuration project e.g. menu bar > new project > click multi-configuration checkbox. Make the steps so someone with zero knowledge of any of this can follow along)


    a. Configure a COB date parameter ![Configure a COB date parameter](https://github.com/meta-morpho-sys/Veerraju/blob/master/images/date_parameter.png) (How exactly do you do this?) 
    
    b. Set git to `git@github.com:meta-morpho-sys/Veerraju.git` (On which field?)(Provide instructions that the files in this repo should be copied across to their own repo so as not to be reliant on an external repository)

    c. Configure matrix ![Configure matrix](https://github.com/meta-morpho-sys/Veerraju/blob/master/images/configure_matrix.png)
    (How exactly do you do this? What buttons to click etc.)

    d. Pass the parameters to the ./run.sh script that will execute the logic of generating sql files and running them against your db.
        ![Pass parameters](https://github.com/meta-morpho-sys/Veerraju/blob/master/images/pass_parameters_to_run_script.png)
        (Can you explain exactly what you mean by pass the parameters? How exactly do you do that in terms of button clicked etc.)
    


4. Run the job "Build with parameters" - pass the date, watch Jenkins jugling multiple builds and check your PostgreSQL server logs and see the table updated. (how do you do this "run the job" what to click etc.)

Have fuuun ;-)





