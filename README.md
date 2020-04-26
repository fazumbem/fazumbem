# fazumbem
Faz Um Bem: Plataforma de Ações Solidárias

# Docker-Compose

Para rodar a plataforma fazumbem:

```
docker-compose run fazumbem_webapp
```

As imagens fazumbem_webapp, fazumbem_api e base_image serão criadas. A imagem base_image instala as dependências do python e clona o repositório fazumbem. Para testar as alterações feitas localmente, execute o comando `sudo ./scripts/restart`. Este comando irá executar os contêineres frontend e backend com as alterações feitas nas pastas /webapp e /api. 

O backend utiliza o IP `172.18.0.2:3000`. O frontend utiliza o IP `172.18.0.3`.
