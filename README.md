# build docker
```bash
    docker-compose up --build -d
```
# migrate DB
```bash
    docker exec -it demo-mariadb mysql -uroot -p"root" -e "CREATE DATABASE demo_docker;"
    docker exec -it demo-web-app bash -c 'php /var/www/html/artisan migrate'
    docker exec -it demo-web-app bash -c 'php /var/www/html/artisan db:seed'
```
