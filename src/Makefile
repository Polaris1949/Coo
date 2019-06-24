object = dove.o log.o version.o
rootdir = /cygdrive/d/develop/dove
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
destbindir = $(destdir)/bin
destlibdir = $(destdir)/lib

CXX = g++
CXXINC = -I$(incdepdir) -I$(incdir)
CXXFLAGS = -std=gnu++2a -Wall -Wextra -O2 -g3 $(CXXINC)

all: lib

redo: clean all

lib: $(object)
	$(AR) cru $(libsta) $(object)
	$(CXX) $(CXXFLAGS) $(object) -fPIC -shared -o $(libdyn) \
		-Wl,--enable-auto-image-base -Xlinker --out-implib -Xlinker $(libimp)

$(object): %.o: %.cc
	$(CXX) $(CXXFLAGS) -c $< -o $@

install:
	mkdir -p $(destbindir) $(destlibdir)
	cp $(libsta) $(libimp) $(destlibdir)
	cp $(libdyn) $(destbindir)

clean:
	rm -f $(object)
	rm -f $(libsta) $(libimp) $(libdyn)
