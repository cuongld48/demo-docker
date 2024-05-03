set -e

chmod -R 777 /var/www/html

php artisan optimize:clear

php artisan migrate
php artisan db:seed

apache2ctl -D FOREGROUND