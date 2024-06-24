set positional-arguments

_help:
  @just -l


register handle:
  #!/bin/bash
  set -euo pipefail

  git checkout -b {{handle}}
  go run register/main.go {{handle}}
  git add .
  git commit -m "register {{handle}}"