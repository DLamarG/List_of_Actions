


docker-compose -f docker_compose.dev.yml up -d --build

# make sure the postgres container is ready, then run migrations
sleep 10 
docker exec list_of_actions-task-api-1  python /src/manage.py makemigrations 
docker exec list_of_actions-task-api-1  python /src/manage.py migrate