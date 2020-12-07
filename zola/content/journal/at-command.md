+++
title = "at command"
date = 2020-12-07

[taxonomies]
tags = ["cli", "command", "shell", "unix"]

[extra.cover]
position = "center"
src = "/img/IMG_7728.jpg"
# Unsplash option:
# src = "/img/unsplash/jbQvJx2EWnU.jpg"
# https://unsplash.com/photos/jbQvJx2EWnU

[extra.cover.attribution]
name = "Travis Miller"
link = "/"
+++

> `at` - execute commands at a later time

*It’s like a one-off cron job.*

<!-- more -->

I’ve had a task to perform verification of a new import script against the
current implementation. Verification involves comparing the result of data 
changes between two days. However, I’ve failed to capture a snapshot of the
data two days in a row more than once now. So, this time, when I triggered a
snapshot of the data, I've set an *at-job* to run the same job again tomorrow
so that I get that snapshot to verify later.

## Creating an “at-job”

There are a couple of ways to create the job.

Pass the command directly in through [standard input]:

```console
$ echo 'make pg-pull' | at 9am tomorrow
```

Or; set the command interactively:

```console
$ at 9am tomorrow
make pg-pull
^D
```

When creating a job interactively, you:

1. type in the `at …` command, press `ENTER`
2. type in the command(s) to run later, press `ENTER` for each line
3. then press [`Control-D`](@/journal/control-c-vs-control-d.md) to end the input

Now, my `make pg-pull` command will run tomorrow at 9am. Pretty obvious. Also
nice that the time and date specifiers are relatively friendly.

## Where’s the proof?

List the jobs I've created:

```console
$ at -l
3	Tue Dec  8 09:00:00 2020
```

See what’s in the job:

```console
$ at -c 3
```
```bash
#!/bin/sh
# atrun uid=502 gid=20
# mail travis 0
PWD=/Users/travis/work/tps/tpsdata; export PWD
OLDPWD=/Users/travis/work/tps/tpsdata; export OLDPWD
_=/usr/bin/at; export _
cd /Users/travis/work/tps/tpsdata || {
	 echo 'Execution directory inaccessible' >&2
	 exit 1
}
OLDPWD=/Users/travis/work/tps/tpsdata; export OLDPWD
make pg-pull
```

💡 A cool point is that the job will be generated with your current environment,
including your current directory. So tomorrow when it runs, it will change back
to the directory I’m currently in and run the command from there.

## Now what?

Now we wait.

## References
- [`at` command] on Wikipedia
- [standard input] on Wikipedia
- [The Single UNIX Specification]


[`at` command]: https://en.wikipedia.org/wiki/At_(command)
[standard input]: https://en.wikipedia.org/wiki/Standard_streams#Standard_input_(stdin)
[The Single UNIX Specification]: https://pubs.opengroup.org/onlinepubs/9699919799/utilities/at.html
