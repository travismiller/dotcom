+++
title = "Control-C vs Control-D"
date = 2020-12-04

[taxonomies]
tags = ["cli", "command", "shell", "shortcut", "unix"]

# https://unsplash.com/photos/zpwpVBjMX3g
[extra.cover]
position = "center"
src = "/img/unsplash/zpwpVBjMX3g.jpg"

[extra.cover.attribution]
name = "Dustin Tramel"
link = "https://unsplash.com/photos/zpwpVBjMX3g"
+++

When starting to use the terminal, it’s inevitable that you come across running
a command that remains running and the direction is to press `Control-C` to
stop it.

And sometimes, you may be directed to press `Control-D`.

But what’s the difference? Why did one work one time and not the other?

<!-- more -->

A simple question you can ask yourself:

> *Has the command prompted for input?*

## Demonstration time

So, does this command prompt for input?

```console
$ npm start
```
```
> school-locator@0.1.0 start /Users/travis/work/tps/school-locator
> react-scripts start

Starting the development server...

Compiled successfully!

You can now view school-locator in the browser.

  Local:            http://localhost:3001/
  On Your Network:  http://192.168.1.65:3001/

```

No. It’s just a running development server. So `Control-C`.

```
^C
```

*Think of it as “**C**ancel”.*

Let’s try another.

Does this command prompt for input?

```console
$ pgcli
```
```
Server: PostgreSQL 13.0
Version: 3.0.0
Chat: https://gitter.im/dbcli/pgcli
Home: http://pgcli.com
travis@/tmp:travis>
```

Yes. It’s expecting me to input some SQL queries. So `Control-D`.

```
^D
Goodbye!
```

*I don’t have a handy mnemonic but I remember it as part of the `C`/`D` pair.*

To re-enforce using `Control-D` to quit a prompt, consider a typical
terminal: It’s a prompt, and waiting for your input.

```console
$
```
---
```
^D
```

My [iTerm2] window closed. But [Terminal.app] may just say:


```
[Process completed]
```

## Summary

- `Control-C` if it’s just running, doing it’s thing.
- `Control-D` if it’s waiting on you.

## References

- [Control-C]
- [Control-D]
- [ASCII control codes]
- [iTerm2]
- [Terminal.app]
- [pgcli]

[Control-C]: https://en.wikipedia.org/wiki/Control-C
[Control-D]: https://en.wikipedia.org/wiki/End-of-Transmission_character
[ASCII control codes]: https://en.wikipedia.org/wiki/C0_and_C1_control_codes#Basic_ASCII_control_codes
[iTerm2]: https://iterm2.com/
[Terminal.app]: https://en.wikipedia.org/wiki/Terminal_(macOS)
[pgcli]: https://www.pgcli.com/
