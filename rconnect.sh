#!/bin/bash
# used to connect to remote host with host port passwd
docker run -it --rm \\
  -e TERM=xterm \
	stuartz/mariadb-cluster \
	sh -c "exec mysql -h$1 -P$2 -uroot -p$3"
