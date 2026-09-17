# 02. Shell Variables and Input

Shell variables store values that can be reused in commands and scripts. Input commands help read values from the user.

## Shell Variables

**Definition:** A shell variable is a name that stores a value.

**Syntax:**

```sh
variable_name=value
```

Do not add spaces around `=`.

**Examples:**

```sh
name="yash"
age=20
echo "$name"
echo "$age"
```

## `read`

**Definition:** Reads input from the user and stores it in a variable.

**Syntax:**

```sh
read variable_name
read -p "message" variable_name
```

**Examples:**

```sh
read name
echo "Hello $name"

echo "Enter age"
read age
echo "Age is $age"
```

## `set`

**Definition:** Displays shell variables or assigns positional parameters.

**Syntax:**

```sh
set
set value1 value2 value3
```

**Example:**

```sh
set 100 200 300
echo "$1"
echo "$2"
echo "$3"
```

## `shift`

**Definition:** Moves positional parameters to the left.

**Syntax:**

```sh
shift [number]
```

**Example:**

```sh
set 100 200 300
echo "$1"
shift
echo "$1"
```

Output:

```text
100
200
```

## Positional Parameters

**Definition:** Positional parameters hold command-line argument values.

**Syntax:**

```sh
$0 $1 $2 $3 ...
```

**Example script:**

```sh
#!/bin/sh
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
```

Run:

```sh
sh test.sh 100 200
```

## Special Parameters

| Parameter | Meaning |
|---|---|
| `$0` | Script name |
| `$1`, `$2`, ... | Command-line arguments |
| `$#` | Number of arguments |
| `$*` | All arguments as one string |
| `$@` | All arguments as separate values |
| `$?` | Exit status of previous command |
| `$$` | Process ID of current shell |

**Example:**

```sh
#!/bin/sh
echo "Total arguments: $#"
echo "All arguments using star: $*"
echo "All arguments using at: $@"
ls
echo "Exit status: $?"
```
