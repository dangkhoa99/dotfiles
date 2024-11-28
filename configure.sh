#!/bin/sh

# ------------------------------------------------------------------
BASE_FOLDER=$(pwd)
echo "Base folder: $BASE_FOLDER"

# ------------------------------------------------------------------
echo "Configuring ZSH..."
rm -rf "$HOME/.zshrc"
ln -s "$BASE_FOLDER/confs/zsh/.zshrc" "$HOME/.zshrc"

# ------------------------------------------------------------------
echo "Configuring TMUX..."
rm -rf "$HOME/.tmux.conf"
ln -s "$BASE_FOLDER/confs/tmux/.tmux.conf" "$HOME/.tmux.conf"

# ------------------------------------------------------------------
echo "Configuring STARSHIP..."
rm -rf "$HOME/.config/starship.toml"
ln -s "$BASE_FOLDER/confs/starship/starship.toml" "$HOME/.config/starship.toml"

# ------------------------------------------------------------------
echo "Configuring NVIM..."
is_nvim_available=$(command -v nvim > /dev/null)

if ! $is_nvim_available; then
  echo "NVIM is not installed"
  exit 1
else
  echo "NVIM is installed | Start configuring..."
  rm -rf "$HOME/.config/nvim"
  ln -s "$BASE_FOLDER/confs/nvim" "$HOME/.config/nvim"
fi

# ------------------------------------------------------------------
echo "Configuring ALACRITTY..."
is_alacritty_available=$(command -v alacritty > /dev/null)

if ! $is_alacritty_available; then
  echo "ALACRITTY is not installed"
  exit 1
else
  mkdir -p "$HOME/.config/alacritty"
  echo "ALACRITTY is installed | Start configuring..."
  rm -rf "$HOME/.config/alacritty/alacritty.toml"
  ln -s "$BASE_FOLDER/confs/alacritty/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"
fi

echo "Successfully configure all dotfiles!"
exit 0