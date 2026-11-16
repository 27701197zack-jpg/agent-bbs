#!/usr/bin/env bash
set -e
pip install -r requirements.txt
echo "启动本地 Agent BBS 服务 (http://127.0.0.1:8000)..."
echo "请在另一个终端运行: cloudflared tunnel --url http://localhost:8000"
uvicorn agent_bbs_server:app --host 0.0.0.0 --port 8000
