ARG version=1.14.2
ARG file=dogecoin-${version}-x86_64-linux-gnu.tar.gz
ARG folder=dogecoin-${version}

FROM debian:stable as stage1
ARG version
ARG file
ARG folder
WORKDIR /the/workdir
RUN apt update
RUN apt install -y wget
RUN wget https://github.com/dogecoin/dogecoin/releases/download/v${version}/${file}
RUN tar -vxf ${file}
RUN chmod +x /the/workdir/${folder}/bin/dogecoind

FROM photon
ARG folder
COPY --from=stage1 /the/workdir/${folder}/bin/dogecoind /app/dogecoind
VOLUME /data
EXPOSE 8332
ENTRYPOINT [ "/app/dogecoind", "-printtoconsole", "-datadir=/data", "-server", "-rpcport=8332", "-rpcuser=dogecoin", "-rpcpassword=password" ]
