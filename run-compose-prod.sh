export SECRET_KEY=Task123
export DEBUG=True
export POSTGRES_DB=Task_app_db
export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=postgres


docker-compose -f docker_compose.dev.yml up -d --build

# make sure the postgres container is ready, then run migrations
sleep 10 
docker exec list_of_actions-recipe_db-1  python /src/manage.py makemigrations 
docker exec list_of_actions-recipe_db-1  python /src/manage.py migrate