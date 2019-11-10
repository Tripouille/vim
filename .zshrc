if [ -f /etc/zsh.cnf ]; then
 . /etc/zsh.cnf
fi

export LC_ALL=en_US.UTF-8
alias mfc='make fclean'
alias 42fc='bash ~/Documents/42FileChecker/42FileChecker.sh'
alias gm='bash ~/Documents/Libftest/grademe.sh'
alias ra="source ~/.zshrc"
alias gl="git log --pretty=oneline --graph -n 10"
alias gs="git status"
alias ga="git add"
alias gc="git commit -am"
alias gcl="git clone"
alias gca="git commit --amend -am"
alias gco="git checkout"
alias gp="git push"
alias grh="git reset HEAD"
alias gb="git branch"
alias oa="vim ~/.zshrc"
alias ov="vim ~/.vimrc"
alias md="mkdir"
alias l="ls -lp"
alias la="ls -lap"
alias gcc="gcc -Wall -Wextra -Werror"
alias gaa="git add --all"
alias n="norminette"
alias v="vim"
alias purge="rm -rff *"
alias s="sh test-printf/show.sh"

t()
{
	if [ $# -ge 1 ]
	then
		make test p1=$1
	else
		make test
	fi
}

ght()
{
	git clone "https://github.com/tripouille/"$1
}

ghc()
{
	git clone "https://github.com/chinimala/"$1
}

check()
{
	norminette -R CheckForbiddenSourceHeader
	echo "\nFILES:"
	ls -a */*
	echo "\nHIDDEN FILES:"
	ls -a */.*
	echo "\nWRONG FILES:"
	grep -lRE "stdio|printf|main" *
	gcc -Wall -Wextra -Werror -c */*
	rm *.o
}

checknm()
{
	norminette -R CheckForbiddenSourceHeader
	echo "\nFILES:"
	ls -a */*
	echo "\nHIDDEN FILES:"
	ls -a */.*
	echo "\nWRONG FILES:"
	grep -lRE "stdio|printf" *
	gcc -Wall -Wextra -Werror -c */*.c
	rm *.o
}

man() {
     env \
     LESS_TERMCAP_mb=$'\E[01;31m' \
     LESS_TERMCAP_md=$'\E[01;38;5;74m' \
     LESS_TERMCAP_me=$'\E[0m' \
     LESS_TERMCAP_se=$'\E[0m' \
     LESS_TERMCAP_so=$'\E[1;44;33m' \
     LESS_TERMCAP_ue=$'\E[0m' \
     LESS_TERMCAP_us=$'\E[04;38;5;146m' \
     man "$@"
}

# Load Homebrew config script
source $HOME/.brewconfig.zsh
