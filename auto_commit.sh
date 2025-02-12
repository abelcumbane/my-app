#!/bin/bash

# Caminho do seu repositório (Altere para o caminho real)
REPO_PATH="/E:/Auto_Commit/my-app"

# Mensagem de commit aleatória
MESSAGES=("Refactoring code" "Bug fix" "Updating dependencies" "Small UI improvements" "Adding logs")
MESSAGE=${MESSAGES[$RANDOM % ${#MESSAGES[@]}]}

cd "$REPO_PATH" || exit

# Garante que há mudanças para commit (gera um arquivo de log com a data)
echo "$(date)" > auto_commit_log.txt

# Adiciona, commita e faz push
git add .
git commit -m "$MESSAGE"
git push origin main
