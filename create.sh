#!/bin/bash

# create venv and source venv/Activate/venv
# chmod +x <create.sh>
# edit .gitignore 
# ./<create.sh>

# Create remote repo in github
gh repo create lunarlander --public
git remote add origin https://github.com/ocrobotix/lunarlander.git
git remote -v

# Create docs
pip install mkdocs
mkdocs new .
git add .
git commit -m "Initial Commit"

# Push the main branch first
git push origin main

# Deploy site to gh-pages branch
mkdocs gh-deploy
