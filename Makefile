default:
	git pull
	git checkout $(ARGS)
	git pull origin main
push:
	git add -A
	git commit -am $(ARGS)
	git push