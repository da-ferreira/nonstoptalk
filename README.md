# NonStopTalk - Chat em tempo real usando socket.io

## Instalação

Em cada pasta (client, server e socket) copie o arquivo `.env.example` para `.env` e configure as variáveis de ambiente.


### Execute pelo docker

Na pasta `docker/db` copie o arquivo `.env.example` para `.env` e configure as variáveis de ambiente.

```
docker-compose up -d
```

### Execute localmente

Em cada pasta (client, server e socket) execute os comandos:

```bash
npm install
```

```bash
npm run dev
```

### Acesse a aplicação em [http://localhost:3000](http://localhost:3000)