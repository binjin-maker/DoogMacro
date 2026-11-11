#!/usr/bin/env bash
# Cross-compile FrutigerMacro.exe (needs: pip install ziglang)
set -e
cd "$(dirname "$0")/src"
python3 -m ziglang cc -target x86_64-windows-gnu -O2 -s -o ../FrutigerMacro.exe FrutigerMacro.c app.rc \
  -Wl,--subsystem,windows -luser32 -lgdi32 -lcomdlg32 -lcomctl32 -lwinmm -ldwmapi -luxtheme -lwininet -lbcrypt -lshell32 -lole32 -lgdiplus -lcrypt32
echo "built FrutigerMacro.exe"
