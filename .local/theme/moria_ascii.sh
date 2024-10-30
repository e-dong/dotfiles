#!/bin/zsh

file=${1}
cap_top="~ speak friend, and enter ~"
cap_bot="Welcome Home, $(whoami)"

print_caption() {
  caption=${1}
  caption_horizontal_offset=$(($(tput cols) / 2 - ${#caption} / 2))
  printf -v caption_spc %${caption_horizontal_offset}s
  echo
  echo ${caption_spc}${caption}
  echo
}

print_art_centered() {
  file=${1}
  cap_top=${2}
  cap_bot=${3}
  horizontal_offset=$(($(wc -L <${file}) / 2))
  vertical_offset=$(($(wc -l <${file}) / 2))
  printf -v spc %$(($(tput cols) / 2 - ${horizontal_offset}))s
  for v in {0..$(($(tput lines) / 2 - ${vertical_offset} - 3))}; do
    echo
  done

  print_caption ${cap_top}

  while IFS= read -r line; do
    echo "${spc}${line}"
  done <"${file}"

  print_caption ${cap_bot}
}

clear
print_art_centered ${file} ${cap_top} ${cap_bot}
