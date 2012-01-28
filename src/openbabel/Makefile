#
# $Id: Makefile,v 1.1 2012/01/28 00:57:52 nadya Exp $
#
# @Copyright@
# @Copyright@
#
# $Log: Makefile,v $
# Revision 1.1  2012/01/28 00:57:52  nadya
# initial
#
#

PKGROOT		= /opt/cadd/openbabel
REDHAT.ROOT     = $(CURDIR)/../../
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk


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

clean::
	rm -rf $(NAME)-$(VERSION)
	rm -rf build
