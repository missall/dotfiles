# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="dpoggi"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git textmate ruby rails mvn svn autojump brew osx gem screen web-search cp sublime)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
if [[ -s /Users/joe/.rvm/scripts/rvm ]] ; then source /Users/joe/.rvm/scripts/rvm ; fi
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
#man color output setting
export LESS_TERMCAP_mb=$'\E[01;31m'  
export LESS_TERMCAP_md=$'\E[01;31m'  
export LESS_TERMCAP_me=$'\E[0m'  
export LESS_TERMCAP_se=$'\E[0m'  
export LESS_TERMCAP_so=$'\E[01;44;32m'  
export LESS_TERMCAP_ue=$'\E[0m'  
export LESS_TERMCAP_us=$'\E[01;32m' 
#cd
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias ..6="cd ../../../../../.."
alias ..7="cd ../../../../../../.."
alias ..8="cd ../../../../../../../.."
alias top="htop"
alias du="ncdu"
alias node="node --harmony"
# ls
alias ls="ls -G"
alias mymac="archey"
alias ll="ls -lsG"
alias la="ls -laG"
# grep
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
# rails
alias ss="script/server"
alias sc="script/console"
#quick
alias ios-webapp-create="/Users/Joe/Workspaces/phonegap/lib/ios/bin/create"
alias ~="cd ~"
alias hiutv="cd ~/Workspaces/hiutv"
alias jzdc="cd ~/Workspaces/jzdc"
alias pgstart="cd /usr/local/postgres;pg_ctl -D pgdata start > log/pg.log"
alias pgrestart="cd /usr/local/postgres;pg_ctl -D pgdata restart > log/pg.log"
alias pgstop="cd /usr/local/postgres;pg_ctl -D pgdata stop"
alias bossdb="go boss;vi modules/boss-basic/src/main/webapp/WEB-INF/config/beans/boss_configure.properties"
alias bossmake="go boss;mvn -T 4 -Dmaven.test.skip=true"
alias bossmove="go boss;cp modules/boss-basic/target/boss*.war /usr/local/jboss/standalone/deployments/boss.war;echo 'The boss project is published to Jboss deploy directory...';mvn clean"
alias bossstart="cd /usr/local/jboss/bin/;sh standalone.sh"
alias bosspublish="bossmake;bossmove;bossstart"
alias samsdb="j sams;vi src/main/webapp/WEB-INF/config/sams_configure.properties"
alias nmsedit="j ngbnms;subl ."
alias nmsmake="go ngbnms;mvn"
alias nmsmove="go ngbnms;cp target/ngbnms.war /usr/local/jetty/webapps/;echo 'The sams project is published to Jetty deploy directory...';mvn clean"
alias nmsstart="cd /usr/local/jetty/;java -jar start.jar"
alias nmspublish="nmsmake;nmsmove;nmsstart"
alias share="python /usr/local/bin/SimpleHTTPServerWithUpload.py"
alias bstarRoute="sudo route -n add -net 192.168.0.0/24 192.168.1.1"
alias ssh-hiutvdev="ssh bstar@dev.hiutv.org"
alias gmpsedit="cd /Users/Joe/Workspaces/hiutv;subl gmps"
alias ssh-ngbtb="ssh bstar@ocn.ngblab.vpn"
alias ssh-ngb-dl="ssh -i ~/.ssh/ngblab_dsa  ngblab@ocn.ngblab.download"
alias ssh-ngb-sams="ssh -i ~/.ssh/ngblab_dsa  ngblab@ocn.ngblab.sams"
alias ssh-unicomtb="ssh bstar@unicom-tb"
#alias ssh-gbboss="ssh li@58.196.13.13 -p 99"
#alias ssh-gbgw="ssh li@gateway"
#alias ssh-gbagent="ssh li@agent"
#alias ssh-gbauth1="ssh li@auth1"
#alias ssh-gbauth2="ssh li@auth2"
#alias ssh-gbdb1="ssh -t root@58.196.13.13 ssh 192.168.100.31"
#alias ssh-gbdb2="ssh -t root@58.196.13.13 ssh 192.168.100.33"
#alias ssh-jdboss="ssh li@jdboss -p 229"
#alias ssh-szboss="ssh root@10.0.1.248"
#alias ssh-jddns="ssh li@jddns"
#alias ssh-jdgw1="ssh li@jdgw1"
#alias ssh-jdgw2="ssh li@jdgw2"
#alias ssh-jdradius1="ssh li@jdrad1"
#alias ssh-jdradius2="ssh li@jdrad2"
#alias ssh-jdtvsd1="ssh jd@jdtvsd1"
#alias ssh-jdtvsd2="ssh jd@jdtvsd2"
#alias ssh-jdtvsd3="ssh jd@jdtvsd3"
#alias ssh-jdtvsd4="ssh jd@jdtvsd4"
#alias ssh-jdvod1="ssh jd@jdvod1"
#alias ssh-jdvod2="ssh jd@jdvod2"
#alias ssh-jdvod3="ssh jd@jdvod3"
#alias ssh-jdvod4="ssh jd@jdvod4"
#alias ssh-jdvod5="ssh jd@jdvod5"
#alias ssh-gbvod1="ssh root@gbvod1"
#alias ssh-gbvod2="ssh root@gbvod2"
#alias ssh-gbvod3="ssh root@gbvod3"
#alias ssh-gbvod4="ssh root@gbvod4"
#alias ssh-gbtvsd1="ssh root@gbtvsd1"
#alias ssh-gbtvsd2="ssh root@gbtvsd2"
#alias ssh-gbtvsd3="ssh root@gbtvsd3"
#alias ssh-gbtvsd4="ssh hiutv@gbtvsd4"
#alias ssh-gbtvsd5="ssh hiutv@gbtvsd5"
#alias ssh-gbtvsd6="ssh hiutv@gbtvsd6"
#alias ssh-gbtvsd7="ssh hiutv@gbtvsd7"
#alias ssh-gbtvsd8="ssh hiutv@gbtvsd8"
#alias ssh-gbtvsd9="ssh hiutv@gbtvsd9"
#alias ssh-gbtvsd10="ssh hiutv@gbtvsd10"
#alias ssh-gbtvsd11="ssh hiutv@gbtvsd11"
alias redis-start="cd /usr/local/redis/src/;./redis-server>/usr/local/redis/src/redis.log &"
#alias ssh-hiutvorg="ssh root@hiutv.org"
#alias ssh-gmps-cn="ssh root@cngmps"
#alias ssh-gmps-kw="ssh bstar@kwgmps"
#alias ssh-gmps-shpub="ssh root@shgmps"
#alias ssh-sip="ssh root@sip"
#alias ssh-pd-tz-boss="ssh root@tzboss"
#alias ssh-xj-tb="ssh root@211.144.114.130"
#alias ssh-xj-zp-boss="ssh pub@211.144.114.130 -p 9322"
#alias ssh-pd-tz-bossbak="ssh root@tzbossbak"
#alias ssh-pd-tz-db="ssh root@tzdb"
#alias ssh-pd-tz-dbbak="ssh root@tzdbbak"
#alias ssh-ah-sz-boss="ssh root@szboss"
#alias ssh-fx="ssh bstar@192.168.0.200"
alias trs="trs {=zh}"
alias mtr=/usr/local/sbin/mtr
alias cool="cmatrix"
#alias svn="colorsvn"
alias curl='noglob curl'
alias show-hidden-file='defaults write com.apple.finder AppleShowAllFiles -bool true'
alias hidden-file='defaults write com.apple.finder AppleShowAllFiles -bool false'
alias bstar-inner-network='sudo networksetup -setmanual "USB Ethernet" 192.168.1.58 255.255.255.128 192.168.1.1'
alias bstar-outer-network='sudo networksetup -setdhcp "USB Ethernet"'
alias show-all-network-service='networksetup -listallnetworkservices'
alias bstar-pppoe='networksetup -connectpppoeservice "b-star"'
alias tmux-work-mode='tmux source-file ~/.tmux/work.conf'
alias tmux-dev-mode='tmux source-file ~/.tmux/dev.conf'
alias dict='node /usr/local/bin/dict/'
alias jdk7='export JAVA_HOME=$JAVA_7_HOME'
alias jdk8='export JAVA_HOME=$JAVA_8_HOME'
alias baidu='node /usr/local/bin/browerSearch baidu'
alias google='node /usr/local/bin/browerSearch google'
alias update_hosts='wget https://raw.githubusercontent.com/racaljk/hosts/master/hosts_tool/script_tool_for_linux.sh -O - | sudo bash -;sudo killall -HUP mDNSResponder'
alias statis_code_count='find . -name "*.java" -o -name "*.js" -o -name "*.css" -o -name "*.jsp" -o -name "*.xml"|xargs cat |  wc -l'
alias python="python3"
#search
#alias baidu='open "http://www.baidu.com/baidu?word=$@"'
function m
{
    p $@
    mate .
}

