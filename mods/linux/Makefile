#Linux
TARGET=linux
include ../common.mk
METAMOD_HOME_URL="http://www.metamodsource.net/"
METAMOD_URL="https://mms.alliedmods.net/mmsdrop/1.12/mmsource-1.12.0-git1167-linux.tar.gz"
METAMOD_VERSION="1.12.0-git1167"
SOURCEMOD_HOME_URL="http://www.sourcemod.net/"
SOURCEMOD_URL="https://sm.alliedmods.net/smdrop/1.12/sourcemod-1.12.0-git7017-linux.tar.gz"
SOURCEMOD_VERSION="1.12.0-git7017"
export

all: mods

contribs:
	@echo "$(TARGET) metamod $(METAMOD_VERSION) $(METAMOD_HOME_URL) $(METAMOD_URL)"
	@echo "$(TARGET) sourcemod $(SOURCEMOD_VERSION) $(SOURCEMOD_HOME_URL) $(SOURCEMOD_URL)"
	$(MAKE) -C ../mods/franug-knifes contrib
	$(MAKE) -C ../mods/franug-weapon-paint contrib
	$(MAKE) -C ../mods/weapon_restrict contrib
	$(MAKE) -C ../mods/multi1v1 contrib
	$(MAKE) -C ../mods/gunmenu contrib
	$(MAKE) -C ../mods/cksurf contrib
	$(MAKE) -C ../mods/retakes contrib
	$(MAKE) -C ../mods/influx contrib
	$(MAKE) -C ../mods/splewis-get5 contrib
	$(MAKE) -C ../mods/splewis-practice-mode contrib
	$(MAKE) -C ../mods/warmod contrib
	$(MAKE) -C ../mods/shanapu-myweaponallocator contrib
	$(MAKE) -C ../mods/splewis-pugsetup contrib

dl-metamod:
	wget $(METAMOD_URL) -O mmsource-1.12.0-git1167-linux.tar.gz

dl-sourcemod:
	wget $(SOURCEMOD_URL) -O sourcemod-1.12.0-git7017-linux.tar.gz

mods: dl-metamod dl-sourcemod
	\rm -rf $(MODS_ROOT) mods*.zip >/dev/null 2>&1
	mkdir -p $(MODS_ROOT)
	(cd $(MODS_ROOT) ; tar xzvpf ../mmsource-1.12.0-git1167-linux.tar.gz)
	(cd $(MODS_ROOT) ; tar xzvpf ../sourcemod-1.12.0-git7017-linux.tar.gz)
	$(MAKE) -C ../mods/weapon_restrict
	$(MAKE) -C ../mods/multi1v1
	$(MAKE) -C ../mods/gunmenu
	$(MAKE) -C ../mods/cksurf
	$(MAKE) -C ../mods/retakes
	$(MAKE) -C ../mods/influx
	$(MAKE) -C ../mods/splewis-get5
	$(MAKE) -C ../mods/shanapu-myweaponallocator
	$(MAKE) -C ../mods/splewis-pugsetup
	$(MAKE) -C ../mods/splewis-practice-mode
	$(MAKE) -C ../mods/warmod
	$(DEVTOOLS_ROOT)/merge_databases_cfg.sh $(CSGOSL_ROOT)/mods/databases.cfg $(shell find $(CSGOSL_ROOT)/mods/*/ -name databases.cfg) > $(MODS_CONFIGS)/databases.cfg
	(cd $(MODS_ROOT) ; zip -r ../mods.zip *)
	\rm -rf $(MODS_ROOT) >/dev/null 2>&1
	mkdir -p $(MODS_ROOT)
	$(MAKE) -C ../mods/franug-knifes
	$(MAKE) -C ../mods/franug-weapon-paint
	(cd $(MODS_ROOT) ; zip -r ../mods-risky.zip *)
	\rm -rf $(MODS_ROOT) >/dev/null 2>&1

clean:
	$(MAKE) -C ../mods/franug-knifes clean
	$(MAKE) -C ../mods/franug-weapon-paint clean
	$(MAKE) -C ../mods/weapon_restrict clean
	$(MAKE) -C ../mods/multi1v1 clean
	$(MAKE) -C ../mods/gunmenu clean
	$(MAKE) -C ../mods/cksurf clean
	$(MAKE) -C ../mods/retakes clean
	$(MAKE) -C ../mods/influx clean
	$(MAKE) -C ../mods/splewis-get5 clean
	$(MAKE) -C ../mods/splewis-practice-mode clean
	$(MAKE) -C ../mods/shanapu-myweaponallocator clean
	$(MAKE) -C ../mods/splewis-pugsetup clean
	$(MAKE) -C ../mods/warmod clean
	\rm -f mmsource-1.12.0-git1167-linux.tar.gz sourcemod-1.12.0-git7017-linux.tar.gz mods*.zip
