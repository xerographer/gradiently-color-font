# Makefile to create Gradiently SVGinOT color font

TMP := /dev/shm

# Where to find scfbuild?
SCFBUILD := SCFBuild/bin/scfbuild

VERSION := 1.0
FONT := build/Gradiently-SVGinOT.ttf

.PHONY: all clean

all: $(FONT)

$(FONT): $(SVG_BW_FILES) | build
	$(SCFBUILD) -c scfbuild.yml --font-version="$(VERSION)"
	webify-linux-x86_64 $(FONT)


build:
	mkdir build

clean:
	rm -rf build
