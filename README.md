# .vimrc
## Minimalistic Vim Setup

1. Add these directories:
```
mkdir ~/.vim/backup/ && mkdir ~/.vim/swap/ && mkdir ~/.vim/undo/
```
2. Go to system settings -> keyboard -> key repeat (fast) && delay unit repeat (short) to make the navigation much more faster in VIM.

Note: You can try this out too: `defaults write NSGlobalDomain KeyRepeat -int 0`

3. Install plugins (from folder [plugin](./plugin)):
  - put the files under `~/.vim/plugin`
  - run `:source ~/.vim/plugin/plugin-name.vim` e.g. `:source ~/.vim/plugin/buftabs.vim`
  
## Bash Terminal Manager

1. Install https://github.com/jarun/nnn - run `brew install nnn`
2. Run `nnn` or `n` in bash
3. If you want to open a file in vim run type `e`
4. If you want to exit in a current directory type `^g
5. If you want to exit press `q
6. If you want to delete a file press `^x`

## Faster Bash Navigation with z

1. Run `git clone https://github.com/rupa/z.git ~/z
2. Add `. ~/z/z.sh`to your .bashrc file
3. Run `source ~/.bashrc`
4. Browse around to build up the database
5. Press `z` or press `z folder` 
