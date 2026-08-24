#!/bin/sh
# Configure Build & Run
set -e

mkdir -p "$JCODE_PROJECT_DIR/.jcode"
cat > "$JCODE_PROJECT_DIR/.jcode/run.yaml" <<YAML
version: 1
name: FastAPI (dev)
readyPort: 8000
terminals:
  - label: API
    command: |
      clear
      set -e
      SRC="$JCODE_PROJECT_DIR"
      STAGE="\$HOME/.jcode-run/$JCODE_PROJECT_NAME-api"
      echo '== J Code: FastAPI (Uvicorn) =='
      rm -rf "\$STAGE" && mkdir -p "\$STAGE" && cp -a "\$SRC/." "\$STAGE/"
      cd "\$STAGE"
      python3 -m venv --copies .venv
      . .venv/bin/activate
      pip install --disable-pip-version-check -q -r requirements.txt
      uvicorn main:app --host 0.0.0.0 --port 8000 --reload
YAML
