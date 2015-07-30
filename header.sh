#!/usr/bin/bash

FILE=$1

TITLE=`cat titles \
  | grep -e $FILE \
  | awk '{for (i = 2; i < NF; i++) printf $i " "; print $NF}'
  `
if [ -z "$TITLE" ]; then
  >&2 echo "Warning: add a title for $FILE in the file 'titles'"
  exit 2
fi

GLOBAL=`./condense_css.rb assets/global.css   | sed 's/^/      /g'`
WIDE=`./condense_css.rb assets/wide.css | sed 's/^/        /g'`
NARROW=`./condense_css.rb assets/narrow.css   | sed 's/^/        /g'`

read -d '' DOC  << END
<!DOCTYPE HTML>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="description"
          content="Memory Hole: Protected E-mail Headers">
    <meta name="robots" content="noimageindex">
    <meta name="googlebot" content="noimageindex">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>$TITLE</title>
    <style>
$GLOBAL
      @media (min-width:  641px){
$WIDE
      }
      @media (max-width: 640px){
$NARROW
      }
    </style>
  </head>
  <body>
    <h1>Memory Hole</h1>
    <h1 class="subtitle">Protected E-Mail Headers.</h1>
    <hr />
    <ul id="navigation-ul">
      <li>
        <a href="/memoryhole/">About</a>
      </li>
      <li>
        <a href="/memoryhole/corpus">Examples</a>
      </li>
      <li>
        <a href="/memoryhole/specs">Specification</a>
      </li>
      <li>
        <a href="/memoryhole/guidance">Guidance</a>
      </li>
    </ul>
    <hr />

END

echo -e "$DOC"
