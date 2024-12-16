#EmailServer

Follow this [guide](https://onyijne.hashnode.dev/build-email-server-with-postfix-and-dovecot) for an overview of setting up
an email server.

It is assumend your base directory is `/var/www`

## Installation
> First run `make init` after you clone, you do this once.

> Follow this [guide](https://onyijne.hashnode.dev/build-email-server-with-postfix-and-dovecot) to install dependencies.

> Run `make dev` to build docker service, if you want tp run webmailer on docker, or use it's PHPmyadmin.

> Run `bash froxlor.sh && bash roundcube.sh`


## Server Ports
```bash
# open these ports
- 25, 587, 110, 995, 143, 993, 4190
```