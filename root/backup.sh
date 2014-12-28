iptables-save > /var/tmp/iptablerules


FILES="${FILES} /var/tmp/iptablerules"
FILES="${FILES} /usr/local/bin/glassfish"
FILES="${FILES} /usr/local/bin/jboss"
FILES="${FILES} /etc/samba/smb.conf"
FILES="${FILES} /root/backup.sh"
FILES="${FILES} /etc/sysconfig/network-scripts/ifcfg-eth0"
FILES="${FILES} /etc/sysconfig/network-scripts/ifcfg-eth1"
FILES="${FILES} /etc/exports"
FILES="${FILES} /etc/httpd/conf.d/subversion.conf"
FILES="${FILES} /etc/httpd/conf.d/proxy_ajp.conf"
FILES="${FILES} /etc/httpd/conf.d/mod-jk.conf"
FILES="${FILES} /etc/httpd/conf/httpd.conf"
FILES="${FILES} /opt/setenv"
FILES="${FILES} /opt/svnurl"
FILES="${FILES} /var/www/dump"
bash /var/www/dump
FILES="${FILES} /opt/sw/svndump/"
FILES="${FILES} /root/.bashrc"
FILES="${FILES} /root/.screenrc"
FILES="${FILES} /mnt/nfs/rpmpkg/"

tar cvf backup-files.tar ${FILES}
#gzip -9 backup-files.tar
bzip2 backup-files.tar
