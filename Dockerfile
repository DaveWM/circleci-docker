FROM circleci/node:8.7.0-browsers

SHELL ["/bin/bash", "-c"]

ENV FIREFOX_BIN="/usr/bin/firefox"

RUN cd ~ && curl -o firefox.tar.bz2 https://download-installer.cdn.mozilla.net/pub/firefox/releases/57.0b10/linux-x86_64/en-US/firefox-57.0b10.tar.bz2 \
&& tar -xjf firefox.tar.bz2 \
&& sudo rm /usr/bin/firefox \
&& sudo ln -s ~/firefox/firefox /usr/bin/firefox
