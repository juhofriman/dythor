# Dythor

Dythor is a utility script thingy to run different python versions easily using docker.

Use case is that to my experience, it's super hard to create *good* python environment in OS X. With dythor, you can just say:

```shell
$ dythor run 3.7 --version
Python 3.7.0
$ dythor run 2.7 --version
Python 2.7.15
```

This means that one can do for example this:

```shell
$ echo -e 'import sys\nprint("Holla! Running on:")\nprint(sys.version)' > script.py
$ cat script.py
import sys
print("Holla! Running on:")
print(sys.version)
$
$
$ dythor run 2.7 script.py
Holla! Running on:
2.7.15 (default, Jul 17 2018, 11:47:50)
[GCC 6.3.0 20170516]
$
$
$ dythor run 3.7 script.py
Holla! Running on:
3.7.0 (default, Jul 17 2018, 11:04:33)
[GCC 6.3.0 20170516]
```

## Installation

Clone this repo and make a bin wrapper passing all arguments to `dythor.sh`. Something like following:

```
#! /bin/bash

~/code/dythor/dythor.sh $@
```

## Usage

Use `dythor list-remote` to list available docker tags.

Use `dythor run <TAG>` just as you would use `python` command on your machine.

Use `dythor shell <TAG>` to open a shell to the container. This is now the way to install requirements and such.

Use `dythor help` to get some help.

Use `dythor help COMMAND` (like `dythor help run`) to get help on commmands.

```shell
$ dythor
usage: dythor <command>

Commands:

	help 		 Show help
	list-local 	 List python versions locally available (i.e runs without fetch)
	list-remote 	 List available python versions
	run 		 Run python environment
	shell 		 Open shell to environment
```

## Need binary named python?

Make an alias!

```shell
$ alias python="dythor run 2.7"
$ python --version
Python 2.7.15
$ python --version
Python 2.7.15
$ python --version
Python 2.7.15
$ alias python="dythor run 3.7"
$ python --version
Python 3.7.0
```

Or use `.bash_profile` or what ever is your poison.

## What's missing?

* Port binding for running services
* Lifecycle of containers (nuke container and such)
* Nicer documentation for scripts
* Lot's of stuff actually :P
