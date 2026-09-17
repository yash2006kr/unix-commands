# 09. File Permissions and Ownership

Unix controls file access using permissions for the owner, group, and others.

## File Permission Format

**Definition:** Long listing output shows file type and permissions.

**Example:**

```sh
ls -l test.txt
```

Output:

```text
-rw-r--r-- 1 student student 120 Sep 17 file.txt
```

Meaning:

| Part | Meaning |
|---|---|
| `-` | Regular file |
| `d` | Directory |
| `r` | Read permission |
| `w` | Write permission |
| `x` | Execute permission |

## User, Group, Others

| Section | Meaning |
|---|---|
| User | File owner |
| Group | Users in the file group |
| Others | Everyone else |

For `rw-r--r--`:

| User | Group | Others |
|---|---|---|
| `rw-` | `r--` | `r--` |

## Numeric Permissions

| Number | Permission |
|---|---|
| `4` | Read |
| `2` | Write |
| `1` | Execute |
| `0` | No permission |

Examples:

| Mode | Meaning |
|---|---|
| `777` | Read, write, execute for all |
| `755` | Owner all, others read and execute |
| `644` | Owner read and write, others read |

## `chmod`

**Definition:** Changes file permissions.

**Syntax:**

```sh
chmod mode file
```

**Examples:**

```sh
chmod 755 test.sh
chmod u+x test.sh
chmod g-w test.txt
chmod o+r test.txt
chmod a+x script.sh
```

## Symbolic Mode

**Definition:** Changes permissions using letters.

**Syntax:**

```sh
chmod who operator permission file
```

| Symbol | Meaning |
|---|---|
| `u` | User |
| `g` | Group |
| `o` | Others |
| `a` | All |
| `+` | Add permission |
| `-` | Remove permission |
| `=` | Set exact permission |

**Example:**

```sh
chmod u+x test.sh
```

## Octal Mode

**Definition:** Changes permissions using numbers.

**Syntax:**

```sh
chmod 755 file
```

**Example:**

```sh
chmod 755 test.sh
```

## `chown`

**Definition:** Changes file owner and group.

**Syntax:**

```sh
chown owner file
chown owner:group file
```

**Examples:**

```sh
chown yash test.txt
chown yash:developers test.txt
```

## `umask`

**Definition:** Sets default permission restrictions for newly created files and directories.

**Syntax:**

```sh
umask [mode]
```

**Examples:**

```sh
umask
umask 022
touch file.txt
mkdir folder
```

With `umask 022`, new files commonly get `644` and directories get `755`.
