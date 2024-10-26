# SQL-Cookbook-2nd-edition

Sample data for SQL Cookbook 2nd edition
Book: *SQL Cookbook, 2nd Edition* by Anthony Molinaro and Robert de Graaf

![SQL Cookbook](https://learning.oreilly.com/library/cover/9781492077435/250w/)

This repository contains sample data files for creating a database. This database will help you learn SQL from the SQL Cookbook. The provided file is for MySQL and PostgreSQL databases.

## MySQL
Create database:

```bash
$ mysql -u<your_mysql_user> -p<your_password_for_mysql>
```

```sql
mysql> CREATE DATABASE sql_cookbook;
mysql> EXIT;
```

Load data into the database:

```bash
$ mysql -u <mysql_user> -p < mysql_data_example.sql
```

You're ready!

## Docker PostgreSQL

To quickly set up a PostgreSQL database using Docker and load data from the `postgres_data_example.sql` dump, follow these instructions:

### Step 1: Run PostgreSQL in Docker

Start a PostgreSQL container, specifying the database name and user:

```bash
docker run --name sql_cookbook_db -e POSTGRES_USER=<your_postgres_user> -e POSTGRES_PASSWORD=<your_password_for_postgres> -e POSTGRES_DB=sql_cookbook -p 5432:5432 -d postgres
```

### Step 2: Load Data into the Database

Once the container is running, copy the data dump file into the container and import it into PostgreSQL.

1. Copy the `postgres_data_example.sql` file into the container:

   ```bash
   docker cp postgres_data_example.sql sql_cookbook_db:/postgres_data_example.sql
   ```

2. Execute the following command to load data from the dump file:

   ```bash
   docker exec -i sql_cookbook_db psql -U <your_postgres_user> -d sql_cookbook -f /postgres_data_example.sql
   ```

Now the `sql_cookbook` database is ready with the sample data.

### Step 3: Connect to the Database Using `psql`

To connect to the `sql_cookbook` database inside the Docker container using `psql`:

```bash
docker exec -it sql_cookbook_db psql -U <your_postgres_user> -d sql_cookbook
```

This command opens the `psql` shell for the `sql_cookbook` database. Use `\q` to exit the `psql` session.

**Example with user**: `postgres`, **password**: `password`

```bash
docker run --name sql_cookbook_db -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=password -e POSTGRES_DB=sql_cookbook -p 5432:5432 -d postgres
docker cp postgres_data_example.sql sql_cookbook_db:/postgres_data_example.sql
docker exec -i sql_cookbook_db psql -U postgres -d sql_cookbook -f /postgres_data_example.sql
docker exec -it sql_cookbook_db psql -U postgres -d sql_cookbook
```
