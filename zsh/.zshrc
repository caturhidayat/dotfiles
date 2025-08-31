# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/broky/.zsh/completions:"* ]]; then export FPATH="/Users/broky/.zsh/completions:$FPATH"; fi
# ~/.zshrc

# Alias Git command
alias pn="pnpm"
alias ga="git add ."
alias gs="git status"
alias gps="git push"
alias glo="git log --oneline"
alias gpl="git pull"
alias bc="better-commits"
alias ll="lla -l"
alias lg="lla -g"
alias bsl="brew services ls --json"


# Alias Prisma Command
alias pmd="npx prisma migrate dev"
alias pmdp="npx prisma migrate deploy"
alias pv="npx prisma validate"
alias pg="npx prisma generate"

# Alias Fuzzy finder (fzf)
# alias find="fzf"

# Alias Command for shadcn-ui
# shd init - for init project
# shd add [component name] - add component
alias shd="npx shadcn@latest"

# Alias Rails Command
alias rs="bin/rails s"
alias rc="bin/rails c"


# Starship
eval "$(starship init zsh)"

# NVM Config
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# . "/Users/broky/.deno/env"
# Added by Windsurf
export PATH="/Users/broky/.codeium/windsurf/bin:$PATH"

# Zig 


# FZF
source <(fzf --zsh)

# bun completions
[ -s "/Users/broky/.bun/_bun" ] && source "/Users/broky/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# Ruby
# eval "$(rbenv init - --no-rehash zsh)"
# export PATH="/opt/homebrew/bin:$PATH"
# eval "$(~/.local/bin/mise activate)"
# ulimit -S -n 200048 # Fix Lazy (Package Manager) for neovim
# eval "$(rbenv init -)"

# pnpm
export PNPM_HOME="/Users/broky/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#
#
# Dev env
# eval "$(mise activate zsh)"
eval "$(~/.local/bin/mise activate zsh)"
