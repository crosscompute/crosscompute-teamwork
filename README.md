# CrossCompute Teamwork

Here are source files for https://teamwork.crosscompute.com.

## Installation

Set up packages and services.

```bash
bash scripts/setup-packages.sh
bash scripts/setup-services.sh
```

Become root and make an SSH key.

```bash
sudo -s
ssh-keygen -t ed25519 -C "crosscompute-teamwork-$(date +%Y%m%d-%H%M%S)"
```

[Add the SSH key as a deploy key to this repository](https://github.com/crosscompute/crosscompute-teamwork/settings/keys).

```bash
sudo -s
bash scripts/build.sh
```

## Development

```bash
python scripts/serve.py
```
