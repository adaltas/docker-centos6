# docker-centos6

Creation of a centos docker image. Since the official build remove some useful files as locales and docs
The filesystem image is from a minimal installation of centos with theses (small) modifications:

* `rpm -e grub redhat-logos`: remove grub as a container is not bootable
* `rm -rf /boot /etc/grub.conf`: same reason
* `rpm -e redhat-logos`: remove useless logos (10MB)
* `rm -rf /etc/ld.so.cache /var/cache/ldconfig/*`: remove ld cache
* `yum update -y`:
* `yum clean all`: clean yum cache
* `passwd -d root`: remove root password
