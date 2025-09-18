echo 'export PS1="\[\e[1;36m\][\u@\h \w] \[\e[m\]"
alias status="/usr/lib/custom-motd/status-motd.sh"
alias k="kubectl"
complete -o default -F __start_kubectl k' >> ~/.bashrc
