#!/usr/bin/env bash
languages=`echo "typescript js rust nodejs bash" | tr ' ' '\n'`;
core_utils=`echo "xargs find mv sed awk" | tr ' ' '\n'`;
selected=`printf "$languages\n$core_utils" | fzf`;

read -p "query: " query;

if [[ $languages == *"$selected"* ]]; then
  curl cht.sh/$selected/$query;
fi
