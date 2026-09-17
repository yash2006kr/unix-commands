# 🐧 Unix & Linux Command Notes

A structured collection of Unix/Linux commands, shell scripting concepts,
examples, and practical notes.

This repository serves as a personal reference for learning and revising
Unix/Linux from the basics to shell scripting, text processing, file
permissions, and system-related commands.

---

## 📚 Contents

### 01. Basic Unix Commands
- `pwd`
- `ls`
- `cd`
- `mkdir`
- `rmdir`
- `cat`
- `cp`
- `mv`
- `rm`
- `echo`

### 02. Shell Variables & Input
- Shell variables
- `read`
- `set`
- `shift`
- Positional parameters
- Special parameters
- `$0`, `$1`, `$2`, ...
- `$#`
- `$*`
- `$@`
- `$?`

### 03. Arithmetic & Expressions
- `expr`
- `let`
- Arithmetic operators
- Command substitution

### 04. Conditional Statements
- `test`
- Numeric test operators
- String test operators
- File test operators
- `if`
- `if-else`
- `if-elif-else`
- `case`

### 05. Loops & Control Statements
- `for`
- `while`
- `break`
- `continue`
- `exit`

### 06. Filters & Text Processing
- `grep`
- `sort`
- `cut`
- `paste`
- `head`
- `tail`
- `wc`
- `tr`
- `tee`

### 07. Regular Expressions & Pattern Matching
- `^`
- `$`
- `.`
- `*`
- `?`
- `[ ]`
- Character ranges
- Pattern matching with `grep`

### 08. Input/Output & Pipes
- Output redirection `>`
- Append redirection `>>`
- Input redirection `<`
- Pipes `|`
- Command substitution
- Quoting

### 09. File Permissions & Ownership
- File permissions
- `r`, `w`, `x`
- User, group, others
- Numeric permissions
- `chmod`
- Symbolic mode
- Octal mode
- `chown`
- `umask`

### 10. System Commands
- `ps`
- `who`
- `uname`
- `date`
- `cal`
- `bc`

### 11. User Communication
- `write`
- `mesg`
- `wall`
- `mail`

### 12. Text Editor
- `vi`
- Command mode
- Insert mode
- Save and exit
- Common `vi` commands

### 13. Shell Scripting
- Shell script structure
- Shebang
- User input
- Variables
- Command-line arguments
- Conditions
- Loops
- File operations
- Practical shell scripts

---

## 📁 Repository Structure

```text
unix-commands-notes/
│
├── README.md
│
├── 01-basic-commands.md
├── 02-shell-variables.md
├── 03-arithmetic-and-expressions.md
├── 04-conditional-statements.md
├── 05-loops-and-control.md
├── 06-filters-and-text-processing.md
├── 07-regular-expressions.md
├── 08-redirection-and-pipes.md
├── 09-file-permissions.md
├── 10-system-commands.md
├── 11-user-communication.md
├── 12-vi-editor.md
│
└── 13-shell-scripting/
    │
    ├── README.md
    ├── basic-scripts/
    ├── conditional-scripts/
    ├── loop-scripts/
    └── argument-scripts/
