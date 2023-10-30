#!/bin/bash

container_name="mysql"
local_folder="/usr/local/shared"
file_name="create-new-env.sql"

# Define actual values
db_name="test4"
db_user="test4"
db_user_password="test4"

# Check if the container is running
if docker ps -q -f name="$container_name" | grep -q .; then
    # Execute the `sed` command within the MySQL container to replace placeholders
    docker exec -it "$container_name" bash -c "sed -e 's/DATABASE_NAME/$db_name/g' -e 's/DATABASE_USER/$db_user/g' -e 's/DATABASE_PASSWORD/$db_user_password/g' '$local_folder/$file_name' > '$local_folder/_run.sql'"
    
    # Execute the generated SQL script inside the MySQL container
    docker exec -i "$container_name" bash -c "mysql -u root -p'root_2060!' < '$local_folder/_run.sql'"
    docker exec -i "$container_name" bash -c "rm '$local_folder/_run.sql'"

else
    echo "The MySQL container is not running."
fi