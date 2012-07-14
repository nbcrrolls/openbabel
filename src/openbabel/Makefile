#
# $Id: Makefile,v 1.3 2012/07/14 01:42:53 nadya Exp $
#
# @Copyright@
# @Copyright@
#
# $Log: Makefile,v $
# Revision 1.3  2012/07/14 01:42:53  nadya
# add wrapper script
#
# Revision 1.2  2012/07/13 19:35:56  nadya
# use common place for version
#
# Revision 1.1  2012/01/28 00:57:52  nadya
# initial
#
#

PKGROOT		= /opt/openbabel-$(VERSION)
REDHAT.ROOT     = $(CURDIR)/../../
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk


version.mk:
	cat ../version.mk version.mk.in > version.mk

build:
	mkdir -p build
	gunzip -c $(NAME)-$(VERSION).tar.gz | $(TAR) -xf -
	(									\
		cd build;							\
		cmake -DCMAKE_INSTALL_PREFIX=$(PKGROOT) ../$(NAME)-$(VERSION);	\
		make -j2;							\
	)
	

install::
	mkdir -p $(ROOT)/$(PKGROOT)
	(							\
		cd build;					\
		make DESTDIR=$(ROOT) install;	\
	)
	(cd $(ROOT)/opt; ln -s openbabel-$(VERSION) openbabel)
	mkdir -p $(ROOT)/$(PKGROOT)/bin
	install -m755 openbabel.sh $(ROOT)/$(PKGROOT)/bin

clean::
	rm -rf $(NAME)-$(VERSION)
	rm -rf build
	rm -rf version.mk
