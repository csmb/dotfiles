export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:/usr/local/sbin

export EDITOR="atom -nw"

# initialize rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source ~/.git-completion.bash
source ~/.passwords.bash
source ~/.ssh_shortcuts.bash

alias bashme="atom ~/.bash_profile"
alias rm='rm -i'

# Configure colors, if available.
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    c_reset='\[\e[0m\]'
    c_user='\[\e[1;31m\]'
    c_user='\[\e[1;31m\]'
    c_path='\[\e[0;34m\]'
    c_git_clean='\[\e[0;36m\]'
    c_git_staged='\[\e[0;32m\]'
    c_git_unstaged='\[\e[0;31m\]'
else
    c_reset=
    c_user=
    c_path=
    c_git_clean=
    c_git_staged=
    c_git_unstaged=
fi

git_prompt ()
{
    GIT_DIR=`git rev-parse --git-dir 2>/dev/null`
    if [ -z "$GIT_DIR" ]; then
        return 0
    fi
    GIT_HEAD=`cat $GIT_DIR/HEAD`
    GIT_BRANCH=${GIT_HEAD##*/}
    if [ ${#GIT_BRANCH} -eq 40 ]; then
        GIT_BRANCH="(no branch)"
    fi
    STATUS=`git status --porcelain`
    if [ -z "$STATUS" ]; then
        git_color="${c_git_clean}"
    else
        echo -e "$STATUS" | grep -q '^ [A-Z\?]'
        if [ $? -eq 0 ]; then
            git_color="${c_git_unstaged}"
        else
            git_color="${c_git_staged}"
        fi
    fi
    echo "[$git_color$GIT_BRANCH$c_reset] "
}

PROMPT_COMMAND="PS1=\"\$(git_prompt)${c_user}\u${c_reset} ${c_path}\w${c_reset}:: \" ;"

# Weather on the top of my terminal
URL='http://www.accuweather.com/en/us/san-francisco-ca/94103/weather-forecast/347629'
wget -q -O- "$URL" | awk -F\' '/acm_RecentLocationsCarousel\.push/{print $14" "$12"°" }'| head -1
