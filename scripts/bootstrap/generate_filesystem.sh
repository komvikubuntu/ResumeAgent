#!/usr/bin/env bash

set -e

echo "🚀 Creating ResumeAgent structure..."

# Root folders
# mkdir -p ResumeAgent
# cd ResumeAgent

# =========================
# Core folders
# =========================
mkdir -p backend/app/{api,core,db,models,schemas,services,utils}
mkdir -p backend/tests
mkdir -p backend/alembic

mkdir -p frontend/public
mkdir -p frontend/src/{api,assets,components,hooks,layouts,pages,services,styles,utils}

mkdir -p wordpress/plugins/resumeagent-api
mkdir -p wordpress/themes
mkdir -p wordpress/uploads

mkdir -p nginx/conf.d

mkdir -p docker/{mariadb/init,postgres/init,wordpress,backend,frontend,nginx}

mkdir -p n8n/workflows

mkdir -p scripts

mkdir -p docs/screenshots

mkdir -p .github/workflows

mkdir -p .vscode

# =========================
# Files (existing + required)
# =========================

# Root files
touch .env.example
touch .env
touch docker-compose.yml
touch README.md
touch LICENSE
touch .gitignore
touch Makefile

# Backend files
touch backend/app/main.py
touch backend/requirements.txt
touch backend/alembic.ini

# Frontend files
touch frontend/package.json
touch frontend/vite.config.js
touch frontend/src/main.jsx
touch frontend/src/App.jsx

# Nginx
touch nginx/conf.d/default.conf

# Docs
touch docs/architecture.md
touch docs/api.md
touch docs/deployment.md
touch docs/roadmap.md

# Scripts
touch scripts/backup.sh
touch scripts/restore.sh
touch scripts/start.sh
touch scripts/stop.sh

# CI/CD
touch .github/workflows/ci.yml

# VSCode config
touch .vscode/settings.json
touch .vscode/extensions.json
touch .vscode/launch.json

# WordPress placeholder files
touch wordpress/plugins/resumeagent-api/plugin.php

echo "✅ ResumeAgent structure created successfully!"
echo "👉 Next step: open folder in VS Code and start Docker setup"
