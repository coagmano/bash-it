cite about-alias
about-alias 'custom git aliases'
# alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gll="git log --graph --pretty=format:'%C(bold)%C(yellow)%h%Creset%C(magenta)%d%Creset %s %C(green)<%an> %C(cyan)(%cr)%Creset' --abbrev-commit --date=relative"
alias gg="git log --graph --pretty=format:'%C(bold)%C(yellow)%h%Creset%C(magenta)%d%Creset %s %C(green)<%an> %C(cyan)(%cr)%Creset' --abbrev-commit --date=relative"
alias glls="gll --stat"

# Submodule functions
__git_spull() {
git pull "$@" && git submodule sync --recursive && git submodule update --init --recursive;
}
alias gspull='__git_spull'
alias gsl='gspull'

# Submodule aliases
alias gsclone='git clone --recursive'
alias gscl='gsclone'
alias gsupdate='git submodule update --init --recursive'
alias gsup='gsupdate'
alias gsinit='git submodule update --init --recursive'
alias gscheckout='!f(){ git checkout "$@" && git submodule update --init --recursive; }; f'
alias gsco='gscheckout'
alias gspush='git push --recurse-submodules=on-demand'
alias gsp='gspush'


alias gdfrom='git diff HEAD@{$@}'
alias gdf=dfrom
