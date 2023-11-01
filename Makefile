.DEFAULT_GOAL := help
.PHONY: help
help:	## show commands
	@grep -E '^[[:alnum:]_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	
.PHONY: timeline
timeline:   ## == git log --oneline --graph
	git log --oneline --graph

.PHONY: acp
acp:        ## == git add . , git commmit -m "", git push origin HEAD
	@echo "Enter your commit message:"; \
	read message; \
	git add .; \
	git commit -m "$$message"; \
	git push origin HEAD

.PHONY: variant
variant:      ## == git checkout variant
	git checkout variant

.PHONY: main
main:         ## == git checkout main
	git checkout main
