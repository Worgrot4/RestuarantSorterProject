default:
	git pull
	git checkout $(ARGS)
	git pull origin main
push:
	@-git add -A || true 
	@-git commit -am "$(ARGS)" || true
	@-git push || true
update_main:
	make push
	VAR:=$(shell git checkout | egrep -o '/[a-zA-z]*' | egrep -o '[a-zA-z]*')
	echo "$(VAR)"
