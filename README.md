# Banco de Dados 🗃️

> O banco de dados é contruído em [PostgreSQL](https://www.postgresql.org/download/) e hospedado na [Google Cloud Platform](https://cloud.google.com/?hl=pt-br).

## 🔎 Como utilizar

- Clone o repositório com o comando abaixo:

```console
git clone https://github.com/senac-escola/database.git
```

- Execute o container:

```console
docker-compose up -d
```

- Acesse o endereço local [http://localhost:15432/](http://localhost:15432/) com as credenciais abaixo:

  - **Email:** admin@admin.com
  - **Senha:** 123

- Crie uma nova conexão com as seguintes informações:

  - **Name:** Escola
  - **Host name/address:** postgres
  - **Port:** 5432
  - **Maintenance database:** escola
  - **Username:** admin
  - **Password:** 123

> 💡 Caso queira parar a execução do container, basta rodar o comando:
> `docker-compose down`.

_Para mais informações, consulte a nossa [documentação](https://senac-escola-docs.vercel.app/)._

## 📋 Issues

Fique à vontade para abrir uma issue caso encontre algum bug ou tenha alguma sugestão, assim podemos discutir o melhor caminho para melhorá-la ou corrigi-lá.

## 👋 Contribuição

Por se tratar de um projeto acadêmico, não estamos aceitando contribuições externas, mas o projeto pode ser utilizado para fins de estudo e ou desenvolvimento de aplicações similares.

## 📜 Licença

Este projeto é feito sobre a licença GPL-3.0, para mais informações sobre a sua possível utilização, modificação e compartilhamento, [clique aqui](LICENSE).
