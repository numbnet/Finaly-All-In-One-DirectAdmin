rm -f /root/doiten.sh;
rm -f /root/csf_install.sh;
find /home/ -name ".DS_Store" -exec rm -rf {} \;
find /home/ -name "final.zip" -exec rm -rf {} \;
find /home/ -type d -name "__MACOSX" -exec rm -rf {} +;
# Clean DirectAdmin Cusstom Build
rm -f /usr/local/directadmin/custombuild/*.tar.bz2;
rm -f /usr/local/directadmin/custombuild/*.tar.xz;
rm -f /usr/local/directadmin/custombuild/*.tgz;
rm -f /usr/local/directadmin/custombuild/options.conf;
rm -f /usr/local/directadmin/custombuild/*.backup;
rm -f /usr/local/directadmin/custombuild/php-extension.sh;
rm -f /usr/local/directadmin/custombuild/php_extensions.conf;
rm -f /usr/local/directadmin/custombuild/pure-ftpd_debian;
rm -f /usr/local/directadmin/custombuild/pure-ftpd_freebsd;