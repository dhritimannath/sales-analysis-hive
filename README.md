
## **Mysql setup** 

### User creation ( if required ) 
```	 
mysql> CREATE USER 'someusername'@'localhost' IDENTIFIED BY 'somepassword';
 
mysql> GRANT ALL PRIVILEGES ON * . * TO 'someusername'@'localhost';

mysql> FLUSH privileges;
```
## **Mysql**

### *Database and table setup*

Login into mysql shell

* Replace the sql script file location with the desired one and run the following command
```
mysql> source /location/to/sql/script/file.sql;
```
Import data into the table created from the above sql command


* Replace the file path location ith the desired file location and run the following command
```
$ mysqlimport --ignore-lines=1 \
              --fields-terminated-by=, \
              --local -u user_name \
              -p black_friday \
              file_path_location.csv
```
Format specific fields for data type correction 

* Replace the sql script file location with the desired one run the following command
```
mysql> source /location/to/sql/format_script/format_file.sql;
```

## **Hive Setup**

### Create hive database

```
hive> create database black_friday;
```

## **Sqoop** 

### Sqoop Job  

* Run the following command to create the job : 

```
$ sqoop-job --create import_sales_data_to_hive \
            -- import \
            --connect "jdbc:mysql://quickstart.cloudera/black_friday" \
            --table black_friday \
            --hive-home /user/hive/warehouse/black_friday.db \
            --hive-import \
            --hive-overwrite \
            --create-hive-table \
            --hive-table black_friday.black_friday 
```

* Check if the job is created or not by the folowing command :

```
$ sqoop-job --list
```
You should be able to see the job created above in the available job output list named ***import_sales_data_to_hive***. 

* Execute the job : 

```
$ sqoop-job --exec -- --username db_user_name -p db_user_password
```

Replace ***db_user_name*** and ***db_user_password*** with your database usename and password.

After succesful completion of the job execution you are good to go.

