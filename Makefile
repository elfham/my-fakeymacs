#KEYHAC_DIR = /cygdrive/c/Users/${USER}/AppData/Roaming/Keyhac
KEYHAC_DIR = ${APPDATA}/Keyhac

hoge:
	@echo USER=$${USER}
	@echo KEYHAC_DIR="$(KEYHAC_DIR)"
	@ls -laF "$(KEYHAC_DIR)"

diff:
	@diff -u fakeymacs/_config_personal.py config_personal.py || :

update:
	cd fakeymacs && git submodule update --remote

diff-config:
	@diff -u "$(KEYHAC_DIR)/config.py" config.py

pull-config:
	cp "$(KEYHAC_DIR)/config.py" .

install:
	( \
		cd fakeymacs ; \
		cp config.py "$(KEYHAC_DIR)" ; \
		cp -r fakeymacs_extensions "$(KEYHAC_DIR)" ; \
	)
	cp config_personal.py "$(KEYHAC_DIR)"
