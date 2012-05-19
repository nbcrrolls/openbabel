#!/bin/sh
#
# This file should remain OS independent
#
# $Id: bootstrap.sh,v 1.3 2012/05/19 00:37:30 clem Exp $
#
# @Copyright@
# @Copyright@
#
# $Log: bootstrap.sh,v $
# Revision 1.3  2012/05/19 00:37:30  clem
# fix for rocks 6
#
# Revision 1.2  2012/02/09 00:07:22  clem
# Use $ROLLSROOT variable for referencing boostrap-function.sh
#
# Revision 1.1  2012/01/28 00:57:51  nadya
# initial
#

. $ROLLSROOT/etc/bootstrap-functions.sh


rpm -Uvh src/RPMS/xmlrpc-c-1.16.24-1200.1840.el6_1.4.x86_64.rpm
rpm -Uvh src/RPMS/xmlrpc-c-client-1.16.24-1200.1840.el6_1.4.x86_64.rpm
rpm -Uvh src/RPMS/cmake-2.6.4-5.el6.x86_64.rpm

