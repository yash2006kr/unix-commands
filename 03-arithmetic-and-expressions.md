# 03. Arithmetic and Expressions

Arithmetic commands are used to perform calculations in shell scripts.

## `expr`

**Definition:** Evaluates arithmetic and string expressions.

**Syntax:**

```sh
expr value1 operator value2
```

**Examples:**

```sh
expr 10 + 5
expr 10 - 5
expr 10 \* 5
expr 10 / 2
expr 10 % 3
```

The `*` operator is escaped as `\*` because `*` has a special meaning in the shell.

## `let`

**Definition:** Performs arithmetic operations on shell variables.

**Syntax:**

```sh
let variable=expression
```

**Examples:**

```sh
a=10
b=20
let c=a+b
echo "$c"
```

## Arithmetic Operators

| Operator | Meaning | Example |
|---|---|---|
| `+` | Addition | `expr 5 + 2` |
| `-` | Subtraction | `expr 5 - 2` |
| `*` | Multiplication | `expr 5 \* 2` |
| `/` | Division | `expr 10 / 2` |
| `%` | Modulus | `expr 10 % 3` |

## Arithmetic Expansion

**Definition:** Performs arithmetic inside `$(( ))`.

**Syntax:**

```sh
$((expression))
```

**Example:**

```sh
a=10
b=20
echo $((a + b))
```

## Command Substitution

**Definition:** Stores the output of a command in a variable.

**Syntax:**

```sh
variable=$(command)
```

**Examples:**

```sh
today=`date`
echo $today
```

Modern Bash also supports:

```sh
today=$(date)
echo "$today"
```
