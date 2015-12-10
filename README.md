# davidglidden’s dotfiles
***
## N.B.
This is a modified fork of [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles) 
There are many great things in these dotfiles, but everyone is different (and I can be rather lazy), so I’ve taken what works, and eliminated those elements which I do not use. Please look at his work directly to see what you’re getting in to.

## Installation:
### Using Git and the bootstrap script

You can clone the repository wherever you want. (I keep it in `~/Projects/GitRepos/GitHub/dotfiles`, with `~/dotfiles` as a symlink.)

**Step 1.** `Bootstrap.sh` *(Prepare the way)*

```bash
git clone https://github.com/davidglidden/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bootstrap.sh
```

Specify the `$PATH`

Example `~/.path` file that adds `/usr/local/bin` to the `$PATH`:

```bash
export PATH="/usr/local/bin:$PATH"
```

Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

My `~/.extra` looks something like this:

```bash
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME=“David Glidden”
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL=“d@davidglidden.eu”
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

`~/.extra` can override settings, functions and aliases from my dotfiles. It’s probably better to [fork this repository](https://github.com/davidglidden/dotfiles/fork) instead, though.


**Step 2:** `brew.sh` *(Install [Homebrew](http://brew.sh/) formulae)*

```bash
./brew.sh
```

**Step 3:** `osxsoftwarebase.sh` *(install all possible 3rd party OS X apps from Homebrew)*

```bash
./osxsoftwarebase.sh
```

**Step 4:** `.osx` *(Save time: Sensible OS X defaults)*
Sensible OS X defaults

```bash
./.osx
```
