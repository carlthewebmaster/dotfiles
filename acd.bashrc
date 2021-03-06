# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#--------------------------------
# Carl's bashrc stuff
#--------------------------------
echo "Welcome to `uname -a`"
# Configure colors, if available.
  c_reset='\[\e[0m\]'
  c_user='\[\e[1;33m\]'
  c_red='\[\e[0;31m\]'
  c_light_red='\[\e[1;31m\]'
  c_path='\[\e[1;32m\]'
  c_git_clean='\[\e[1;36m\]'
  c_git_dirty='\[\e[1;35m\]'

# Function to assemble the Git parsingart of our prompt.
git_prompt ()
{
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi
  git_branch=$(git branch 2>/dev/null | sed -n '/^\*/s/^\* //p')
  if git diff --quiet 2>/dev/null >&2; then
    git_color="${c_git_clean}"
  else
    git_color="${c_git_dirty}"
  fi
  echo "[$git_color$git_branch${c_reset}]"
}
# Thy holy prompt.
PROMPT_COMMAND='PS1="${c_user}\u${c_reset}@${c_light_red}\h${c_reset}:${c_path}\w${c_reset}$(git_prompt)\$ "'

# Set directory color - needed for MSYSGIT on Win7
export LS_COLORS='di=01;35'

# Alias Setup
# alias anno2go='. /root/local-dev/scripts/annotum2go.sh'
# alias anno2stop='. /root/local-dev/scripts/annotum2stop.sh'
# alias apacherestart='/etc/rc.d/httpd restart'
# alias gem='gem --no-user-install'
alias godev='cd ~/local-dev'
alias gotheme='cd ~/local-dev/hela-acd/wp-content/themes'
alias gohela='cd ~/local-dev/hela-acd'
alias goplugin='cd ~/local-dev/hela-acd/wp-content/plugins'
alias gohome='cd ~'
alias l.='ls -d .* --color=auto'
alias ll='ls -laF --color=auto'
alias ls='ls --color=auto'
alias vi='vim'
alias svim='sudo vim --cmd "set rtp^=/home/cpl/.vim" -u /home/cpl/.vimrc'
alias swp='sudo /home/cpl/scripts/wp-cli.phar'
alias vi='vim'
alias wp='/home/cpl/scripts/wp-cli.phar'

