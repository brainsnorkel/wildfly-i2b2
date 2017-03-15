create tablespace demo datafile '/home/parallels/dbf/demo.dbf' size 32m autoextend on next 32m maxsize 2048m extent management local;

create user i2b2metadata identified by demouser default tablespace demo temporary tablespace "TEMP";

alter user i2b2metadata quota unlimited on demo;
grant dba to i2b2metadata;

create user i2b2demodata identified by demouser default tablespace demo temporary tablespace "TEMP";
alter user i2b2demodata quota unlimited on demo;
grant dba to i2b2demodata;

create user i2b2hive identified by demouser default tablespace demo temporary tablespace "TEMP";
alter user i2b2hive quota unlimited on demo;
grant dba to i2b2hive;

create user i2b2imdata identified by demouser default tablespace demo temporary tablespace "TEMP";
alter user i2b2imdata quota unlimited on demo;
grant dba to i2b2imdata;

create user i2b2pm identified by demouser default tablespace demo temporary tablespace "TEMP";
alter user i2b2pm quota unlimited on demo;
grant dba to i2b2pm;

create user i2b2workdata identified by demouser default tablespace demo temporary tablespace "TEMP";
alter user i2b2workdata quota unlimited on demo;
grant dba to i2b2workdata;


