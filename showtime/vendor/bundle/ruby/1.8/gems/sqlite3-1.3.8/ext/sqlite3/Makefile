
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /home/vagrant/.rbenv/versions/1.8.7-p374/lib/ruby/1.8/i686-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/home/vagrant/.rbenv/versions/1.8.7-p374
exec_prefix = $(prefix)
sharedstatedir = $(prefix)/com
rubylibdir = $(libdir)/ruby/$(ruby_version)
localstatedir = $(prefix)/var
sbindir = $(exec_prefix)/sbin
bindir = $(exec_prefix)/bin
libdir = $(exec_prefix)/lib
oldincludedir = $(DESTDIR)/usr/include
htmldir = $(docdir)
includedir = $(prefix)/include
vendorlibdir = $(vendordir)/$(ruby_version)
libexecdir = $(exec_prefix)/libexec
docdir = $(datarootdir)/doc/$(PACKAGE)
pdfdir = $(docdir)
vendordir = $(libdir)/ruby/vendor_ruby
datarootdir = $(prefix)/share
sysconfdir = $(prefix)/etc
sitedir = $(libdir)/ruby/site_ruby
mandir = $(datarootdir)/man
vendorarchdir = $(vendorlibdir)/$(sitearch)
dvidir = $(docdir)
datadir = $(datarootdir)
infodir = $(datarootdir)/info
localedir = $(datarootdir)/locale
archdir = $(rubylibdir)/$(arch)
sitearchdir = $(sitelibdir)/$(sitearch)
psdir = $(docdir)
sitelibdir = $(sitedir)/$(ruby_version)

CC = /usr/bin/gcc
LIBRUBY = $(LIBRUBY_A)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) 
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fPIC -g -O2 $(cflags) 
INCFLAGS = -I. -I. -I/home/vagrant/.rbenv/versions/1.8.7-p374/lib/ruby/1.8/i686-linux -I.
DEFS     = -D_FILE_OFFSET_BITS=64
CPPFLAGS = -DHAVE_SQLITE3_INITIALIZE -DHAVE_SQLITE3_BACKUP_INIT -DHAVE_SQLITE3_COLUMN_DATABASE_NAME -DHAVE_SQLITE3_ENABLE_LOAD_EXTENSION -DHAVE_SQLITE3_LOAD_EXTENSION -DHAVE_SQLITE3_OPEN_V2 -DHAVE_SQLITE3_PREPARE_V2 -DHAVE_TYPE_SQLITE3_INT64 -DHAVE_TYPE_SQLITE3_UINT64 -I/home/vagrant/.rbenv/versions/1.8.7-p374/include  -D_FILE_OFFSET_BITS=64 -I/home/vagrant/.rbenv/versions/1.8.7-p374/include 
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
target_prefix = /sqlite3
LOCAL_LIBS = 
LIBS =  -lsqlite3  -lrt -ldl -lcrypt -lm   -lc
SRCS = backup.c database.c sqlite3.c exception.c statement.c
OBJS = backup.o database.o sqlite3.o exception.o statement.o
TARGET = sqlite3_native
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /home/vagrant/rspec/showtime/vendor/bundle/ruby/1.8/gems/sqlite3-1.3.8/lib$(target_prefix)
RUBYARCHDIR = /home/vagrant/rspec/showtime/vendor/bundle/ruby/1.8/gems/sqlite3-1.3.8/lib$(target_prefix)

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
