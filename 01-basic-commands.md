# 01. Basic Unix Commands

Basic Unix commands are used to move around the file system, create files and directories, copy or rename data, remove files, and display text.

## `pwd`

**Definition:** Prints the absolute path of the current working directory.

**Syntax:**

```sh
pwd
```

**Example:**

```sh
pwd
```

Output:

```text
/home/student
```

## `ls`

**Definition:** Lists files and directories.

**Syntax:**

```sh
ls [options] [path]
```

**Examples:**

```sh
ls
ls -l
ls -a
ls -lh /home/student
```

Common options:

| Option | Meaning |
|---|---|
| `-l` | Long listing format |
| `-a` | Show hidden files |
| `-h` | Human-readable file sizes |
| `-R` | List directories recursively |

## `cd`

**Definition:** Changes the current working directory.

**Syntax:**

```sh
cd [directory]
```

**Examples:**

```sh
cd Documents
cd ..
cd ~
cd /
cd -
```

## `mkdir`

**Definition:** Creates a new directory.

**Syntax:**

```sh
mkdir [options] directory_name
```

**Examples:**

```sh
mkdir projects
mkdir -p college/unix/notes
```

`-p` creates parent directories if they do not already exist.

## `rmdir`

**Definition:** Removes an empty directory.

**Syntax:**

```sh
rmdir directory_name
```

**Example:**

```sh
rmdir old_folder
```

Note: `rmdir` works only on empty directories.

## `cat`

**Definition:** Displays file content, creates files, or joins files.

**Syntax:**

```sh
cat [options] file_name
```

**Examples:**

```sh
cat test.txt
cat > test.txt
cat >> test.txt
```

Press `Ctrl+D` to stop typing when using `cat > file`.

## `cp`

**Definition:** Copies files or directories.

**Syntax:**

```sh
cp [options] source destination
```

**Examples:**

```sh
cp test.txt copy.txt
cp test.txt /home/student
cp -r unix unix_backup
```

`-r` copies directories recursively.

## `mv`

**Definition:** Moves or renames files and directories.

**Syntax:**

```sh
mv source destination
```

**Examples:**

```sh
mv test.txt newtest.txt
mv newtest.txt /home/student
mv unix unix_old
```

## `rm`

**Definition:** Removes files or directories.

**Syntax:**

```sh
rm [options] file_name
```

**Examples:**

```sh
rm test.txt
rm -i test.txt
rm -r unix_old
```

Common options:

| Option | Meaning |
|---|---|
| `-i` | Ask before deleting |
| `-r` | Remove directories recursively |
| `-f` | Force delete without confirmation |

## `echo`

**Definition:** Displays text or variable values on the terminal.

**Syntax:**

```sh
echo [text]
```

**Examples:**

```sh
echo "Hello"
name="yash"
echo "Hello $name"
echo "Good Morning" > test.txt
```
