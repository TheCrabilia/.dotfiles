# zmodload zsh/zprof

## Plugin manager
ZIM_HOME=$XDG_DATA_HOME/zim

## Completions
typeset -aU fpath
fpath=(
    /opt/homebrew/share/zsh/site-functions
    /opt/homebrew/share/zsh/functions
    $XDG_DATA_HOME/zsh/site-functions
)

zstyle ':zim:completion' dumpfile ${XDG_CACHE_HOME}/zsh/zcompdump
zstyle ':zim:completion' compcache ${XDG_CACHE_HOME}/zsh/zcompcache
zstyle ':zim:completion' case-sensitivity sensitive
zstyle ':zim:glob' case-sensitivity sensitive

zstyle ':crb:environment:history' histfile $XDG_CACHE_HOME/zsh/zsh_history

## Plugins settings
# ZSH-AUTOSUGGEST
if [[ -d $ZIM_HOME/modules/zsh-autosuggestions ]]; then
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"
    ZSH_AUTOSUGGEST_STRATEGY=(history completion)
    ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
    ZSH_AUTOSUGGEST_HISTORY_IGNORE=("git *| rsync *| scp *")
    ZSH_AUTOSUGGEST_COMPLETION_IGNORE=("git *| rsync *| scp *")
    ZSH_AUTOSUGGEST_USE_ASYNC="yes"
fi

# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
    curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi

# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
    source ${ZIM_HOME}/zimfw.zsh init -q
fi

# Initialize modules.
source ${ZIM_HOME}/init.zsh

dotfiles() {
    emulate -L zsh
    pushd ${HOME} &>/dev/null
    git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME} "$@"
    popd &>/dev/null
}

# vim:ft=zsh