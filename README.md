# How To Use

shell script bellow only supports OS X and Ubuntu.

```shell
if [[ $(uname) == 'Darwin' ]] then
  wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203083.dmg -O /tmp/st3.dmg
  SUBLIME_DIR="~/Library/Application Support/Sublime Text 3"
  SUBLIME_COMMAND=subl
else
  wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb -0 /tmp/st3.deb
  sudo gdebi !$
  SUBLIME_DIR="~/.config/sublime-text-3"
  SUBLIME_COMMAND=s
fi

# On OSX, install /tmp/st3.dmg manually

mkdir -p "$SUBLIME_DIR/Packages"
cd "$SUBLIME_DIR/Packages"
rm User -rf
git clone https://github.com/inetfuture/sublime-Config User

# Fix 'cannot input chinese problem' on Ubuntu, the system environment has to be ubuntu 13+
# If it doesn't work, follow this http://my.oschina.net/daleyjh/blog/151457 by yourself
# First, install and activate sogou pinyin, http://pinyin.sogou.com/linux/
if [[ $(uname) != 'Darwin' ]] then
  sudo cp User/s_13_10 /usr/local/bin/s
  sudo chmod +x !$
  # After this, use s to start sublime text, otherwise you still won't be able to input chinese
fi

cd "$SUBLIME_DIR/Installed Packages"
wget https://sublime.wbond.net/Package%20Control.sublime-package

$SUBLIME_COMMAND
# Then wait, sublime's package control will download missing plugins,
# including a dark theme, before it finishes the UI may not showing correctly, don't worry, just wait a while.
# Press `Ctrl + ~` you can see the downloading progress, when you see something like 'Theme loaded', you're done
```
