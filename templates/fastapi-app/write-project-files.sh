#!/bin/sh
# Write project files
set -e

mkdir -p "$JCODE_PROJECT_DIR"
cat > "$JCODE_PROJECT_DIR/main.py" <<'EOF'
from fastapi import FastAPI

app = FastAPI()


@app.get("/api/health")
def health():
    return {"status": "ok"}


@app.get("/api/hello")
def hello():
    return {"message": "Hello from FastAPI"}
EOF
cat > "$JCODE_PROJECT_DIR/requirements.txt" <<'EOF'
fastapi
uvicorn[standard]
EOF
