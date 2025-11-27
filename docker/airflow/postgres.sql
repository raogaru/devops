create database airflow;
create user airflow with password 'airflow' ;
alter user airflow Superuser;
grant all privileges on database airflow to airflow;

