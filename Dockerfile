FROM debian:12

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    openvswitch-switch \
    iproute2 \
    iputils-ping \
    tcpdump \
    iperf3 \
    procps \
    && rm -rf /var/lib/apt/lists/*

CMD ["sleep", "infinity"]
