#!/usr/bin/env bash
# Cross-compile DoogMacro.exe (needs: pip install ziglang)
set -e
cd "$(dirname "$0")/src"
python3 -m ziglang cc -target x86_64-windows-gnu -O2 -s -o ../DoogMacro.exe DoogMacro.c app.rc \
  -Wl,--subsystem,windows -luser32 -lgdi32 -lcomdlg32 -lcomctl32 -lwinmm -ldwmapi -luxtheme -lwininet -lbcrypt -lshell32
echo "built DoogMacro.exe"
