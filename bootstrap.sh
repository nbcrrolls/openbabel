#!/bin/sh
#
# This file should remain OS independent
#
# $Id: bootstrap.sh,v 1.2 2012/02/09 00:07:22 clem Exp $
#
# @Copyright@
# @Copyright@
#
# $Log: bootstrap.sh,v $
# Revision 1.2  2012/02/09 00:07:22  clem
# Use $ROLLSROOT variable for referencing boostrap-function.sh
#
# Revision 1.1  2012/01/28 00:57:51  nadya
# initial
#

. $ROLLSROOT/etc/bootstrap-functions.sh

install cmake 
install xmlrpc-c
install xmlrpc-c-client

