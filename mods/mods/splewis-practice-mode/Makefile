SPLEWIS_PRACTICE_MODE_HOME_URL="https://forums.alliedmods.net/showthread.php?t=244114"
SPLEWIS_PRACTICE_MODE_URL="https://github.com/splewis/csgo-practice-mode/releases/download/1.3.4/practicemode_1.3.4.zip"
SPLEWIS_PRACTICE_MODE_VERSION="1.3.4"

all: build

contrib:
	@echo "$(TARGET) splewis_practice-mode $(SPLEWIS_PRACTICE_MODE_VERSION) $(SPLEWIS_PRACTICE_MODE_URL) $(SPLEWIS_PRACTICE_MODE_HOME_URL)"

dl:
	wget $(SPLEWIS_PRACTICE_MODE_URL) -O practicemode_1.3.4.zip

build: dl
	\rm -rf zipped >/dev/null 2>&1
	mkdir zipped
	(cd zipped ; unzip -o ../practicemode_1.3.4.zip)
	chmod -R 777 zipped
	cp -af zipped/* $(MODS_ROOT)/
	\rm -rf zipped

clean:
	\rm -rf zipped practicemode_1.3.4.zip
