# 07. Regular Expressions and Pattern Matching

Regular expressions are patterns used to search, match, and filter text.

## `^`

**Definition:** Matches the beginning of a line.

**Syntax:**

```sh
grep "^pattern" file
```

**Example:**

```sh
grep "^Error" log.txt
```

## `$`

**Definition:** Matches the end of a line.

**Syntax:**

```sh
grep "pattern$" file
```

**Example:**

```sh
grep "done$" tasks.txt
```

## `.`

**Definition:** Matches any one character.

**Syntax:**

```sh
grep "a.c" file
```

**Example:**

```sh
grep "c.t" words.txt
```

Matches `cat`, `cot`, and `cut`.

## `*`

**Definition:** Matches zero or more occurrences of the previous character.

**Syntax:**

```sh
grep "ab*c" file
```

**Example:**

```sh
grep "go*d" words.txt
```

Matches `gd`, `god`, and `good`.

## `?`

**Definition:** In extended regular expressions, matches zero or one occurrence of the previous character.

**Syntax:**

```sh
grep -E "colou?r" file
```

**Example:**

```sh
grep -E "colou?r" words.txt
```

Matches `color` and `colour`.

## `[ ]`

**Definition:** Matches any one character from a set.

**Syntax:**

```sh
grep "[abc]" file
```

**Example:**

```sh
grep "gr[ae]y" words.txt
```

Matches `gray` and `grey`.

## Character Ranges

**Definition:** Matches one character from a range.

**Syntax:**

```sh
grep "[a-z]" file
grep "[0-9]" file
```

**Examples:**

```sh
grep "[A-Z]" names.txt
grep "[0-9]" data.txt
```

## Pattern Matching with `grep`

**Definition:** Uses patterns to find matching text in files.

**Syntax:**

```sh
grep [options] "pattern" file
```

**Examples:**

```sh
grep "^A" names.txt
grep "txt$" files.txt
grep -E "cat|dog" animals.txt
grep -E "[0-9]{3}" numbers.txt
```
