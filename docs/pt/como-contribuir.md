# Como contribuir
[[EN]](../en/how-contribute.md)

A organização do projeto é muito simples, a seguir o que é preciso saber para começar a contribuir.

## Liquibase
Na raiz do projeto existe uma pasta chamada `liquibase`, nela estão os arquivos do liquibase. Optei por telos no projeto para poder ter somente os arquivos realmente necessários para funcionar, removendo arquivos desnecessários de desenvolvimento.

### O arquivo liqui
Dentro dessa pasta se encontra um arquivo chamado `liqui` esse arquivo foi criado para rodar o liquibase utilizando as variáveis de ambiente informados no momento de execução da imagem.

## Adicionando suporte a um novo banco de dados
O liquibase utiliza-se de bibliotecas `JDBC` para se conectar a um banco de dados, para então para adicionar suporte a um novo banco basta inserir o arquivo `.jar` correspondente dentro da pasta `liquibse/lib`.
