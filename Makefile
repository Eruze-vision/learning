timeline:
	git log --oneline --graph

acp:
	@echo "Enter your commit message:"; \
	read message; \
	git add .; \
	git commit -m "$$message"; \
	git push origin HEAD

