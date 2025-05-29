# How to set up OpenBangla on Deepin
### Step 1: Installing OpenBangla
1) Run the following commands
```
sudo apt update
sudo apt install git libfcitx5core-dev cmake libzstd-dev build-essential rustc cargo qtbase5-dev
git clone --recursive https://github.com/OpenBangla/OpenBangla-Keyboard.git
cd OpenBangla-Keyboard
git checkout develop
git submodule update
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX="/usr" -DENABLE_FCITX=ON
make
sudo deepin-immutable-ctl admin exec -- bash # Run this code if you have an immutable system
sudo make install
exit
```
2) Restart your PC.
### Step 2: Setting up fcitx5
#### a): On Deepin V23
1) Go to `Control Center-> Keyboard and Language-> Input Method-> Advanced Settings`
2) Then **uncheck** `Only Show Current Language`
3) Then select `OpenBangla Keyboard` from the box on the right and add it to the box on the left
4) Click Apply and then close
5) Click on `+` symbol next to `Manage Input Methods`
6) Now search for `বাংলা-Bengali`, then select `OpenBangla Keyboard` and add it
7) You can now type in Bengali.

You can also take a look at this video for step 2:

https://github.com/user-attachments/assets/aedeaad8-c6b3-40be-a49d-2875ad903ffa
 ### b) On Deepin V25
 1) Go to Control Center -> Device -> Keyboard -> Input Methods
 2) Click on `Add input method`
 3) Select `OpenBangla Keyboard` and then click on `Add`
 4) You can now type in Bengali

# Acknowledgements
All credit goes to [OpenBangla-Keyboard](https://github.com/OpenBangla/OpenBangla-Keyboard) and [others](https://github.com/OpenBangla/OpenBangla-Keyboard?tab=readme-ov-file#acknowledgements)
