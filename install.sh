echo "Creating soft links for top-level dotfiles..."
echo "Current directory: $(pwd)"
# Ensure .nvm directory is created before creating soft link
mkdir -p ${HOME}/.nvm
set -x
ln -s ${PWD}/.gitconfig         ${HOME}/.gitconfig
ln -s ${PWD}/.zshrc             ${HOME}/.zshrc
ln -s ${PWD}/.zshrc             ${HOME}/.profile
ln -s ${PWD}/.p10k.zsh          ${HOME}/.p10k.zsh
ln -s ${PWD}/.dir_colors        ${HOME}/.dir_colors  
ln -s ${PWD}/.default-packages  ${HOME}/.nvm/default-packages
ln -s ${PWD}/.gitignore_global  ${HOME}/.gitignore_global
ln -s ${PWD}/btop.conf          ${HOME}/.config/btop/btop.conf
echo
echo "Soft links created."
echo
echo "Installing External ZSH plugins"
git clone https://github.com/reegnz/jq-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/jq &> /dev/null || cd ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/jq && git pull &> /dev/null
echo "complete!"
