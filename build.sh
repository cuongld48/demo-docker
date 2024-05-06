docker-compose down
docker-compose up --build -d

# docker exec -it demo-mariadb mysql -uroot -p"root" -e "CREATE DATABASE demo_docker;"
# docker exec -it demo-web-app bash -c 'php /var/www/html/artisan migrate'
# docker exec -it demo-web-app bash -c 'php /var/www/html/artisan db:seed'
