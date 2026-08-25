unbind C-b
set -g prefix C-Space
bind C-Space send-prefix

set -g mouse on

set -g base-index 1
setw -g pane-base-index 1

set -g renumber-windows on

# Vim like selection and copy text
bind -T copy-mode-vi v send-keys -X begin-selection
bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'wcopy'
