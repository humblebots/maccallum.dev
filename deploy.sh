#! /bin/bash

if git remote add deploy humblebots@maccallum.dev:/var/www/maccallum.dev/ ; then
    echo "Added Humblebots server as git remote"
else
    echo "Already configured to deploy to Humblebots server"
fi

echo "Pushing changes to server..."

git push deploy master

echo "Pushing changes to GitHub"

git push
