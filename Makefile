DIST=.dist
THEME_NAME=$(shell basename `pwd`)
SOURCE=./*
TARGET=../target

config: clean manifest
	mkdir -p $(DIST)/$(THEME_NAME)

	cp -pr css images include js template themeconf.inc.php $(DIST)/$(THEME_NAME)/; \
	find $(DIST) -name '*~' -exec rm \{\} \;

dist: config
	cd $(DIST); \
	mkdir -p $(TARGET); \
	zip -v -r9 $(TARGET)/$(THEME_NAME)-$$(grep Version $(THEME_NAME)/themeconf.inc.php | sed -e 's/.*Version: //').zip $(THEME_NAME)/*; \

manifest:
	@find ./ -type f|egrep -v '(*~|.git|.gitignore|.dist|scss|package.json|postcss\.config\.js|package-lock.json|css/.*\.js|css/.*\.js\.map|node_modules|target|modele_complete|Makefile|rsync_exclude)'|sed -e 's/\.\///' -e 's/\(.*\)/$(THEME_NAME)\/&/'> ./MANIFEST

clean:
	rm -fr $(DIST)
