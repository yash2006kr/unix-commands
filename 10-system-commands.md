# 10. System Commands

System commands display information about users, processes, system details, dates, calendars, and calculations.

## `ps`

**Definition:** Displays currently running processes.

**Syntax:**

```sh
ps [options]
```

**Examples:**

```sh
ps
ps -ef
```

## `who`

**Definition:** Shows users currently logged in.

**Syntax:**

```sh
who
```

**Example:**

```sh
who
```

## `uname`

**Definition:** Displays system information.

**Syntax:**

```sh
uname [options]
```

**Examples:**

```sh
uname
uname -a
uname -r
```

Common options:

| Option | Meaning |
|---|---|
| `-a` | All system information |
| `-r` | Kernel release |
| `-m` | Machine hardware name |

## `date`

**Definition:** Displays or formats the current date and time.

**Syntax:**

```sh
date [format]
```

**Examples:**

```sh
date
date "+%d-%m-%Y"
date "+%H:%M:%S"
```

## `cal`

**Definition:** Displays a calendar.

**Syntax:**

```sh
cal [month] [year]
```

**Examples:**

```sh
cal
cal 9 2026
cal 2026
```

## `bc`

**Definition:** Performs calculator operations, including decimal arithmetic.

**Syntax:**

```sh
bc
echo "expression" | bc
```

**Examples:**

```sh
bc
echo "10 + 20" | bc
```
