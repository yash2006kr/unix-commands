# 11. User Communication

User communication commands are used to send messages to logged-in users.

## `write`

**Definition:** Sends a message to another logged-in user.

**Syntax:**

```sh
write username [terminal]
```

**Example:**

```sh
write yash tty1
```

Type the message and press `Ctrl+D` to finish.

## `mesg`

**Definition:** Controls whether other users can send messages to your terminal.

**Syntax:**

```sh
mesg [y|n]
```

**Examples:**

```sh
mesg
mesg y
mesg n
```

## `wall`

**Definition:** Sends a message to all logged-in users.

**Syntax:**

```sh
wall [message]
```

**Examples:**

```sh
wall "System will restart"
```

## `mail`

**Definition:** Sends or reads mail from the command line.

**Syntax:**

```sh
mail username
mail -s "subject" username
```

**Examples:**

```sh
mail yash
```

Note: `mail` requires mail service configuration on the system.
