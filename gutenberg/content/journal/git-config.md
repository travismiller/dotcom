+++
title = "Git Config"
date = 2018-04-18

[extra.cover]
src = "/img/git-config.png"
position = "left-top"
+++

Here's a handy trick for using your preferred email address based on the
directory context you're working in. This helps prevent accidentally committing
to a Git repository with the wrong email address. Now work, personal, and
freelance code commits always have the appropriate commit address.

<!-- more -->

In my home directory, I have `~/.gitconfig`, the standard file for global
options. Obviously there's the global default under `[user]`. The magic happens
with `[includeIf "…"]`. Once I'm in one of those work directories, the path
based configuration will override the global default!

### ~/.gitconfig

```ini
[user]
    name = Travis Miller
    email = travis@travismiller.com

[includeIf "gitdir:~/work/broco/"]
    path = /Users/tmiller/work/broco/.gitconfig
[includeIf "gitdir:~/work/gitlab/"]
    path = /Users/tmiller/work/gitlab/.gitconfig
[includeIf "gitdir:~/work/travismiller/"]
    path = /Users/tmiller/work/travismiller/.gitconfig
[includeIf "gitdir:~/work/underdogsystems/"]
    path = /Users/tmiller/work/underdogsystems/.gitconfig
```

### ~/work/broco/.gitconfig

```ini
[user]
    email = tmiller@broco.com
```
