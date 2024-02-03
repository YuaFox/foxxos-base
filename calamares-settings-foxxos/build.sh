# Requires debian testing to build!!!
rm build
mkdir build
cd build
apt download calamares-settings-debian
ar x ./*.deb
tar xvf data.tar.xz
cd ..
rm -r calamares-settings-foxxos
mkdir calamares-settings-foxxos
cp -r build/etc calamares-settings-foxxos/etc
cp -r build/usr calamares-settings-foxxos/usr
cp -r calamares-settings-foxxos-base/* calamares-settings-foxxos
mkdir dist
dpkg-deb --build calamares-settings-foxxos dist