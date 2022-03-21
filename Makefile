#KEYHAC_DIR = /cygdrive/c/Users/${USER}/AppData/Roaming/Keyhac
KEYHAC_DIR = ${APPDATA}/Keyhac

aho:
	@echo USER=$${USER}
	@echo KEYHAC_DIR=$(KEYHAC_DIR)
	@ls -laF $(KEYHAC_DIR)

diff:
	@diff -u $(KEYHAC_DIR)/config.py config.py

pull:
	cp $(KEYHAC_DIR)/config.py .

install:
	cp config.py $(KEYHAC_DIR)
	cp -r fakeymacs_extensions $(KEYHAC_DIR)
	cp config_personal.py $(KEYHAC_DIR)
