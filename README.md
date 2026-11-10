# DOOG Macro

A free, open-source Windows macro recorder and humanized auto-typer. No paywall, no installer, no viruses, just one small EXE.

Made by **DOOG unincorporated**.

## Download

Grab `DoogMacro.exe` from the [latest release](https://github.com/binjin-maker/DoogMacro/releases/latest) and run it. Windows SmartScreen may warn because the EXE isn't code-signed; click **More info → Run anyway**.

After that, updates install themselves from the **Update** tab.

## Features

**Recorder**
- Record keyboard + mouse (clicks, side buttons, scroll, movement)
- Play back with repeat count (0 = loop forever) and speed multiplier
- Save/load `.dmac` macro files (plain text, hand-editable)

**Instruct (auto-typer)**
- Fixed WPM, fixed ms/char, or **Humanizer** (bursts, pauses, typos that get noticed late and backspaced)
- **Docs-safe typos**, so Google Docs autocorrect never fights the humanizer
- Live yellow highlight on the character being typed
- Pause/resume exactly where it stopped
- Presets ("Me", "Tired me", "Focused me", or your own)
- **Magic Type**: mash any keys and each press types the next character of your text
- **Clipboard typing**: one hotkey types whatever you copied

**Editor**: view and edit every recorded event, insert/delete/reorder, scale delays, strip mouse moves

**Typing Test**: measures your WPM, typo rate, burst rate and pause rate, then applies matching Humanizer settings

**Extras**
- Global, rebindable hotkeys (F9 record, F10 play, F11 type, F8 stop, Ctrl+Alt+V clipboard)
- **Disable keys** (Ctrl+Shift+~) blocks your physical typing keys while DOOG keeps typing
- Frutiger Aero / Vista glass UI, resizable (double-click the title area to reset)
- Built-in updater with changelog; works fully offline

## `.dmac` format

```
DOOGMACRO 1
# <delay ms since previous> <event> <args>
0 KD 65 30 0        # key down: vk scan extended
80 KU 65 30 0       # key up
120 MV 640 360      # mouse move to x y
10 LD 640 360       # left button down (LU/RD/RU/MD/MU/X1D/X1U/X2D/X2U too)
60 LU 640 360
200 WH 640 360 -120 # wheel: x y delta (HW = horizontal)
500 TYPE hello world\n
```

## Building from source

Single C file, Win32 API only. Cross-compile from Linux/macOS with Zig:

```bash
pip install ziglang
./build.sh
```

Or on Windows with MinGW-w64, using the same flags as `build.sh`.

## Settings

Everything is saved to `DoogMacro.ini` next to the EXE: hotkeys, Instruct settings, presets, window scale.
