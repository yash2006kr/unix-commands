# 13. Shell Scripting

Shell scripting means writing a group of Unix/Linux commands in a file and executing them together.

## Shell Script Structure

**Definition:** A shell script usually starts with a shebang, followed by commands.

**Syntax:**

```sh
#!/bin/bash
commands
```

**Example:**

```sh
#!/bin/bash

echo "Hello"
```

## Shebang

**Definition:** The shebang tells the system which shell should run the script.

**Syntax:**

```sh
#!/bin/bash
```

Common shebangs:

| Shebang | Meaning |
|---|---|
| `#!/bin/sh` | POSIX shell |
| `#!/bin/bash` | Bash shell |

## Running a Script

**Syntax:**

```sh
chmod +x hello.sh
./hello.sh
```

**Example:**

```sh
chmod +x test.sh
./test.sh
```

## User Input

**Definition:** User input is read using `read`.

**Example:**

```sh
#!/bin/bash

echo "Enter name"
read name

echo "Hello $name"
```

## Variables

**Definition:** Variables store values for reuse.

**Example:**

```sh
#!/bin/bash

name="yash"
echo "Hello $name"
```

## Command-Line Arguments

**Definition:** Arguments are values passed while running a script.

**Example:**

```sh
#!/bin/bash

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "Total arguments: $#"
echo "All arguments: $@"
```

Run:

```sh
./test.sh 100 200
```

## Conditions

**Example:**

```sh
#!/bin/bash

echo "Enter age"
read age

if [ $age -ge 18 ]
then
    echo "Eligible"
else
    echo "Not eligible"
fi
```

## Loops

**Example:**

```sh
#!/bin/bash

for i in 1 2 3 4 5
do
    echo $i
done
```

## File Operations

**Example:**

```sh
#!/bin/bash

file="test.txt"
if [ -f $file ]
then
    echo "$file exists"
else
    echo "$file does not exist"
fi
```

## Practical Shell Scripts

### Complete Small Shell Script

```sh
#!/bin/bash

echo "Enter name"
read name

echo "Enter age"
read age

if [ $age -ge 18 ]
then
    echo "$name is eligible"
else
    echo "$name is not eligible"
fi
```

Run:

```sh
chmod +x test.sh
./test.sh
```

### Script with Command-Line Arguments

```sh
#!/bin/bash

if [ $# -eq 0 ]
then
    echo "No arguments supplied"
    exit 1
fi

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "Total arguments: $#"
```

Run:

```sh
./test.sh 100 200
```

Output:

```text
Script name: ./test.sh
First argument: 100
Second argument: 200
Total arguments: 2
```

### Script Using `while`

```sh
#!/bin/bash

i=1

while [ $i -le 5 ]
do
    echo $i
    i=`expr $i + 1`
done
```

### Script Using `case`

```sh
#!/bin/bash

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
