#!/bin/bash

# chmod +x <update.sh>
# ./<update.sh>
mkdocs build --clean    # cleans the site directory by deleting files and clearning cache

git add .
git commit -m "Update 1"

git push origin main    # Push the main branch first
mkdocs gh-deploy        # Deploy site to gh-pages branch
