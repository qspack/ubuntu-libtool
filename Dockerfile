ARG DOCKER_REGISTRY=docker.io
ARG DOCKER_REPO=qspack
ARG FROM_IMG_NAME="ubuntu-base"
ARG FROM_IMG_TAG="latest"
ARG FROM_IMG_HASH=""
FROM ${DOCKER_REGISTRY}/${DOCKER_REPO}/${FROM_IMG_NAME}:${FROM_IMG_TAG}${DOCKER_IMG_HASH}

ARG LIBTOOL_VERSION=2.4.6
ENV SPACK_LIBTOOL_VERSION=${LIBTOOL_VERSION}
LABEL qnib.spack.libtool.version=${SPACK_LIBTOOL_VERSION}
RUN /usr/local/src/spack/bin/spack install --no-checksum libtool@${SPACK_LIBTOOL_VERSION}
