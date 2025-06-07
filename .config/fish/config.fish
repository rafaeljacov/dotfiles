set -g fish_greeting

# abbr ino arduino-cli
abbr vim nvim
abbr vid 'neovide'
abbr z zellij

alias  l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza -T --icons=auto' # list tree

if status is-interactive
    # Commands to run in interactive sessions can go here

    # Random Pokemon Sprite
    set -l pokemons "charmander" "krabby" "froakie" "frogadier" "greninja" "pikachu" "bulbasaur" "ivysaur" "krabby" "squirtle"
    krabby name --no-title (random choice $pokemons)
end

function fish_user_key_bindings
    # Execute this once per mode that emacs bindings should be used in
    fish_default_key_bindings -M insert

    # Then execute the vi-bindings so they take precedence when there's a conflict.
    # Without --no-erase fish_vi_key_bindings will default to
    # resetting all bindings.
    # The argument specifies the initial mode (insert, "default" or visual).
    fish_vi_key_bindings --no-erase insert

    bind -M insert ctrl-n down-or-search
    bind -M insert ctrl-p up-or-search
end

# Transient Prompt
function starship_transient_prompt_func
    starship module character
end

# Enable node & npm while ignoring the stdout
# nvm -s use latest

zoxide init --cmd cd fish | source
starship init fish | source
enable_transience

if command -q nix-your-shell
    nix-your-shell fish | source
end
