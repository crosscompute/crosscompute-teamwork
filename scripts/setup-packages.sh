#!/bin/bash
command -v python3 || sudo dnf install python3 -y

python3 -m venv \
    ~/.virtualenvs/crosscompute-teamwork
source \
    ~/.virtualenvs/crosscompute-teamwork/bin/activate

pip install -r requirements.txt
