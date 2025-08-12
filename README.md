# iiLex • inBox Chat (MVP)

Frontend estático + API PHP (SQLite). Pronto para rodar em **GitHub Codespaces** e fazer **deploy** com Nginx+PHP‑FPM depois.

## Rodando no Codespaces

1. Clique em **Code → Create codespace on main**.
2. O container instala PHP e sobe automaticamente:
   - Frontend: http://localhost:8080
   - API: http://localhost:8000

> Dica: Edite `backend/.env` no Codespaces para seus testes. Se vazio, a API usa modo "simulado" para WhatsApp.

### Primeiro acesso
- Abra o front (porta 8080) → **Primeiro acesso** → crie tenant + admin.
- Faça login.
- Em **Config**, você pode:
  - deixar **WABA simulado** (sem token)
  - e/ou preencher **Supabase** → importar `sample/clientes.csv`.

### Importar CSV
- Em **Config → Integrações**:
  - Se quiser sincronizar com Supabase, salve URL + *service_key* (apenas no backend).
  - Selecione um CSV e clique **Importar CSV → Supabase**.

## Rodando local (sem Codespaces)

Requisitos: PHP 8.3 com sqlite3, curl, mbstring.

```bash
# API
cd backend
cp .env.example .env   # edite se quiser
php -S 0.0.0.0:8000 server_pro.php

# Front
cd ../frontend
php -S 0.0.0.0:8080
