default:
	git pull
	git checkout $(ARGS)
	git pull origin main
push:
	git add -A
	git commit -am "$(ARGS)"
	@git push || true
update_main:
	make push
	$(VAR) = git checkout | egrep -o '/[a-zA-z]*' | egrep -o '[a-zA-z]*'
	git checkout main
	git pull origin $(VAR)
	git checkout $(VAR)
