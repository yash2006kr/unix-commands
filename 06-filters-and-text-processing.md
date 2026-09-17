# 06. Filters and Text Processing

Filters read input, process it, and produce output. They are commonly used with pipes.

## `grep`

**Definition:** Searches for lines matching a pattern.

**Syntax:**

```sh
grep [options] pattern file
```

**Examples:**

```sh
grep "ISE" student
grep -i "ise" student
grep -n "ISE" student
```

Common options:

| Option | Meaning |
|---|---|
| `-i` | Ignore case |
| `-n` | Show line numbers |
| `-v` | Show non-matching lines |
| `-c` | Count matching lines |

## `sort`

**Definition:** Sorts lines of text.

**Syntax:**

```sh
sort [options] file
```

**Examples:**

```sh
sort student
sort -r student
sort -n marks
```

## `cut`

**Definition:** Extracts columns or fields from text.

**Syntax:**

```sh
cut [options] file
```

**Examples:**

```sh
cut -c 1-5 student
cut -d "," -f 2 student
```

## `paste`

**Definition:** Joins lines from multiple files side by side.

**Syntax:**

```sh
paste file1 file2
```

**Example:**

```sh
paste student marks
```

## `head`

**Definition:** Displays the first lines of a file.

**Syntax:**

```sh
head [options] file
```

**Examples:**

```sh
head student
head -n 5 student
```

## `tail`

**Definition:** Displays the last lines of a file.

**Syntax:**

```sh
tail [options] file
```

**Examples:**

```sh
tail student
tail -n 5 student
```

`tail -f` keeps showing new lines added to a file.

## `wc`

**Definition:** Counts lines, words, and characters.

**Syntax:**

```sh
wc [options] file
```

**Examples:**

```sh
wc student
wc -l student
wc -w student
wc -c student
```

## `tr`

**Definition:** Translates or deletes characters from input.

**Syntax:**

```sh
tr [options] set1 set2
```

**Examples:**

```sh
echo "hello" | tr 'a-z' 'A-Z'
echo "HELLO" | tr 'A-Z' 'a-z'
echo "hello123" | tr -d '0-9'
```

## `tee`

**Definition:** Sends output to both the terminal and a file.

**Syntax:**

```sh
command | tee file
```

**Examples:**

```sh
ls | tee output.txt
date | tee -a output.txt
```

`-a` appends output instead of replacing the file.
