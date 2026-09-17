# 04. Conditional Statements

Conditional statements allow a script to make decisions based on tests.

## `test`

**Definition:** Checks a condition and returns true or false.

**Syntax:**

```sh
test condition
[ condition ]
```

Spaces are required after `[` and before `]`.

**Example:**

```sh
num=10
if [ "$num" -gt 5 ]
then
    echo "Number is greater than 5"
fi
```

## Numeric Test Operators

| Operator | Meaning |
|---|---|
| `-eq` | Equal to |
| `-ne` | Not equal to |
| `-gt` | Greater than |
| `-ge` | Greater than or equal to |
| `-lt` | Less than |
| `-le` | Less than or equal to |

**Example:**

```sh
a=10
b=20
if [ "$a" -eq "$b" ]
then
    echo "Both are equal"
fi
```

## String Test Operators

| Operator | Meaning |
|---|---|
| `=` | Equal strings |
| `!=` | Not equal strings |
| `-z` | String is empty |
| `-n` | String is not empty |

**Example:**

```sh
name="yash"
if [ "$name" = "yash" ]
then
    echo "Correct name"
fi
```

## File Test Operators

| Operator | Meaning |
|---|---|
| `-e file` | File exists |
| `-f file` | Regular file exists |
| `-d file` | Directory exists |
| `-r file` | File is readable |
| `-w file` | File is writable |
| `-x file` | File is executable |
| `-s file` | File is not empty |

**Example:**

```sh
if [ -f test.txt ]
then
    echo "File exists"
fi
```

## `if`

**Definition:** Runs commands only when a condition is true.

**Syntax:**

```sh
if [ condition ]
then
    commands
fi
```

**Example:**

```sh
if [ "$age" -ge 18 ]
then
    echo "Eligible"
fi
```

## `if-else`

**Definition:** Runs one block when true and another block when false.

**Syntax:**

```sh
if [ condition ]
then
    commands
else
    commands
fi
```

**Example:**

```sh
if [ "$age" -ge 18 ]
then
    echo "Eligible"
else
    echo "Not eligible"
fi
```

## `if-elif-else`

**Definition:** Tests multiple conditions in order.

**Syntax:**

```sh
if [ condition1 ]
then
    commands
elif [ condition2 ]
then
    commands
else
    commands
fi
```

**Example:**

```sh
if [ "$marks" -ge 75 ]
then
    echo "Distinction"
elif [ "$marks" -ge 35 ]
then
    echo "Pass"
else
    echo "Fail"
fi
```

## `case`

**Definition:** Selects one block from many pattern choices.

**Syntax:**

```sh
case value in
    pattern1)
        commands ;;
    pattern2)
        commands ;;
    *)
        default commands ;;
esac
```

**Example:**

```sh
echo "1. List files"
echo "2. Show current directory"
echo "3. Show date"

read choice

case $choice in
    1)
        ls
        ;;
    2)
        pwd
        ;;
    3)
        date
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
```
