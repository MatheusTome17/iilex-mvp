#!/usr/bin/env bash
set -e

# prepara pastas/arquivos
mkdir -p backend/data
if [ ! -f backend/.env ]; then
  cp backend/.env.example backend/.env
fi

# sobe API (porta 8000)
bash -lc 'cd backend && nohup php -S 0.0.0.0:8000 server_pro.php > /tmp/php-api.log 2>&1 &' 

# sobe frontend estático (porta 8080)
bash -lc 'cd frontend && nohup php -S 0.0.0.0:8080 > /tmp/php-front.log 2>&1 &'

echo ">> Frontend: http://localhost:8080"
echo ">> API:      http://localhost:8000"
