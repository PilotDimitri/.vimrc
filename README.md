# .vimrc
My default .vimrc profile

1. Add these directories:
```
mkdir ~/.vim/backup/ && mkdir ~/.vim/swap/ && mkdir ~/.vim/undo/
```
2. Go to system settings -> keyboard -> key repeat (fast) && delay unit repeat (short) to make the navigation much more faster in VIM.

Note: You can try this out too: `defaults write NSGlobalDomain KeyRepeat -int 0`

3. Install plugins:
  - put the files under `~/.vim/plugin`
  - run `:source ~/.vim/plugin/plugin-name.vim` e.g. `:source ~/.vim/plugin/buftabs.vim`
