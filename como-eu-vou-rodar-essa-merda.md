# Backend
Lembrando que eu fiz o nosso banco de dados em **PostgreSQL** e tudo no terminal, é bom que vocês tenham baixado a interface de terminal do PostgreSQL.
Com isso em mente, lembrando que eu uso o WSL do Ubuntu, eu vou mostrar os passos de como vamos fazer isso funcionar.


## Terminal do Postgres
Lmebre-se que este deve estar rodando no fundo sempre que queremos que o nosso Backend funcione.

Primeiro inicializamos o servidor do **Postgresql** e entramos no psql:
``
sudo service postgresql start
sudo -i -u postgres
psql
``

Se já possuímos um banco de dados rodamos:
``
\c *nome-do-banco-de-dados*
``

Se ainda não possuímos:
``
CREATE DATABASE *nome-do-seu-banco-de-dados*;
``

Como sabemos em qual porta um banco de dados específico está?
``
\c banco-de-dados
\conninfo
``


## PRISMA
Para rodar exclusivamente o prisma:
``
npx prisma
``

Para rodar o **Prisma Studio**, um jeito de ver o banco de dados de forma mais agradável:
``
npx prisma studio
``

Para realizar alguma mudança no banco de dados com o Prisma:
``
prisma migrate dev
``


## Arquivos em TypeScript
Para rodarmos um arquivo **arquivo** em *Typescript*:
``
yarn ts-node-dev arquivo.ts
``


## .env
O arquivo **.env** que temos no nosso projeto ele serve como um endereço do nosso banco de dados. A estrutura dele basicamente é:
``
DATABASE_URL="postgresql://postgres:default@localhost:5432/sipb?schema=public"
``
 - **postgres:default**, *postgres* representa o seu usuário do terminal do postgres, e *default* a senha do seu usuário;
 - **localhost:5432** é a porta em que você está rodando o seu banco de dados;
 - **sipb** é o nome do banco de dados no **postgres**

Assim, sinta-se a vontade de mudar em sua máquina esse endereço de acordo com seu login, senha do postgres e do nome de banco de dados que você criou no PostgreSQL
