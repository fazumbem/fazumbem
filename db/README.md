## Histórico da modelagem

- sprint1: tabelas criadas a partir das telas do XD, banco PostgreSQL hospedado no Heroku
- sprint2: modelo E-R refinado criado no Visual Paradigm
- sprint3: modelo criado em https://dbdiagram.io/d/5ea1fe1939d18f5553fe1df1

Obs.: Modelo criado em dbdiagram.io não é editável de forma compartilhada. O link dá acesso de leitura e, para modificar o modelo, é necessário criar um novo (Edit as New) e depois compartilhá-lo (Share -> Copy the link) ou exportá-lo (Export -> Export PostgreSQL).

## Cliente PostgreSQL

- DBGlass: https://github.com/web-pal/DBGlass/releases  
  Para Heroku, preencher com credenciais encontradas em: Datastores > postgresql-octagonal-07726 > Settings > Database Credentials  
  Usar versão mais recente do DBGlass, que tem suporte a SSL na conexão com o banco (SSL é default no Heroku PostgreSQL)

## Para rodar o banco de dados localmente(em container)
´´´sudo docker-compose -f stack.yml up´´´
