#!/usr/bin/env sh

# abort on errors.
set -e

# build.
npm run build

# navigate into build directory.
cd dist

# build replaces complete directory everytime.
git init 
git add -A
git commit -m "deployment"

# force push the new files.
git push -f https://github.com/bitbeast18/bitbeast18.github.io.git master

cd -

