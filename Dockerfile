FROM crops/poky:ubuntu-20.04

USER root

RUN apt update -qq \
    && apt -y -qq install libncurses-dev \
    && rm -rf /var/lib/apt/lists/*

USER usersetup
