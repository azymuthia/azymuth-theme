```console
git clone https://github.com/azymuthia/azymuth-theme.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/azymuth

sed -i '/^ZSH_THEME=/c\ZSH_THEME="azymuth/azymuth"' ~/.zshrc

apt install -y zsh-autosuggestions zsh-syntax-highlighting zsh

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
```

```.zshrc
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)
```
