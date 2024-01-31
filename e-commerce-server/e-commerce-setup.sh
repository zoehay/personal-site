#!/bin/bash

DB_HOST="db"
DB_PORT="5432"
DB_USER="postgres"
DB_PASSWORD="postgres"
DB_NAME="prisma_e_commerce"
MAX_ATTEMPTS=30
SLEEP_SECONDS=5

# Function to check if the database is ready
check_database() {
    pg_isready -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" 
}

# Loop to check the database readiness
attempts=0
until check_database || [ "$attempts" -eq "$MAX_ATTEMPTS" ]; do
    echo "Database is not ready, retrying in $SLEEP_SECONDS seconds..."
    sleep "$SLEEP_SECONDS"
    ((attempts++))
done

# Check if the loop exited due to a successful connection or a timeout
if [ "$attempts" -eq "$MAX_ATTEMPTS" ]; then
    echo "Error: Database not ready after $((attempts * SLEEP_SECONDS)) seconds."
    exit 1
else
    echo "Database is ready!"

    npx prisma migrate deploy
    npx prisma generate
    npx prisma db seed

fi

# Start your Node.js application
# npm start