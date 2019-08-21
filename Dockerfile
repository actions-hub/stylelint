FROM exelban/baseimage:node-latest

LABEL name="stylelint" \
      version="1.0.0" \
      repository="https://github.com/exelban/stylelint" \
      homepage="https://github.com/exelban/stylelint" \
      maintainer="Serhiy Mytrovtsiy <mitrovtsiy@ukr.net>" \
      com.github.actions.name="stylelint" \
      com.github.actions.description="GitHub Action that runs stylelint." \
      com.github.actions.icon="layout" \
      com.github.actions.color="black"

COPY README.md /

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]