# Docker Liquibase
[[PT]](docs/pt/readme.md)

Docker image to runs the source controls database liquibase.

> [More about liquibase in oficial site](https://www.liquibase.org/)

## How to use
To do the connection to a database you need input some environment variables:

* __LIQUIBASE_URL__ : Database url (Using the JDBC sintaxe)
* __LIQUIBASE_USERNAME__: Databse user
* __LOQUIBASE_PASSWORD__: Database password
* __LIQUIBASE_CHANGELOG_FILE__: The changelog file name

And to the liquibase can access the informed file you need to mount the file folder in `/changelogs` inside image.

And now you need inform how liquibase action you want run. `update`, `diff`, etc;

### Use example

```console
  docker run --rm \
    -e LIQUIBASE_URL jdbc:mysql://url/schema \
    -e LIQUIBASE USERNAME username \
    -e LIQUIBASE_PASSWORD password \
    -e LIQUIBASE_CHANGELOG_FILE changelog.xml \
    guilhermemar/liquibase \
    update
```

## Supported databases
The liquibase recognizes what database you want connect by inserted url, which follows the JDBC sintaxe.

Supported databases and your sintaxe
* __MySQL:__   `jdbc:mysql://url-da-base/schema`

If you need to access another database, [see how you can contribute](docs/en/how-contribute.md) adding support.
