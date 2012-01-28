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

PKGROOT		= /opt/openbabel
REDHAT.ROOT     = $(CURDIR)/../../
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

PROFILES                = rocks-openbabel.sh rocks-openbabel.csh

build:
	echo "Nothing explicit to Build"


install::
	mkdir -p $(ROOT)/etc/profile.d
	install $(PROFILES) $(ROOT)/etc/profile.d

clean::
