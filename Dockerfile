FROM parity/parity:v1.11.11

WORKDIR /stuff

COPY . .

RUN env PARITY=/parity/parity ./prepare-chain.sh

CMD ["--config", "classic_aura.toml", "--jsonrpc-interface", "all"]
