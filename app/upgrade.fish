#!/usr/bin/env fish

if type "apt" > /dev/null 2>&1
  echo 'Upgrading APT...'
  sudo apt update
  sudo apt upgrade -y
  sudo apt autoremove -y
end

if type "yum" > /dev/null 2>&1
  echo 'Upgrading YUM...'
  sudo yum update -y
  sudo yum upgrade -y
  sudo yum autoremove -y
end

if type "pacman" > /dev/null 2>&1
  echo 'Upgrading Pacman...'
  sudo pacman -Syyu
end

echo 'Upgrading Homebrew...'

brew upgrade
