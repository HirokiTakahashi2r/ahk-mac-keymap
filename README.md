# ahk-mac-keymap

AutoHotkey v2 scripts that bring macOS-style keyboard shortcuts to Windows.

The Win key acts as the Mac Command key, CapsLock acts as an Emacs-style Control key, and tapping the left/right Win key switches the Japanese IME off/on like the Mac 英数/かな keys.

## Requirements

- Windows 10 / 11
- [AutoHotkey v2](https://www.autohotkey.com/)
- A keyboard where the Win keys sit next to the space bar (e.g. an Apple keyboard, where Command sends Win)

## Usage

Run `main.ahk`. It loads the other scripts.

To start it automatically at logon, place a shortcut to `main.ahk` in the Startup folder (`Win+R` → `shell:startup`).

## Key map

### IME (`ime.ahk`)

| Key | Action |
|---|---|
| Left Win (tap) | IME off (英数) |
| Right Win (tap) | IME on (かな) |

The IME is switched only when the Win key is pressed and released alone.

### Command (`mac-command.ahk`)

| Key | Sends |
|---|---|
| Win+A / C / V / X / Z | Ctrl+A / C / V / X / Z |
| Win+Shift+Z | Ctrl+Y |
| Win+S / F / P / N / O | Ctrl+S / F / P / N / O |
| Win+T / W / R / L | Ctrl+T / W / R / L |
| Win+Shift+T | Ctrl+Shift+T |
| Win+1 … 9 | Ctrl+1 … 9 |
| Win+Left / Right | Home / End |
| Win+Up / Down | Ctrl+Home / Ctrl+End |
| Win+Shift+Left / Right | Shift+Home / Shift+End |
| Win+Shift+Up / Down | Ctrl+Shift+Home / Ctrl+Shift+End |
| Win+Backspace | Delete to the beginning of the line |

### Control (`mac-control.ahk`)

| Key | Sends |
|---|---|
| CapsLock+A / E | Home / End |
| CapsLock+B / F | Left / Right |
| CapsLock+P / N | Up / Down |
| CapsLock+H | Backspace |
| CapsLock+D | Delete |

CapsLock on its own is disabled.

## Known limitations

- Win+L always locks the screen. Windows handles it before AutoHotkey can intercept it.
- In Windows Terminal, Win+C without a selection sends Ctrl+C, which interrupts the running process.
- Shortcuts do not work in windows running as administrator unless the script is also run as administrator.
- Holding Shift with the CapsLock shortcuts does not extend the selection.
- IME switching may not work in some apps (e.g. Windows Terminal, some UWP apps).
- Windows' own Win+key shortcuts that are remapped here (clipboard history, Run, Search, etc.) are no longer available.

## License

[MIT](LICENSE)
