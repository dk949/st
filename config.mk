# st version
ifndef VERSION
DATE         = $(shell git log -1 --format='%cd' --date=format:'%F')
DATE_TIME    = $(DATE) 00:00
COMMIT_COUNT = $(shell git rev-list --count HEAD --since="$(DATE_TIME)")
VERSION      = 0.8.5.$(shell date -d "$(DATE)" +'%Y%m%d')_$(COMMIT_COUNT)
endif

# Customize below to fit your system

# paths
DESTDIR   ?=
PREFIX    ?= /usr/local
MANPREFIX ?= $(PREFIX)/share/man

REQ_LIBS = x11 xrender xft fontconfig freetype2 harfbuzz

# includes and libs
LIBFLAGS = `pkg-config $(REQ_LIBS) --cflags`
LIBS     = `pkg-config $(REQ_LIBS) --libs` -lm -lrt -lutil

# flags
CPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600
CFLAGS = $(LIBFLAGS) $(CPPFLAGS) -O3
LDFLAGS = $(LIBS)

# compiler and linker
CC ?= gcc
