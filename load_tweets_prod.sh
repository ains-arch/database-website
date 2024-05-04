#!/bin/sh

# list all of the files that will be loaded into the database
# for the first part of this assignment, we will only load a small test zip file with ~10000 tweets
# but we will write are code so that we can easily load an arbitrary number of files
files='
test-data.zip
'

source .env.prod.db

echo 'load normalized prod'
for file in $files; do
    python3 -u load_tweets_batch.py --db "postgresql://$POSTGRES_USER:$POSTGRES_PASSWORD@localhost:1467/$POSTGRES_DB" --inputs $file
echo 'load normalized prod complete'
done
