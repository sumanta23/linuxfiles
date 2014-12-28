#!/bin/bash

backupfile="${1}"
restoredir="/var/tmp/restore/"
echo ${backupfile}
echo ${restoredir}
mkdir -p ${restoredir}
tar -xvf "${backupfile}" -C "${restoredir}"

cp  ${restoredir}etc/httpd/conf.d/subversion.conf /etc/httpd/conf.d/subversion.conf
cp  ${restoredir}etc/httpd/conf.d/proxy_ajp.conf /etc/httpd/conf.d/proxy_ajp.conf
cp  ${restoredir}etc/httpd/conf.d/mod-jk.conf /etc/httpd/conf.d/mod-jk.conf
cp  ${restoredir}etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf
cp  ${restoredir}etc/httpd/html/index.php /etc/httpd/html/index.php

cp  ${restoredir}var/www/dump /var/www/dump
cp ${restoredir}var/www/svn/createsvn /var/www/svn/createsvn
cp ${restoredir}var/www/svn/restoresvn /var/www/svn/restoresvn
mkdir -p /share/opt/sw/svndump/
cp ${restoredir}share/opt/sw/svndump/ /share/opt/sw/svndump/
rm -rf ${restoredir}share/opt/sw/svndump/
cd /share/opt/sw/svndump/
tar -xvf * 
cd -
bash /var/www/svn/restoresvn

cp ${restoredir}etc/sysconfig/network /etc/sysconfig/network
cp ${restoredir}etc/hosts /etc/hosts
cp ${restoredir}root/.screenrc /root/.screenrc
cp ${restoredir}root/.bashrc /root/.bashrc

cp ${restoredir}etc/samba/smb.conf /etc/samba/smb.conf
cp ${restoredir}etc/exports /etc/exports

cp ${restoredir}etc/sysconfig/network-scripts/ifcfg-eth0 /etc/sysconfig/network-scripts/ifcfg-eth0
cp ${restoredir}etc/sysconfig/network-scripts/ifcfg-eth1 /etc/sysconfig/network-scripts/ifcfg-eth1

mkdir -p /share/rpmpkg/
cp ${restoredir}share/rpmpkg/ /share/rpmpkg/

cp ${restoredir}etc/setenv /etc/setenv
cp ${restoredir}etc/bashrc /etc/bashrc



