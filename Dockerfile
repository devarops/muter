FROM islasgeci/base:1.0.0
COPY . /workdir
RUN apt update && apt install --yes \
    lua5.4 \
    luarocks
RUN luarocks install busted && \
    luarocks install luacheck
