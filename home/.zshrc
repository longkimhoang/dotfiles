fpath+=('/Users/longkh/.local/share/zsh/site-functions')

autoload -Uz compinit
compinit

# >>> mise:activate >>> managed by mise — do not edit between markers
eval "$(mise activate zsh)"
# <<< mise:activate <<<

eval "$(zoxide init zsh)"

# >>> mise:aliases >>> managed by mise — do not edit between markers
alias vi='nvim'
alias vim='nvim'
# <<< mise:aliases <<<
