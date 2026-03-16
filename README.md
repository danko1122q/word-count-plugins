# Word Count Plugin for Lex Editor

A lightweight Lua plugin for Lex Editor that adds real-time word, line, and character statistics
to your status bar.

## Features

- **Live Stats:** Displays Word (W), Line (L), and Character (C) counts.
- **Smart Formatting:** Large numbers are automatically formatted with commas.
- **Integrated UI:** Displays editor mode, filename, and cursor position.

## Installation
```sh
git clone https://github.com/danko1122q/word-count-plugins ~/.config/lex/plugins/word-count
```

The destination folder name `word-count` is set directly at the end of the clone command.

## Update
```sh
git -C ~/.config/lex/plugins/word-count pull
```

## Configuration

Open `word_count.lua` and adjust the following option:

- `KEEP_DEFAULT_RIGHT = false` — Hides the language ID *(default)*.
- `KEEP_DEFAULT_RIGHT = true` — Shows the language ID next to the stats.

## Directory Structure
```
~/.config/lex/plugins/
└── word-count/
    └── word_count.lua
```

## Uninstall
```sh
rm -rf ~/.config/lex/plugins/word-count/
```

## Related

- [Lex Editor](https://github.com/danko1122q/lex-editor)
- [Syntax Plugin](https://github.com/danko1122q/syntax-plugin-lex)
