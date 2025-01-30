PYTHON := python3
SDATTOOL := $(PYTHON) SDATTool.py

default: build

sorted:
	$(PYTHON) evaluate_usage.py
	$(SDATTOOL) -b gs_sound_data.sdat gs_sound_data

build:
	$(SDATTOOL) -b gs_sound_data.sdat gs_sound_data

clean:
	rm -rf gs_sound_data NEW_FILES
	git restore gs_sound_data

compare:
	$(MAKE) build
	md5sum -c checksum.md5
