echo -e "\n--- Starting Gitlab ---\n"
docker start gitlab-postgresql
docker start gitlab-redis
docker start gitlab

