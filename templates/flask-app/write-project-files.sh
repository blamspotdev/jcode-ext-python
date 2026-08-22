#!/bin/sh
# Write project files
set -e

mkdir -p "$JCODE_PROJECT_DIR"
cat > "$JCODE_PROJECT_DIR/app.py" <<'EOF'
from flask import Flask, jsonify

app = Flask(__name__)


@app.get("/")
def index():
    return "<h1>Hello from Flask</h1>"


@app.get("/api/health")
def health():
    return jsonify(status="ok")


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
EOF
cat > "$JCODE_PROJECT_DIR/requirements.txt" <<'EOF'
flask
EOF
