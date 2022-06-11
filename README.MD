# Configuration files

https://www.digitalocean.com/community/tutorials/how-to-use-git-to-manage-your-user-configuration-files-on-a-linux-vps


How to add files to home dir:
```
	cd ~
	git init
	git branch -m main
	git remote add origin git@github.com:henkdb4/config.git
	git fetch --all
	git reset --hard origin/main
```
