#!/bin/sh
# Configure Build & Run
set -e

mkdir -p "$JCODE_PROJECT_DIR/.jcode"
cat > "$JCODE_PROJECT_DIR/.jcode/run.yaml" <<YAML
version: 1
name: Flask (dev)
readyPort: 5000
terminals:
  - label: Web
    command: |
      clear
      set -e
      SRC="$JCODE_PROJECT_DIR"
      STAGE="\$HOME/.jcode-run/$JCODE_PROJECT_NAME-web"
      echo '== J Code: Flask =='
      rm -rf "\$STAGE" && mkdir -p "\$STAGE" && cp -a "\$SRC/." "\$STAGE/"
      cd "\$STAGE"
      python3 -m venv --copies .venv
      . .venv/bin/activate
      pip install --disable-pip-version-check -q -r requirements.txt
      python app.py
YAML
