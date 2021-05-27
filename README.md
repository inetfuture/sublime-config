# How To Use

```shell
if [[ $(uname) == 'Darwin' ]]; then
  SUBLIME_DIR="~/Library/Application Support/Sublime Text 3"
else
  SUBLIME_DIR="~/.config/sublime-text-3"
fi

mkdir -p "$SUBLIME_DIR/Packages"
cd "$SUBLIME_DIR/Packages"
rm User -rf
git clone https://github.com/inetfuture/sublime-Config User
```
