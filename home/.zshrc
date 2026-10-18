fpath+=('/Users/longkh/.local/share/zsh/site-functions')

autoload -Uz compinit
compinit

eval "$(/Users/longkh/.local/bin/mise activate zsh)"
# >>> mise:activate >>> managed by mise — do not edit between markers
eval "$(mise activate zsh)"
# <<< mise:activate <<<
