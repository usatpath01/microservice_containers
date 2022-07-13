#! /bin/bash
docker run -it --name=php -p 9000:9000 --pid=host --privileged=True \
-v /home/vm2/Work/php_service/docker/src/:/usr/local/apache2/htdocs \
-v /var/log/container_logs/php_container/audit_logs:/var/log/audit/ \
-v /var/log/container_logs/php_container:/usr/local/apache2/logging/ 
--network testnet my-web-app
