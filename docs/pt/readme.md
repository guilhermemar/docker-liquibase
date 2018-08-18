# Docker Liquibase
[[EN]](../../readme.md)

Imagem docker para rodar o sistema de atualização de base de dados liquibase.

> [Mais sobre liquibase no site oficial](https://www.liquibase.org/)

## Como usar
Para fazer a conexão com o banco de dados você deve passar os dados por variáveis de ambiente.

* __LIQUIBASE_URL__ : Endereço do banco (usando a sintaxe do jdbc)
* __LIQUIBASE_USERNAME__: Usuário do banco
* __LOQUIBASE_PASSWORD__: Senha do banco
* __LIQUIBASE_CHANGELOG_FILE__: O arquivo de changelog

E para o liquibase acessar o arquivo informado, é preciso montar a pasta onde ele se encontra em `/changelogs` na imagem.

E por fim informe a ação que você deseja fazer conforme a documenteção do liquibase

### Exemplo de uso

```console
  docker run --rm \
    -e LIQUIBASE_URL jdbc:mysql://url/schema \
    -e LIQUIBASE USERNAME username \
    -e LIQUIBASE_PASSWORD password \
    -e LIQUIBASE_CHANGELOG_FILE changelog.xml \
    guilhermemar/liquibase \
    update
```

## Bases suportadas
O liquibase reconhece qual base de dados se deseja usar pela url informada, que segue o padrão jdbc.

Veja quais bases essa imagem já suporta e um exemplo de url
* __MySQL:__   `jdbc:mysql://url-da-base/schema`

Caso precise acessar uma base que não está na lista, [Veja como contribuir](como-contribuir.md) adicionando suporte.
