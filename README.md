tmux-man
========

Search man from your tmux sesseion

# Description

Prompts for a manual and opens it in a tmux split.

# Requirements

* [tmux](https://tmux.github.io/)
* [tpm](https://github.com/tmux-plugins/tpm)
* bash >= 4.x

# Install

Install tpm and add the following line to your `~/.tmux.conf`.

```bash
set-option -g @plugin 'knakayama/tmux-man'
```

then, press `Prefix + I` in tmux session. When prompted select eg. `m man`. Available abbreviations are:

| Abbr | Command     |
| ---- | ----------- |
| m    | man         |
| a    | ansible-doc |
| r    | rfc         |
| h    | httpdoc     |

# Usage

Default key binding is `Prefix + m`. If you want to change this key binding, set the following line in your `~/.tmux.conf`.

```bash
set-option -g @man-key 'x' # or your favorite key binding
```

Default `split-window` size is 10. If you want to change this size, set the following line to your `~/.tmux.conf`.

```bash
set-option -g @man-size 15 # or your favorite size
```

Default `split-window` orientation is vertical. If you want to change this orientation, set the following line in your `~/.tmux.conf`.

```bash
set-option -g @man-orientation 'h'
```

# License

MIT

# Author

[knakayama](https://github.com/knakayama)
