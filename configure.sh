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
