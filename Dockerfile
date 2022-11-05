FROM debian:stable-slim

RUN apt update && apt install gnome-keyring wget curl python3-minimal ca-certificates git build-essential -y
RUN wget -O- https://aka.ms/install-vscode-server/setup.sh | sh

ENTRYPOINT [ "/usr/local/bin/code-server", "--accept-server-license-terms", "--disable-telemetry", "serve", "--random-name"]