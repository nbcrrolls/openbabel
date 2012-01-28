# 
# $Id: Makefile,v 1.1 2012/01/28 00:57:53 nadya Exp $
#
# @Copyright@
# @Copyright@
#
# $Log: Makefile,v $
# Revision 1.1  2012/01/28 00:57:53  nadya
# initial
#

PKGROOT         = /var/www/html/roll-documentation/openbabel/$(VERSION)
REDHAT.ROOT     = $(PWD)/../../
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

default: $(NAME).spec ../$(NAME)-$(VERSION).tar.gz

html: predoc
	jw --backend html --dsl $(PWD)/rocks.dsl#html index.sgml 

pdf: predoc
	jw --backend pdf --dsl $(PWD)/rocks.dsl#print index.sgml

build: html pdf

install:: build
	mkdir -p $(ROOT)/$(PKGROOT)/images
	mkdir -p $(ROOT)/$(PKGROOT)/stylesheet-images
	install -ma+r index.pdf 	$(ROOT)/$(PKGROOT)/$(NAME).pdf
	install -ma+r *.html    	$(ROOT)/$(PKGROOT)/
	install -ma+r images/*.png	$(ROOT)/$(PKGROOT)/images/
	install -ma+r stylesheet-images/{*.gif,*.png} \
		$(ROOT)/$(PKGROOT)/stylesheet-images/
	install -ma+r rocks.css $(ROOT)/$(PKGROOT)/

clean::
	rm -f *.html
	rm -f index.pdf


