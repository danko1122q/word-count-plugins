# Word Count Plugin for Lex Editor

A lightweight Lua plugin for Lex Editor that adds real-time word, line, and character statistics to your status bar.

## Features

- **Live Stats:** Displays Word (W), Line (L), and Character (C) counts.
- **Smart Formatting:** Large numbers are automatically formatted with commas.
- **Integrated UI:** Displays editor mode, filename, and cursor position.

## Installation

Clone this repository directly into your Lex plugins directory:
```bash
# 1. Create the plugins directory
mkdir -p ~/.config/lex/plugins/

# 2. Clone the repository
git clone https://github.com/danko1122q/word-count-plugins ~/.config/lex/plugins/word-count
```

## Configuration

You can toggle the display settings inside `word_count.lua`:

- `KEEP_DEFAULT_RIGHT = false`: Hides the language ID (default).
- `KEEP_DEFAULT_RIGHT = true`: Shows the language ID next to the stats.

## Directory Structure

For the plugin to load correctly, ensure the following structure:
```
~/.config/lex/
└── plugins/
    └── word-count/
        └── word_count.lua
```
