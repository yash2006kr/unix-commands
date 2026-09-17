# 12. vi Editor

`vi` is a terminal-based text editor available on most Unix/Linux systems.

## Opening a File

**Definition:** Opens an existing file or creates a new one.

**Syntax:**

```sh
vi file_name
```

**Example:**

```sh
vi test.txt
```

## Modes in `vi`

| Mode | Use |
|---|---|
| Command mode | Move, delete, copy, paste, save, quit |
| Insert mode | Type and edit text |

Press `Esc` to return to command mode.

## Insert Mode Commands

| Command | Meaning |
|---|---|
| `i` | Insert before cursor |
| `a` | Insert after cursor |
| `o` | Open new line below |
| `O` | Open new line above |

**Example:**

```text
i
Type your text
Esc
```

## Save and Exit Commands

| Command | Meaning |
|---|---|
| `:w` | Save |
| `:q` | Quit |
| `:wq` | Save and quit |
| `:q!` | Quit without saving |
| `ZZ` | Save and quit |

## Common `vi` Commands

| Command | Meaning |
|---|---|
| `h` | Move left |
| `j` | Move down |
| `k` | Move up |
| `l` | Move right |
| `dd` | Delete current line |
| `yy` | Copy current line |
| `p` | Paste after cursor |
| `u` | Undo |
| `/word` | Search for word |
| `n` | Next search result |

**Example workflow:**

```text
vi test.txt
i
Write notes here
Esc
:wq
```
