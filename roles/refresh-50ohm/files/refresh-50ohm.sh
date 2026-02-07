#!/usr/bin/env bash
set -euo pipefail

git -C 50ohm pull
git -C 50ohm-contents-dl pull
cd 50ohm
uv run python3 ./build.py
