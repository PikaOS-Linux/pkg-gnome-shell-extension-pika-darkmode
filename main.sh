DEBIAN_FRONTEND=noninteractive

# Clone Upstream
mkdir -p ./gnome-shell-extension-pika-darkmode
cp -rvf ./debian ./gnome-shell-extension-pika-darkmode/
cd ./gnome-shell-extension-pika-darkmode

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
