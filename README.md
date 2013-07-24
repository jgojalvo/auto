# Auto Setup, Usage, and Examples

[AUTO07p](http://indy.cs.concordia.ca/auto/) is a fantastic numerical bifurcation analysis tool --
it's just hard to use sometimes.
This repository aims to collect everything necessary to get up and running with AUTO.

# Installing AUTO

Get the [latest version](http://sourceforge.net/projects/auto-07p/files/auto07p/)
and unpack the downloaded archive.

Run `./configure` inside the expanded directory.
After `./configure` and `make`, move the `auto` directory to `home` 
and let your bash know where `auto` lives by adding this to your `.bashrc`:

    $ source $HOME/auto/07p/cmds/auto.env.sh

Don't forget to open a new `bash` window or `source` `.bashrc`:

    $ source ~/.bashrc

---
**Note** that `auto.env.sh` does the following

```bash
AUTO_DIR=$HOME/auto/07p
PATH=$AUTO_DIR/cmds:$AUTO_DIR/bin:$PATH
```

So if you want `auto` to live somewhere else, e.g. `$HOME/local/` then
just alter `auto.env.sh` accordingly.

---

## Extra Steps

### Plotting

In case plotting is to be done with Tk (...) and not `matplotlib`, ensure that 
you have these packages installed before calling `auto -i`:

* `python-matplotlib-tk` and `ipython` (Fedora)
* `python-matplotlib` and `ipython` (Ubuntu, Debian)

# Running AUTO

## Interactive Mode

Once `$AUTO\_DIR/cmds` is on your path, start an interactive `auto` session:

    $ auto

This command runs the Python script (thus equivalent to)

    $ $AUTO\_DIR/python/interactiveBindings.py
