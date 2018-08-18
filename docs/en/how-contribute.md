# How contribute
[[PT]](../pt/como-contribuir.md)

This project has a very simple organization, next what is necessary to know to start contributing.

## Liquibase
In the project root has a folder called `liquibase`, in it are de liquibase files. There's only the needed files to run liquibase, being removed unnecessary development and readmes files.

### The file liqui
Inside this foldees there's a file called `liqui`. This file was be created to can run liquibase using environment variables.

## Adding support to a new database
The liquibase uses `JDBC`library to connecto to a database. To add support a new database just need inset the `.jar` file corresponding inside folder `liquibse/lib`.
