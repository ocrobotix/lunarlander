#!/bin/bash

# chmod +x <rerun.sh>
# ./<rerun.sh>

git add .
git commit -m "Update 1"
# Push the main branch first
git push origin main
# Deploy site to gh-pages branch
mkdocs gh-deploy
