#!/bin/bash

# Automated deploy script with Circle CI

# Exit if any subcommand fails.
set -e

# build site.
jekyll build

# Delete and move files.
find . -maxdepth 1 ! -name '_site' ! -name '.git' ! -name '.gitignore' -exec rm -rf {} \;
mv _site/* .
rm -R _site/

# Send latest to production
rsync -avz ./ --exclude 'bin/deploy.sh' '.git/' $REMOTE:$REMOTE_APP

test:
  override:
    - echo "No Tests"


echo "Deployed Successfully!"

exit 0