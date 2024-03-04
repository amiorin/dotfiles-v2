/opt/homebrew/bin/brew shellenv | source
# micromamba shell hook --shell fish | source 
starship init fish | source
zoxide init fish | source
direnv hook fish | source
atuin init fish | source
fish_vi_key_bindings
# https://github.com/jimeh/tmuxifier
fish_add_path $HOME/.tmux/plugins/tmuxifier/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/go/bin
fish_add_path /opt/homebrew/opt/avr-gcc@8/bin
fish_add_path /Applications/WezTerm.app/Contents/MacOS
fish_add_path /Applications/neovide.app/Contents/MacOS
# tmuxifier init - fish | source

set -gx EDITOR "emacsclient -a '' -t"
# for lazygit https://github.com/jesseduffield/lazygit/blob/master/docs/Config.md#user-config
# set -gx XDG_CONFIG_HOME "$HOME/.config"
alias emacs=$EDITOR
set -gx POETRY_VIRTUALENVS_IN_PROJECT true
# https://www.packetmischief.ca/2016/09/06/ssh-agent-on-os-x/
set -gx SSH_AUTH_SOCK (launchctl getenv SSH_AUTH_SOCK)
set -g fish_greeting

# cursor style like vim
set fish_vi_force_cursor
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore
set fish_cursor_external line
set fish_cursor_visual block

# https://the.exa.website/
alias ls=eza
alias ll="ls -lh"
alias l="ls -la"
alias rt="ls -l --sort newest"
alias u="cd .."
alias n="NVIM_APPNAME=nvim neovide"
alias ze="zellij attach --create LOCAL"
alias tldrf='tldr --list | fzf --preview "tldr {1}" --preview-window=right,60% | xargs tldr'

function nvims
    set items cool rocks default kickstart NvChad AstroNvim LazyVim jose
    set config (printf "%s\n" $items | fzf --prompt=" Neovim Config » " --height=~50% --layout=reverse --border --exit-0)
    if [ -z $config ]
        echo "Nothing selected"
        return 0
    else if [ $config = default ]
        set config ""
    end
    env NVIM_APPNAME=$config nvim $argv
end

# test sqls from scratch
alias emacs-sql="/opt/homebrew/bin/emacs --init-directory $HOME/.emacs.sql"
# test sqls
alias emacs-space="/opt/homebrew/bin/emacs --init-directory $HOME/.emacs.space"
# test fuzzy search
alias emacs-doom-dev="env DOOMDIR=$HOME/.doom-dev /opt/homebrew/bin/emacs --init-directory $HOME/.emacs.doom-dev"
function e
    set items doom doom-dev space sql
    set config (printf "%s\n" $items | fzf --prompt=" » " --height=~50% --layout=reverse --border --exit-0)
    if [ -z $config ]
        echo "Nothing selected"
        return 0
    else if [ $config = doom ]
        eval $EDITOR
        return 0
    else if [ $config = doom-dev ]
         env DOOMDIR=$HOME/.doom-dev /opt/homebrew/bin/emacs --init-directory $HOME/.emacs.doom-dev
         return 0
    else if [ $config = sql ]
        set config "$HOME/.emacs.sql"
    else if [ $config = space ]
        set config "$HOME/.emacs.space"
    end
    /opt/homebrew/bin/emacs --init-directory $config
end

function login_aws
    set items single-stg single-prod multi-stg multi-prod
    set account (printf "%s\n" $items | fzf --prompt=" OneFootball AWS account » " --height=~50% --layout=reverse --border --exit-0)
    if [ -z $account ]
        echo "Nothing selected"
        return 0
    end
    set -gx SAML2AWS_IDP_PROVIDER JumpCloud
    set -gx SAML2AWS_MFA Auto
    set -gx SAML2AWS_PROFILE default
    if [ $account = multi-prod ]
        echo "Connecting to OneFootball Prod"
        set -gx SAML2AWS_URL https://sso.jumpcloud.com/saml2/awsproddataeng
        saml2aws login --force
    else if [ $account = single-stg ]
        echo "Connecting to Data Staging"
        set -gx SAML2AWS_URL https://sso.jumpcloud.com/saml2/awsdatateamstg
        saml2aws login --force
    else if [ $account = multi-stg ]
        echo "Connecting to OneFootball Staging"
        set -gx SAML2AWS_URL https://sso.jumpcloud.com/saml2/awsstgdataeng
        saml2aws login --force
    else if [ $account = single-prod ]
        echo "Connecting to Data Prod"
        set -gx SAML2AWS_URL https://sso.jumpcloud.com/saml2/awsdatateam
        saml2aws login --force
    end
end
