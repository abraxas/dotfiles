#!/usr/bin/env bash
sudo yum -y install http://www.city-fan.org/ftp/contrib/yum-repo/city-fan.org-release-1-13.rhel7.noarch.rpm
echo "[mariadb]" > /etc/yum.repos.d/mariadb.repo
echo "name=MariaDB" >> /etc/yum.repos.d/mariadb.repo
echo "baseurl=http://yum.mariadb.org/10.2/centos7-amd64" >> /etc/yum.repos.d/mariadb.repo
echo "gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB" >> /etc/yum.repos.d/mariadb.repo
echo "gpgcheck=1" >> /etc/yum.repos.d/mariadb.repo
yum -y install https://centos7.iuscommunity.org/ius-release.rpm
yum clean all
yum updateinfo
yum makecache fast
yum -y install man readline readline-devel ncurses ncurses-devel
yum -y install --enablerepo=city-fan.org curl libcurl-devel
yum -y install wget
yum -y install python
yum -y install python-devel
yum -y install sqlite-devel
yum -y install python-pip
yum -y install htop
yum -y install vim
yum -y install screen
yum -y install openssl
yum -y install openssl-devel
yum -y install libffi-devel
yum -y install zsh
yum -y install zip
yum -y install unzip
yum -y install libjpeg-turbo-devel
yum -y install freetype-devel
yum -y install zlib-devel
yum -y install bzip2-devel
yum -y install gcc
yum -y install gcc-c++
yum -y install make
yum -y install automake
yum -y install autoconf
yum -y install nfs-utils
yum -y install openldap-devel
yum -y install bind-utils
yum -y install rsync
yum -y install gnupg
yum -y install libxml2-devel
yum -y install libxslt-devel
yum -y install tkinter tk-devel
yum -y update
yum -y upgrade
yum -y install MariaDB-devel MariaDB-client MariaDB-shared
yum -y install gettext-devel perl-CPAN perl-devel
if [ ! -e /usr/local/bin/git ] ; then
    wget https://github.com/git/git/archive/v2.14.2.tar.gz -O /tmp/git.tgz
    mkdir -p /usr/local/src/git
    tar xzf /tmp/git.tgz -C /usr/local/src/git --strip-components=1
    cd /usr/local/src/git && make configure && ./configure --prefix=/usr/local && make && make install
    rm -rf /usr/local/src/git
    rm -rf /tmp/git.tgz
fi
if [ ! -L /u ] && [ -d /mnt/c/u ] ; then
    ln -s /mnt/c/u /u ;
fi
mkdir -p /u/downloads
if [ ! -e /usr/local/bin/python2.7 ] ; then
    version="2.7.14"
    wget "https://www.python.org/ftp/python/${version}/Python-${version}.tgz" -O "/u/downloads/python-${version}.tgz"
    mkdir -p "/u/python-${version}"
    cd "/u/python-${version}"
    tar xzf "/u/downloads/python-${version}.tgz" --strip-components=1
    ./configure && make && make altinstall
    cd /u
    rm -rf "/u/python-${version}"
    rm -f "/u/downloads/python-${version}.tgz"
fi
if [ ! -e /usr/local/bin/python3.6 ] ; then
    version="3.6.3"
    wget "https://www.python.org/ftp/python/${version}/Python-${version}.tgz" -O "/u/downloads/python-${version}.tgz"
    mkdir -p "/u/python-${version}"
    cd "/u/python-${version}"
    tar xzf "/u/downloads/python-${version}.tgz" --strip-components=1
    ./configure && make && make altinstall
    cd /u
    rm -rf "/u/python-${version}"
    rm -f "/u/downloads/python-${version}.tgz"
fi
if [ ! -e /usr/bin/git-crypt ] ; then
    mkdir -p /usr/local/src
    cd /usr/local/src && git clone https://github.com/AGWA/git-crypt
    cd /usr/local/src/git-crypt && make && make install
    rm -rf /usr/local/src/git-crypt
fi
cd /u
if [ ! -d dotfiles ] ; then
    git clone https://github.com/2ps/dotfiles ;
else
    cd dotfiles && git pull
fi
/u/dotfiles/wsl-install
/usr/local/bin/git --version
git-crypt --version
/usr/local/bin/python2.7 --version
pip install -U pip ansible awscli
pip install setuptools==33.1.1
pip install -U ipython
pip install -U virtualenv
curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/mssql-release.repo
ACCEPT_EULA=Y yum -y install msodbcsql
ACCEPT_EULA=Y yum -y install mssql-tools
yum -y install unixODBC-devel
yum -y install pv man man-pages xz-devel


#####
##  install and setup node
#####
if [ ! -e /u/downloads ] ; then
    mkdir -p /u/downloads ;
fi
if [ ! -e /usr/local/bin/node ] ; then
    cd /u/downloads
    wget https://nodejs.org/dist/v8.4.0/node-v8.4.0-linux-x64.tar.xz
    tar xf node-v8.4.0-linux-x64.tar.xz
    cd node-v8.4.0-linux-x64
    rsync -a lib /usr/local
    rsync -a bin /usr/local
    rsync -a share /usr/local
    rsync -a include /usr/local
fi

if [ -e /u/to_penguins ] ; then
    cd /u/to_penguins
    if [ -d bin ] ; then rm -rf bin ; fi
    if [ -d lib ] ; then rm -rf lib ; fi
    if [ -d include ] ; then rm -rf include ; fi
    virtualenv . -p /usr/local/bin/python2.7
    source bin/activate
    pip install six
    pip install -r requirements.txt
    deactivate
fi
if [ -e /u/for_penguins ] ; then
    cd /u/for_penguins
    if [ -d bin ] ; then rm -rf bin ; fi
    if [ -d lib ] ; then rm -rf lib ; fi
    if [ -d include ] ; then rm -rf include ; fi
    virtualenv . -p /usr/local/bin/python3.6
    source bin/activate
    pip install six
    pip install -r py3.requirements.txt
    deactivate
fi
if [ -e /u/upholstery ] ; then
    cd /u/upholstery
    if [ -d bin ] ; then rm -rf bin ; fi
    if [ -d lib ] ; then rm -rf lib ; fi
    if [ -d include ] ; then rm -rf include ; fi
    virtualenv . -p /usr/local/bin/python2.7
    source bin/activate
    pip install -r requirements.txt
    deactivate
fi
sed -i -e 's,^\#set bell-style none$,set bell-style none,g' /etc/inputrc
