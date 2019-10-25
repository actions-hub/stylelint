#!/bin/sh

set -e

stylelint_path="node_modules/.bin/stylelint"
indent_spaces=2

if [ ! -e stylelint_path ]; then
  yarn add stylelint stylelint-config-standard --silent
fi

if [ ! -e "./.stylelintrc" ]; then
  if [ -z "${INDENT_SPACES-}" ]; then
    indent_spaces=$INDENT_SPACES
  fi

  echo "{
  \"extends\": \"stylelint-config-standard\",
  \"rules\": {
    \"indentation\": "$indent_spaces"
  }
}" > .stylelintrc
fi

pattern="./*.css"
if [ ! -z "${PATTERN}" ]; then
  pattern=$PATTERN
fi

sh -c "$stylelint_path $pattern"