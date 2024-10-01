sudo apt update
sudo apt install git libfcitx5core-dev cmake libzstd-dev build-essential rustc cargo qtbase5-dev qtbase5-dev-tools
git clone --recursive https://github.com/OpenBangla/OpenBangla-Keyboard.git
cd OpenBangla-Keyboard
git checkout develop
git submodule update
mkdir build && cd build
cmake .. -DENABLE_IBUS=OFF -DENABLE_FCITX=ON
make
sudo make install