function go
{
    if [ "$@" = "ngbnms" ]; then
    	jzdc && cd $@/trunk
	elif [ "$@" = "ngbdps" ]; then
		  jzdc && cd $@/trunk
	else
       jzdc 
    fi
}

function rdc
{
  Xnest -geometry 800x600 :1 & DISPLAY=:1 ssh -X $@  gnome-session
}

function pg
{
    ps aux|grep $@|grep -v grep
}

function pk
{
    ps aux|grep $@|grep -v grep|awk '{print $2}' | xargs kill -9
}

function fopen
{
  	open  /System/Library/CoreServices/Finder.app $@
} 

function mountAndroid
{
 	hdiutil attach /Users/joe/AndroidDisk.dmg -mountpoint /Volumes/AndroidDisk
}

#function wiki
#{
#	dig +short txt $1.wp.dg.cx;
#}

function mkdircd 
{ 
	mkdir -p "$@" && eval cd "\"\$$#\""; 
}

function calculate
{
    echo $@ | bc
}

function 8to10
{
	((num=$@))&&echo $num;
}

function 16to10
{
	8to10 $@
}

function 32to10
{
	((num=32#$@))&&echo $num;
}

function 64to10
{
	((num=64#$@))&&echo $num;
}

function 2to10
{
	((num=2#$@))&&echo $num;	
}

function 10to8
{
	echo "obase=8;$@"|bc	
}

function 10to2
{
	echo "obase=2;$@"|bc	
}

function 10to16
{
	echo "obase=16;$@"|bc	
}

function 10to64
{
	echo "obase=64;$@"|bc	
}

function collapse_pwd {
	echo $(pwd | sed -e "s,^$HOME,~,")
}

JAVA_7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home
JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home
JAVA_HOME=$JAVA_7_HOME
export JBOSS_HOME=/usr/local/jboss
#PATH=${PATH}:/usr/local/pgsql/bin:/Users/Joe/Workspaces/test/android-sdk-macosx/tools
export PATH=$JMETER_HOME/bin:/opt/local/bin:/opt/local/sbin/:/usr/local/Cellar/android-sdk/22.3/build-tools/19.0.0:/usr/local/mysql/bin:/usr/local/mongodb/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export PATH MANPATH NODE_PATH JAVA_HOME 
#set the number of open files to be 1024
ulimit -S -n 1024

##
# Your previous /Users/JoeLee/.bash_login file was backed up as /Users/JoeLee/.bash_login.macports-saved_2011-08-07_at_12:58:02
##

# MacPorts Installer addition on 2011-08-07_at_12:58:02: adding an appropriate PATH variable for use with MacPorts.
# Finished adapting your PATH environment variable for use with MacPorts.
#HADOOP_HOME=/usr/local/hadoop
#PATH=usr/local/node/bin:/usr/local/rvm/rubies/ruby-1.9.2-p290/bin:/usr/local/rvm/gems/ruby-1.9.2-p290/bin:/usr/local/postgres/current/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/mysql/bin:/usr/local/rvm/bin:$HADOOP_HOME/bin
#MANPATH=:/usr/local/postgres/current/man
[ -r ~/.profile ] && source ~/.profile

##命令行高亮
 
#杂项 {{{
#允许在交互模式中使用注释  例如：
#cmd #这是注释
setopt INTERACTIVE_COMMENTS      
 
#自动补全功能 {{{
setopt AUTO_LIST
setopt AUTO_MENU
#开启此选项，补全时会直接选中菜单项
#setopt MENU_COMPLETE
 
autoload -U compinit compinit
 
#自动补全缓存
#zstyle ':completion::complete:*' use-cache on
#zstyle ':completion::complete:*' cache-path .zcache
#zstyle ':completion:*:cd:*' ignore-parents parent pwd
 
#自动补全选项
zstyle ':completion:*' verbose yes
zstyle ':completion:*' menu select
zstyle ':completion:*:*:default' force-list always
zstyle ':completion:*' select-prompt '%SSelect:  lines: %L  matches: %M  [%p]'
 
zstyle ':completion:*:match:*' original only
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:predict:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:*' completer _complete _prefix _correct _prefix _match _approximate
 
#路径补全
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-shlashes 'yes'
zstyle ':completion::complete:*' '\\'
 
#彩色补全菜单
export ZLSCOLORS="${LS_COLORS}"
zmodload zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
 
#修正大小写
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
#错误校正
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
 
#kill 命令补全
compdef pkill=kill
compdef pkill=killall
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:*:*:processes' force-list always
zstyle ':completion:*:processes' command 'ps -au$USER'
 
# cd ~ 补全顺序
zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
#}}}
 
##行编辑高亮模式 {{{
# Ctrl+@ 设置标记，标记和光标点之间为 region
zle_highlight=(region:bg=magenta #选中区域
special:bold      #特殊字符
isearch:underline)#搜索时使用的关键字
#}}}
 
##在命令前插入 sudo {{{
#定义功能
sudo-command-line() {
[[ -z $BUFFER ]] && zle up-history
[[ $BUFFER != sudo\ * ]] && BUFFER="sudo $BUFFER"
zle end-of-line                 #光标移动到行末
}
zle -N sudo-command-line
#定义快捷键为： [Esc] [Esc]
bindkey "\e\e" sudo-command-line
#}}}
 
 
#[Esc][h] man 当前命令时，显示简短说明
alias run-help >&/dev/null && unalias run-help
autoload run-help
 
#历史命令 top10
alias top10='print -l  ${(o)history%% *} | uniq -c | sort -nr | head -n 10'
#}}}
 
#路径别名 {{{
#进入相应的路径时只要 cd ~xxx
hash -d jetty="/usr/local/jetty/"
hash -d nms="/Users/Joe/Workspaces/jzdc/ngbnms/trunk/"
hash -d dps="/Users/Joe/Workspaces/jzdc/ngbdps/trunk/"
hash -d boss="/Users/Joe/Workspaces/hiutv/boss/trunk"
hash -d gmps="/Users/Joe/Workspaces/hiutv/gmps"
hash -d sams="/Users/Joe/Workspaces/hiutv/sams/"
#}}}
 
#{{{自定义补全
#补全 ping
zstyle ':completion:*:ping:*' hosts 192.168.1.{1,50,51,100,101} www.google.com
 
#补全 ssh scp sftp 等
#zstyle -e ':completion::*:*:*:hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'
#}}}
 
#{{{ F1 计算器
arith-eval-echo() {
LBUFFER="${LBUFFER}echo \$(( "
RBUFFER=" ))$RBUFFER"
}
zle -N arith-eval-echo
bindkey "^[[11~" arith-eval-echo
#}}}
 
####{{{
function timeconv { date -d @$1 +"%Y-%m-%d %T" }
 
# }}}
 
zmodload zsh/mathfunc
autoload -U zsh-mime-setup
zsh-mime-setup
setopt EXTENDED_GLOB
#autoload -U promptinit
#promptinit
#prompt redhat
 
setopt correctall
autoload compinstall
 
#漂亮又实用的命令高亮界面
setopt extended_glob
 TOKENS_FOLLOWED_BY_COMMANDS=('|' '||' ';' '&' '&&' 'sudo' 'do' 'time' 'strace')
 
 recolor-cmd() {
     region_highlight=()
     colorize=true
     start_pos=0
     for arg in ${(z)BUFFER}; do
         ((start_pos+=${#BUFFER[$start_pos+1,-1]}-${#${BUFFER[$start_pos+1,-1]## #}}))
         ((end_pos=$start_pos+${#arg}))
         if $colorize; then
             colorize=false
             res=$(LC_ALL=C builtin type $arg 2>/dev/null)
             case $res in
                 *'reserved word'*)   style="fg=magenta,bold";;
                 *'alias for'*)       style="fg=cyan,bold";;
                 *'shell builtin'*)   style="fg=yellow,bold";;
                 *'shell function'*)  style='fg=green,bold';;
                 *"$arg is"*)
                     [[ $arg = 'sudo' ]] && style="fg=red,bold" || style="fg=blue,bold";;
                 *)                   style='none,bold';;
             esac
             region_highlight+=("$start_pos $end_pos $style")
         fi
         [[ ${${TOKENS_FOLLOWED_BY_COMMANDS[(r)${arg//|/\|}]}:+yes} = 'yes' ]] && colorize=true
         start_pos=$end_pos
     done
 }
check-cmd-self-insert() { zle .self-insert && recolor-cmd }
check-cmd-backward-delete-char() { zle .backward-delete-char && recolor-cmd }
 
zle -N self-insert check-cmd-self-insert
zle -N backward-delete-char check-cmd-backward-delete-char

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF8

PAGER='less -X -M' export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s" export LESS=' -R '
#docker setting

#export DOCKER_HOST=tcp://192.168.59.103:2376
#export DOCKER_CERT_PATH=/Users/Joe/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1
export MSSH_HOME=/usr/local/mssh
