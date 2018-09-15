# Tmux ERB Parser
[![Build Status](https://travis-ci.org/epaew/tmux-erb-parser.svg?branch=master)](https://travis-ci.org/epaew/tmux-erb-parser)

A Tmux plugin to load tmux.conf.erb  
[What's ERB?](https://ruby-doc.org/stdlib-2.5.1/libdoc/erb/rdoc/ERB.html)

## Requirements
* bash
    * For script execution.
    * You can use whatever you like as the default shell.
* git
* ruby:
    * 2.3 or higher is required.
* tmux

## How to use
1. Create your `tmux.conf.erb` and place it.
    * By default, tmux-erb-parser loads all `*.erb` files in `~/.config/tmux/`
    * Or you can change the load path. (Please see below.)
2. Install tmux-erb-parser and run tmux!

### Install with tpm (Tmux Plugin Manager)
* Put this at the bottom of `~/.tmux.conf` (**Not your tmux.conf.erb !**):
    ```tmux
    setenv -g TMUX_CONF_EXT_PATH "path/to/tmux.conf.erb" # set your tmux.conf.erb's path
    # Note: You can specify multiple files using glob expressions. This is parsed by bash.

    set -g @plugin 'epaew/tmux-erb-parser'
    set -g @plugin 'tmux-plugins/tpm'
    # and list other plugins you want to install

    # Initialize Tmux plugin manager (keep this line at the very bottom of tmux.conf)
    run '~/.tmux/plugins/tpm/tpm'
    ```

* Run tmux and press `Prefix + I` to install plugins!

### Install and configure with git
* Install:
    ```bash
    git clone https://github.com/epaew/tmux-erb-parser ~/.tmux/plugins/tmux-erb-parser
    ```

* Configure:
    * Put this in `~/.tmux.conf`:
    ```tmux
    run '~/.tmux/plugins/tmux-erb-parser/bin/tmux-erb-parser --inline path/to/tmux.conf.erb'
    ```

## License
[MIT](LICENSE)
