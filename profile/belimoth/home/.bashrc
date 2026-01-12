export MSYS=winsymlinks:nativestrict

export PROFILE=belimoth
export GITHUB_USERNAME=belimoth

export PATH=$PATH:~/desktop/system/script

source rc-bash.sh
source rc-git.sh
source rc-ssh-agent.sh

alias ls="ls -1"

# todo

# use aws_cli
# use git
# use git_extra
# use python
# use python_extra
# use vs_code

clone () {
	project-clone $@
}

edit () {
	[[ $1 == "system" ]] && {
		cd ~/desktop/system
		code . --reuse-window
	} || {
		project-edit $@
	}

}

update() {
	python -m pip install --upgrade pip
	scoop update '*'
}

export SHLVL=1

[[ -t 1 ]] && [[ -x zsh ]] && exec zsh
