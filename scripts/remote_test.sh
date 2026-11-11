#!/bin/sh
# Remote shell execution smoke test.
# Safe to run on a normal Linux laptop: no packages or files are modified.

set -eu

if [ -t 1 ]; then
    BOLD='\033[1m'
    CYAN='\033[36m'
    GREEN='\033[32m'
    DIM='\033[2m'
    RESET='\033[0m'
else
    BOLD=''
    CYAN=''
    GREEN=''
    DIM=''
    RESET=''
fi

printf '\n%b' "$BOLD$CYAN"
printf '  =====================================\n'
printf '       REMOTE SHELL TEST\n'
printf '  =====================================\n'
printf '%b\n' "$RESET"

printf '  %b%s%b\n' "$GREEN" '✓ Script berhasil diunduh dan dieksekusi.' "$RESET"
printf '  %-14s %s\n' 'OS:' "$(uname -s)"
printf '  %-14s %s\n' 'Kernel:' "$(uname -r)"
printf '  %-14s %s\n' 'Architecture:' "$(uname -m)"
printf '  %-14s %s\n' 'User:' "$(id -un 2>/dev/null || whoami)"
printf '  %-14s %s\n' 'Privilege:' "$(if [ "$(id -u)" -eq 0 ]; then printf 'root'; else printf 'regular user'; fi)"
printf '  %-14s %s\n' 'Working dir:' "$PWD"
printf '\n%b  Tidak ada paket yang dipasang atau file sistem yang diubah.%b\n\n' "$DIM" "$RESET"
