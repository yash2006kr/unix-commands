# 08. Input/Output and Pipes

Redirection changes where input comes from or where output goes. Pipes connect the output of one command to another command.

## Output Redirection `>`

**Definition:** Sends command output to a file and replaces existing content.

**Syntax:**

```sh
command > file
```

**Example:**

```sh
ls > output.txt
echo "Hello" > output.txt
```

## Append Redirection `>>`

**Definition:** Sends command output to the end of a file.

**Syntax:**

```sh
command >> file
```

**Example:**

```sh
date >> output.txt
echo "Good Morning" >> output.txt
```

## Input Redirection `<`

**Definition:** Takes command input from a file.

**Syntax:**

```sh
command < file
```

**Example:**

```sh
wc -l < input.txt
sort < student
```

## Pipes `|`

**Definition:** Sends the output of one command as input to another command.

**Syntax:**

```sh
command1 | command2
```

**Examples:**

```sh
cat students | grep "ISE"
ls | sort
```

## Command Substitution

**Definition:** Replaces a command with its output.

**Syntax:**

```sh
`command`
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

## Quoting

**Definition:** Quoting controls how the shell treats special characters.

| Quote Type | Meaning |
|---|---|
| Single quotes `' '` | Preserve text exactly |
| Double quotes `" "` | Allow variable and command expansion |
| Backslash `\` | Escape one character |

**Examples:**

```sh
HOME="/home/yash"
echo '$HOME'
echo "$HOME"
echo "Cost is \$100"
```
