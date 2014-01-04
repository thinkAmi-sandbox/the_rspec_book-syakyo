
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /home/vagrant/.rbenv/versions/1.8.7-p374/lib/ruby/1.8/i686-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/home/vagrant/.rbenv/versions/1.8.7-p374
exec_prefix = $(prefix)
datarootdir = $(prefix)/share
sitelibdir = $(sitedir)/$(ruby_version)
sbindir = $(exec_prefix)/sbin
localstatedir = $(prefix)/var
localedir = $(datarootdir)/locale
includedir = $(prefix)/include
vendordir = $(libdir)/ruby/vendor_ruby
dvidir = $(docdir)
htmldir = $(docdir)
pdfdir = $(docdir)
libexecdir = $(exec_prefix)/libexec
archdir = $(rubylibdir)/$(arch)
bindir = $(exec_prefix)/bin
infodir = $(datarootdir)/info
rubylibdir = $(libdir)/ruby/$(ruby_version)
sharedstatedir = $(prefix)/com
datadir = $(datarootdir)
oldincludedir = $(DESTDIR)/usr/include
docdir = $(datarootdir)/doc/$(PACKAGE)
sysconfdir = $(prefix)/etc
psdir = $(docdir)
sitearchdir = $(sitelibdir)/$(sitearch)
mandir = $(datarootdir)/man
vendorlibdir = $(vendordir)/$(ruby_version)
sitedir = $(libdir)/ruby/site_ruby
vendorarchdir = $(vendorlibdir)/$(sitearch)
libdir = $(exec_prefix)/lib

CC = /usr/bin/gcc
LIBRUBY = $(LIBRUBY_A)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) 
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fPIC -g -O3 $(cflags) -Wall 
INCFLAGS = -I. -I$(topdir) -I$(hdrdir) -I$(srcdir)
DEFS     = -D_FILE_OFFSET_BITS=64
CPPFLAGS = -DHAVE_RE_H -I/home/vagrant/.rbenv/versions/1.8.7-p374/include  $(DEFS) $(cppflags)
CXXFLAGS = $(CFLAGS) 
ldflags  = -L. -L/home/vagrant/.rbenv/versions/1.8.7-p374/lib  -rdynamic -Wl,-export-dynamic
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = $(CC) -shared
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = i686-linux
sitearch = i686-linux
ruby_version = 1.8
ruby = /home/vagrant/.rbenv/versions/1.8.7-p374/bin/ruby
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir) -Wl,-R$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = /json/ext
LOCAL_LIBS = 
LIBS =   -lrt -ldl -lcrypt -lm   -lc
SRCS = parser.c
OBJS = parser.o
TARGET = parser
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /home/vagrant/rspec/showtime/vendor/bundle/ruby/1.8/gems/json-1.4.6/ext/json/ext$(target_prefix)
RUBYARCHDIR = /home/vagrant/rspec/showtime/vendor/bundle/ruby/1.8/gems/json-1.4.6/ext/json/ext$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h
