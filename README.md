# SQL-Cookbook-2nd-edition
Example data for SQL Cookbook 2nd 

Book SQL Cookbook 2nd edtion by Anthony Molinaro and Robert de Graaf

![SQL Cookbook](https://learning.oreilly.com/library/cover/9781492077435/250w/)

This repository contains a file with data example to create a database. This database will help you in learning SQL cookbooks.
File for mysql database.

Create database
```
$ mysql -u<your_mysql_user> -p<your_password_for_mysql>
.....
.....
mysql> create database sql_cookbook;
mysql> exit
```

Load data to database 

```
$ mysql -u <mysql_user> -p  < mysql_data_example.sql
```
You ready