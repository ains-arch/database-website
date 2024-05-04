#!/bin/sh

# list all of the files that will be loaded into the database
# for the first part of this assignment, we will only load a small test zip file with ~10000 tweets
# but we will write are code so that we can easily load an arbitrary number of files
files='
test-data.zip
'

set -e

echo 'load normalized dev'
for file in $files; do
    python3 load_tweets.py --db "postgresql://hello_flask:hello_flask@localhost:1457/hello_flask_dev" --inputs $file
echo 'load normalized dev complete'
done
