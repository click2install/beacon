systemctl stop beacon-mn1
rm -f /usr/local/bin/beacon*
tmp=$(mktemp -d)
cd ${tmp}
wget https://github.com/beaconcrypto/beacon/releases/download/v1.1.3.0/ubuntu16-4-daemon.zip
unzip ubuntu16-4-daemon.zip
chmod +x beacon*
mv beacon* /usr/local/bin
cd 
rm -rf ${tmp}
systemctl start beacon-mn1
