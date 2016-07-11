#!/bin/sh

# Configuring git, basically author name and email address.
echo "Configuring git..."
if [ $(grep -c "\[user\]" .gitconfig) -ne 0 ]
then
    echo "Git is already configured."
else
    printf "  Author name: "
    read name
    printf "  Author email: "
    read email

    echo "[user]" >> .gitconfig
    echo $'\t'"name = ${name}" >> .gitconfig
    echo $'\t'"email = ${email}" >> .gitconfig

    echo "Git configuration completed."
fi

# Auto-executing .bash_profile.
echo "Enabling .bash_profile auto-execution..."
if [ $(grep -c "~/.bash_profile" .bashrc) -ne 0 ]
then
    echo ".bash_profile auto-execution is already enabled."
else
    echo $'\n' >> .bashrc
    echo "# Execute .bash_profile if it exists." >> .bashrc
    echo "if [ -f ~/.bash_profile ]; then" >> .bashrc
    echo "    . ~/.bash_profile" >> .bashrc
    echo "fi" >> .bashrc

    echo ".bash_profile auto-execution is enabled."
fi
