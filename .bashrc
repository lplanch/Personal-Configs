# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export PS1="\[\033[38;5;10m\][\A]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;10m\][\u\[$(tput sgr0)\]\[\033[38;5;15m\] \W/\[$(tput sgr0)\]\[\033[38;5;10m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\] "

# User specific aliases and functions
alias ne='emacs -nw'
alias am='atom'
alias l='ls -la'
alias ls='ls --color=always'
alias py='python3'
alias logout='pkill -u planch2'
alias naut='nautilus'
alias mc='/home/planch2/delivery/shells/mrclean.sh'
alias make='make --no-print-directory -s'
alias discord='/usr/bin/discord-0.0.4/Discord/Discord'
alias localhost='http://127.0.0.1:5000/'
alias ida='env WINEPREFIX="/home/planch2/.wine" wine C:\\Program\ Files\\IDA\ 7.0\\ida64.exe'
alias ida32='env WINEPREFIX="/home/planch2/.wine" wine C:\\Program\ Files\\IDA\ 7.0\\ida.exe'
alias norminette='/home/planch2/norminette/norminette'
alias norminette-update='/home/planch2/norminette/update.sh'
alias norminette-debug='/home/planch2/norminette/debug.sh'

PATH="/home/planch2/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/planch2/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/planch2/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/planch2/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/planch2/perl5"; export PERL_MM_OPT;
