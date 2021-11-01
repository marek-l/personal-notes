alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias g='git'
alias cu-dist='COMPOSER_MEMORY_LIMIT=-1 composer update --prefer-dist --no-scripts'
alias ..="cd .."
alias k=kubectl
alias sha1='shasum -a 1'
alias sha256='shasum -a 256'
alias df='df -h'
alias du='du -h'

# common docker aliases
alias dex='docker exec'
alias dl='docker logs'
alias dlf='docker logs -f'
alias dps='docker ps | grep'
alias docker-compose='dcp'
alias drm='docker rm'
alias drmi='docker rmi'
# docker swarm aliases
alias dls='docker service ls'
alias dsl='docker service logs'
