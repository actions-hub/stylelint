FROM exelban/baseimage:node-latest

LABEL name="stylelinter"
LABEL version="1.0.0"
LABEL repository="https://github.com/exelban/stylelint"
LABEL homepage="https://github.com/exelban/stylelint"
LABEL maintainer="Serhiy Mytrovtsiy <mitrovtsiy@ukr.net>"
LABEL com.github.actions.name="stylelinter"
LABEL com.github.actions.description="GitHub Action that runs stylelint."
LABEL com.github.actions.icon="layout"
LABEL com.github.actions.color="black"

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
