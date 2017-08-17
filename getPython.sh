#!/bin/bash
URL='http://downloads.activestate.com/ActivePython/releases/2.7.13.2715/ActivePython-2.7.13.2715-linux-x86_64-glibc-2.12-402695.tar.gz'
DIR='ActivePython-2.7.13.2715-linux-x86_64-glibc-2.12-402695'


# make directory
mkdir -p /opt/bin
pushd /opt
curl $URL | tar xzv

(cd $DIR && ./install.sh -I /opt/python/)
rm -rf $DIR

ln -sf /opt/python/bin/easy_install /opt/bin/easy_install
ln -sf /opt/python/bin/pip /opt/bin/pip
ln -sf /opt/python/bin/python /opt/bin/python
ln -sf /opt/python/bin/virtualenv /opt/bin/virtualenv
popd