/opt/homebrew/bin/brew shellenv | source
starship init fish | source
zoxide init fish | source
direnv hook fish | source
fish_vi_key_bindings
# https://github.com/jimeh/tmuxifier
fish_add_path $HOME/.tmux/plugins/tmuxifier/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/go/bin
fish_add_path /opt/homebrew/opt/avr-gcc@8/bin
fish_add_path /Applications/WezTerm.app/Contents/MacOS
fish_add_path /Applications/neovide.app/Contents/MacOS
tmuxifier init - fish | source

set -gx EDITOR nvim
set -gx POETRY_VIRTUALENVS_IN_PROJECT true
# https://www.packetmischief.ca/2016/09/06/ssh-agent-on-os-x/
set -gx SSH_AUTH_SOCK (launchctl getenv SSH_AUTH_SOCK)
set -g fish_greeting

# https://the.exa.website/
alias ls=exa
alias ll="ls -lh"
alias l="ls -la"
alias rt="ls -l --sort newest"

alias u="cd .."
alias t=tmux
alias n="NVIM_APPNAME=jose nvim"
alias c="NVIM_APPNAME=cool nvim"
alias r="NVIM_APPNAME=rocks nvim"
alias y="NVIM_APPNAME=LazyVim nvim"
alias d='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dl='lazygit --work-tree=/Users/amiorin --git-dir=/Users/amiorin/.dotfiles'
alias tldrf='tldr --list | fzf --preview "tldr {1}" --preview-window=right,60% | xargs tldr'

# harpoon
alias h='/usr/bin/git --git-dir=$HOME/code/personal/phoenix/.harpoon/ --work-tree=$HOME/code/personal/phoenix'
alias hl='lazygit --work-tree=/Users/amiorin/code/personal/phoenix --git-dir=/Users/amiorin/code/personal/phoenix/.harpoon'

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

function login_aws
    set items single-stg single-prod multi-stg multi-prod
    set account (printf "%s\n" $items | fzf --prompt=" OneFootball AWS account » " --height=~50% --layout=reverse --border --exit-0)
    if [ -z $account ]
        echo "Nothing selected"
        return 0
    end
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
