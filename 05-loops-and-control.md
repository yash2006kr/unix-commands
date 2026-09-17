# 05. Loops and Control Statements

Loops repeat commands. Control statements change the normal flow of execution.

## `for`

**Definition:** Repeats commands for each value in a list.

**Syntax:**

```sh
for variable in list
do
    commands
done
```

**Example:**

```sh
for i in 1 2 3 4 5
do
    echo $i
done
```

## `while`

**Definition:** Repeats commands while a condition is true.

**Syntax:**

```sh
while [ condition ]
do
    commands
done
```

**Example:**

```sh
i=1
while [ $i -le 5 ]
do
    echo $i
    i=`expr $i + 1`
done
```

## `break`

**Definition:** Stops a loop immediately.

**Syntax:**

```sh
break
```

**Example:**

```sh
i=1
while [ "$i" -le 10 ]
do
    if [ "$i" -eq 5 ]
    then
        break
    fi
    echo "$i"
    i=$((i + 1))
done
```

## `continue`

**Definition:** Skips the current loop iteration and moves to the next one.

**Syntax:**

```sh
continue
```

**Example:**

```sh
for i in 1 2 3 4 5
do
    if [ "$i" -eq 3 ]
    then
        continue
    fi
    echo "$i"
done
```

## `exit`

**Definition:** Terminates a script or shell with an exit status.

**Syntax:**

```sh
exit [status]
```

**Example:**

```sh
if [ ! -f data.txt ]
then
    echo "File missing"
    exit 1
fi
echo "File found"
exit 0
```
