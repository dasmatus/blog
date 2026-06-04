#!/usr/bin/env bash
# Vercel build script — installs pandoc + just if absent, then builds.
set -euo pipefail

PANDOC_VERSION="3.2.1"
JUST_VERSION="1.36.0"
BIN_DIR="$HOME/.local/bin"
mkdir -p "$BIN_DIR"
export PATH="$BIN_DIR:$PATH"

# ── pandoc ────────────────────────────────────────────────────────
if ! command -v pandoc &>/dev/null; then
    echo "Installing pandoc ${PANDOC_VERSION}..."
    archive="pandoc-${PANDOC_VERSION}-linux-amd64.tar.gz"
    curl -sLO "https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/${archive}"
    tar xzf "$archive" --strip-components=2 -C "$BIN_DIR" \
        "pandoc-${PANDOC_VERSION}/bin/pandoc"
    rm "$archive"
fi

# ── just ─────────────────────────────────────────────────────────
if ! command -v just &>/dev/null; then
    echo "Installing just ${JUST_VERSION}..."
    archive="just-${JUST_VERSION}-x86_64-unknown-linux-musl.tar.gz"
    curl -sLO "https://github.com/casey/just/releases/download/${JUST_VERSION}/${archive}"
    tar xzf "$archive" -C "$BIN_DIR" just
    rm "$archive"
fi

echo "pandoc $(pandoc --version | head -1)"
echo "just   $(just --version)"

just build
