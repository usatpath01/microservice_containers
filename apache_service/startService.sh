#! /bin/bash
docker run -it -p 80:80 --name=apache --pid=host --privileged=True -v /home/vm1/Work/apache_service/docker/src/:/usr/local/apache2/htdocs -v /var/log/container_logs/apache_container:/usr/local/apache2/log -v /var/log/container_logs/apache_container/audit_logs:/var/log/audit/ --network testnet my-web-app

