#!/bin/sh

set -e

configPath="./"
indentSpaces=2
pattern="*.css"

if [ ! -z "${CONFIG_PATH}" ]; then
  configPath=$CONFIG_PATH
fi
if [ ! -z "${INDENT_SPACES}" ]; then
  indent_spaces=$INDENT_SPACES
fi
if [ ! -z "${PATTERN}" ]; then
  pattern=$PATTERN
fi

stylelint_path="node_modules/.bin/stylelint"
if [ ! -e stylelint_path ]; then
  yarn add stylelint stylelint-config-standard --silent
fi

if [ ! -e "${configPath}.stylelintrc" ] && [ ! -e "${configPath}stylelint.json" ]; then
  echo "{
  \"extends\": \"stylelint-config-standard\",
  \"rules\": {
    \"indentation\": "$indentSpaces"
  }
}" > .stylelintrc
fi

echo ::add-path::${stylelint_path}

echo $pattern
sh -c "$stylelint_path $pattern"