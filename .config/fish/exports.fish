#!/usr/bin/env bash#!/usr/bin/env bash

# Make neovim the default editor.
set -x EDITOR 'nvim';

# Enable persistent REPL history for `node`.
set -x NODE_REPL_HISTORY ~/.node_history;
# Allow 32³ entries; the default is 1000.
set -x NODE_REPL_HISTORY_SIZE '32768';
# Use sloppy mode by default, matching web browsers.
set -x NODE_REPL_MODE 'sloppy';

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
set -x PYTHONIOENCODING 'UTF-8';

# Increase Bash history size. Allow 32³ entries; the default is 500.
set -x HISTSIZE '32768';
set -x HISTFILESIZE "${HISTSIZE}";
# Omit duplicates and commands that begin with a space from history.
set -x HISTCONTROL 'ignoreboth';

# Prefer US English and use UTF-8.
set -x LANG 'en_US.UTF-8';
set -x LC_ALL 'en_US.UTF-8';

# Highlight section titles in manual pages.
set -x LESS_TERMCAP_md "${yellow}";

# Don’t clear the screen after quitting a manual page.
set -x MANPAGER 'less -X';

# Avoid issues with `gpg` as installed via Homebrew.
# https://stackoverflow.com/a/42265848/96656
set -x GPG_TTY $(tty);

# Hide the “default interactive shell is now zsh” warning on macOS.
set -x BASH_SILENCE_DEPRECATION_WARNING 1;

# Add '~bin' to the $PATH
set -x PATH "$HOME/bin:$PATH";
# Android Dev setup
set -x ANDROID_HOME '$HOME/Library/Android/sdk'
set -x PATH '$PATH:$ANDROID_HOME/emulator'
set -x PATH '$PATH:$ANDROID_HOME/tools'
set -x PATH '$PATH:$ANDROID_HOME/tools/bin'
set -x PATH '$PATH:$ANDROID_HOME/platform-tools'
#!/usr/bin/env bash#!/usr/bin/env bash
