sudo apt update
sudo apt install git libfcitx5core-dev cmake libzstd-dev build-essential rustc cargo qtbase5-dev qtbase5-dev-tools
git clone --recursive https://github.com/OpenBangla/OpenBangla-Keyboard.git
cd OpenBangla-Keyboard
git checkout develop
git submodule update
cp ../CMakeLists.txt ./
mkdir build && cd build
cmake ..
make
sudo make install
