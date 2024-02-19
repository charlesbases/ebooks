#!/usr/bin/env bash

root="./fork"

while getopts ":f" opt; do
  case $opt in
    f)
      rm -rf $root
    ;;
  esac
done
shift $(($OPTIND - 1))

if [[ ! -d "$root" ]]; then
  mkdir $root -p
fi

fetch() {
  name="$root/$(echo $1 | cut -d_ -f2-)"
  if [[ -d $name ]]; then
    return
  fi

  echo -e "\033[32m$1\033[0m"

  # wget
  wget -O - "https://codeload.github.com/charlesbases/$1/zip/refs/heads/master" > $name.zip

  # unzip
  unzip -qq -d $root $name.zip && mv "$root/$1-master" "$name" && rm -rf $name.zip
}

for i in "fork_book" "fork_standards" "fork_introduction" "fork_design_pattern"; do
  fetch $i
done
