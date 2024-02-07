#!/usr/bin/env bash

ext="./external"

if [[ ! -d "$ext" ]]; then
  mkdir $ext -p
fi


dir="$ext/book"
echo -e "\033[32m$dir\033[0m"
if [[ ! -d "$dir" ]]; then
  git clone git@github.com:charlesbases/fork_book.git $dir
fi

dir="$ext/standards"
echo -e "\033[32m$dir\033[0m"
if [[ ! -d "$dir" ]]; then
  git clone git@github.com:charlesbases/fork_standards.git $dir
fi

dir="$ext/introduction"
echo -e "\033[32m$dir\033[0m"
if [[ ! -d "$dir" ]]; then
  git clone git@github.com:charlesbases/fork_introduction.git $dir
fi

dir="$ext/design_pattern"
echo -e "\033[32m$dir\033[0m"
if [[ ! -d "$dir" ]]; then
  git clone git@github.com:charlesbases/fork_design_pattern.git $dir
fi
