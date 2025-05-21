.PHONY: connect

SCRIPTS_PATH := ./scripts
CONFIGS := .vimrc .zshrc

connect:
	$(SCRIPTS_PATH)/sync.sh $(CONFIGS) 
