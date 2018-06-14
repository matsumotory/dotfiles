alias n='netstat -anpt'
alias l='ls -laF'
alias p='ps auwwxf'
alias pp='ps auwwx -L'
alias scx='screen -x'
alias scc='screen'

export PS1="\[\033[01;35m\][\u\[\033[01;33m\]@`hostname`:\[\033[01;35m\]\w]$ \[\033[00m\]"
export SSH_AUTH_SOCK=`ls -l ${TMPDIR}/ssh-*/agent.* | grep $USER | awk '{print $9}' | sed -e "s/=$//" | tail -n 1`
export SSH_AGENT_PID=`ps -eo pid,args | grep ssh-agent | grep $USER | grep -v grep | awk '{print $2}' | tail -n 1`

alias dev='source ~/.bashrc && cd ~/DEV'
alias sll="ssh -2 -v -l root"
alias smm="ssh -2 -v -l matsumoto_r"
alias ska='killall ssh-agent ; eval `ssh-agent` ; ssh-add ~/.ssh/id_rsa'
export PKG_CONFIG_PATH=/lib/pkgconfig:/usr/lib/pkgconfig:/usr/lib64/pkgconfig:/usr/local/lib/pkgconfig:/usr/local/Cellar/openssl/1.0.2k/lib/pkgconfig
alias ssload='source ~/.bashrc'
export PATH=/usr/local/ruby-2.1.4/bin:$PATH
alias pdev='cd ~/PDEV'
alias src='cd ~/src'

export CPATH=/usr/local/opt/openssl/include:$CPATH
export LIBRARY_PATH=/usr/local/opt/openssl/lib:$LIBRARY_PATH
export PATH=/usr/local:$PATH

alias sync_matsumotory='rsync -auvz -e "ssh -p 2222" /Users/matsumotory/DEV/matsumotory/_site/* pupu.jp-matsumotory@ssh421.lolipop.jp:/home/users/0/pupu.jp-matsumotory/web/research/'
alias md2pfd='pandoc -V documentclass=ltjarticle --latex-engine=lualatex'
