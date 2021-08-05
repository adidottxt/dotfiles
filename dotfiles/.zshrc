# Path to your oh-my-zsh installation.
 case `uname` in
  Darwin)
    export ZSH="/Users/adi/.oh-my-zsh"
  ;;
  Linux)
    # commands for Linux go here
    export ZSH="/home/adi/.oh-my-zsh"
    source ~/.zshenv
  ;;
esac

ZSH_THEME=""

# ignore duplicates in history
setopt HIST_IGNORE_DUPS

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(git docker docker-compose node tmux yarn)

source $ZSH/oh-my-zsh.sh

zstyle :prompt:pure:git:stash show yes

zstyle :prompt:pure:path color '#ffdf87' # 222
zstyle :prompt:pure:git:branch color '#87d7af' # 115
zstyle :prompt:pure:git:arrow color '#afffff' # 159
zstyle :prompt:pure:git:stash color '#afffff' # 159
zstyle :prompt:pure:git:action color '#d7875f' # 173
zstyle :prompt:pure:git:dirty color '#d7875f' # 173
zstyle :prompt:pure:virtualenv color '#5f875f' # 65
zstyle :prompt:pure:execution_time color '#767676' # 243
zstyle :prompt:pure:prompt:success color '#5fafaf' # 73
zstyle :prompt:pure:prompt:error color '#d7875f' # 173

case "$TERM" in
    xterm|xterm-color|*-256color) color_prompt=yes;;
esac

if [ -f ~/.bash/sensitive ]; then
    . ~/.bash/sensitive
fi

# set copy/paste helper functions
# the per1 step removes the final newline from the output
alias ll='ls -la'
alias l='ls -CF'
alias ,='cd ..'
alias ,,='cd ../..'
alias ,,,='cd ../../..'
alias ,,,,='cd ../../../..'
alias ,,,,,='cd ../../../../..'
alias ,,,,,,='cd ../../../../../..'
alias ,,,,,,,='cd ../../../../../../..'
alias ,,,,,,,,='cd ../../../../../../../..'
alias ,,,,,,,,,='cd ../../../../../../../../..'
alias d='cd'
alias n='nvim'
alias f='nvim'
alias vim='nvim'
alias p='python3'
alias c='clear'
alias ga='git add .'
alias gpo='git push origin'
alias gs='git status'
alias gd='git diff'
alias gc='git commit -m'
alias gl='git lgr'
alias gpu='git pull'
alias vc='python3 -m venv .venv'
alias va='source .venv/bin/activate'
alias vd='deactivate'
alias pr='pip install -r requirements.txt'
alias pu='pip install --upgrade pip'
alias brave='open -a "Brave Browser"'
alias pepify='autopep8 --in-place --aggressive --aggressive'
alias todo='n ~/repos/notes/thingstodo.md'
alias journal='cd ~/repos/notes/.journal; n 2021/'
alias please='sudo'
alias vpnup='nmcli c up aws'
alias vpndown='nmcli c down aws'
alias dockerdestroy='docker system prune -a; docker rmi $(docker images -a -q)'
alias b='bpython3'
alias notes='cd ~/repos/personal/kepler-notes/2019/projects'
alias rearena='cd ~/repos/personal/re.are.na; source venv/bin/activate; make email'
alias bat='bat -n'
alias fh='history | fzf'
alias zshrc='n ~/.zshrc'
alias so='source ~/.zshrc'
alias bashrc='n ~/.bashrc'
alias vimrc='n ~/.vimrc'
alias ds='rm -rf .DS_Store'

# Enabling global terminal colors on macosx
export CLICOLOR=1
export LS_COLORS=$LS_COLORS:'ln=\e[38;2;95;135;95;1'
export LS_COLORS=$LS_COLORS:'di=\e[38;2;95;175;175;1'
export LS_COLORS=$LS_COLORS:'ex=\e[38;2;215;135;95;1'

export LS_COLORS

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors 'di=\e[38;2;95;175;175;1:ln=\e[38;2;95;135;95;1:so=32:pi=33:ex=\e[38;2;215;135;95;1:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# Set default text editor
export EDITOR=nvim

#PYENV installation
PYENV_ROOT="$HOME/.pyenv"
if [ -d "$PYENV_ROOT" ]
then
  export PYENV_ROOT
  PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

# bat config
export BAT_THEME='zenburn'

# Make sure you're also exporting PATH somewhere...
export PATH=$PATH:~/bin
export PATH="$HOME/.nodenv/bin:$PATH"
export PATH=~/.local/bin:$PATH
export PATH="$HOME/.zsh/pure:$PATH"
fpath+=$HOME/.zsh/pure

. $HOME/.asdf/asdf.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

fpath=(~/.zsh/completion $fpath)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U promptinit
promptinit
prompt pure
