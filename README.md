tmux-mac
========

Search man from your tmux sesseion

# Description

Just do man.

# Requirements

* [tmux](https://tmux.github.io/)
* [tpm](https://github.com/tmux-plugins/tpm)

# Install

Install tpm and add the following line to your `~/.tmux.conf`.

```bash
set-option -g @plugin 'knakayama/tmux-man'
```

then, press `Prefix + I` in tmux session.

# Usage

Default key binding is `Prefix + m`. If you change this key binding, set the following line to your `~/.tmux.conf`.

```bash
set-option -g @man-key 'x' # or your favorite key binding
```

Default `split-window` length is 10. If you change this length, set the following line to your `~/.tmux.conf`.

```bash
set-option -g @man-len 15 # or your favorite length
```

# License

MIT

# Author

[knakayama](https://github.com/knakayama)
