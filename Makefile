.PHONY: connect

SCRIPTS_PATH := ./scripts
CONFIGS := .vimrc

connect:
	$(SCRIPTS_PATH)/sync.sh $(CONFIGS) 
