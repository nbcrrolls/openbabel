#
# $Id: Makefile,v 1.1 2012/01/28 00:57:51 nadya Exp $
#
# @Copyright@
# @Copyright@
#
# $Log: Makefile,v $
# Revision 1.1  2012/01/28 00:57:51  nadya
# initial
#
#
#

REDHAT.ROOT     = $(CURDIR)/../../
MAKE.iscontrib  = 1
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

rpm:: build
	-cp *.$(ARCH).rpm $(REDHAT.RPMS)/$(ARCH)/

build:
	mkdir -p $(REDHAT.RPMS)/$(ARCH)/

