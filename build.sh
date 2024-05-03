sed -i -e 's/\r$//' "$PWD/entrypoint.sh"

docker-compose down
docker-compose up --build -d