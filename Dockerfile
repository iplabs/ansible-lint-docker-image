ARG BASE_IMAGE="python:3"
FROM ${BASE_IMAGE}

ARG YAMLLINT_VERSION="1.16.0"
ARG ANSIBLE_LINT_VERSION="4.1.0"

LABEL maintainer="Benjamin P. Jung <b.jung@iplabs.de>" \
    pip.packages.yamllint.version="${YAMLLINT_VERSION}" \
    pip.packages.ansible-lint.version="${ANSIBLE_LINT_VERSION}"

RUN pip3 install yamllint==${YAMLLINT_VERSION} ansible-lint==${ANSIBLE_LINT_VERSION}
