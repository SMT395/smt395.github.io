#!/usr/bin/env bash
set -euo pipefail
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"
pandoc cv.md --standalone --template=templates/cv.tex --pdf-engine=tectonic -o cv.pdf
pandoc cv.md --standalone --to=html5 --template=templates/cv.html \
  --metadata name="Thomas I. Khan" --metadata title="Curriculum Vitae" \
  --metadata email="thomas.khan@outlook.com" --metadata github="github.com/SMT395" \
  -o index.html
