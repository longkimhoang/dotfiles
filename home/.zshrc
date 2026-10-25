fpath+=('/Users/longkh/.local/share/zsh/site-functions')
fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -Uz compinit
compinit

autoload -U promptinit; promptinit
prompt pure

# >>> mise:activate >>> managed by mise — do not edit between markers
eval "$(mise activate zsh)"
# <<< mise:activate <<<

# >>> mise:aliases >>> managed by mise — do not edit between markers
alias vi='nvim'
alias vim='nvim'
# <<< mise:aliases <<<

eval "$(zoxide init zsh)"
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# >>> mise:promt >>> managed by mise — do not edit between markers
autoload -U promptinit; promptinit
prompt pure
# <<< mise:promt <<<
