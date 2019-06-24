rootdir = /cygdrive/d/develop/dove
bindir = $(rootdir)/bin
incdir = $(rootdir)/include
incdepdir = /cygdrive/d/develop
libdir = $(rootdir)/lib
libsubdir = $(rootdir)/dove
libname = dove
vermajor = 0
libsta = lib$(libname).a
libimp = lib$(libname).dll.a
libdyn = cyg$(libname)-$(vermajor).dll

destdir = /usr/local
destincdir = $(destdir)/include

CXX = g++
CXXINC = -I$(incdepdir) -I$(incdir)
CXXFLAGS = -std=gnu++2a -O2 -g3 $(CXXINC)

all:
	$(MAKE) all -C include
	$(MAKE) all -C src

redo: clean all

install:
	$(MAKE) install -C include
	$(MAKE) install -C src

clean:
	$(MAKE) clean -C include
	$(MAKE) clean -C src
