# Install on mac

# Install OpenGL developer tools and headers
echo ""
echo "Note: Make sure XCode is up to date first."
echo ""
xcode-select --install

# Install Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null

# Install requirements
brew install python3
brew install cmake tinyxml assimp ffmpeg qt
brew install boost-python --without-python --with-python3 --build-from-source
export PATH=/usr/local/bin:/usr/local/opt/qt5/bin:$PATH
export PKG_CONFIG_PATH=/usr/local/opt/qt5/lib/pkgconfig

# Install python requirements
sudo pip3 install gym
