FROM codercom/code-server:latest

ENV PASSWORD=vivaan123

RUN apt-get update && apt-get install -y \
    python3 python3-pip \
    nodejs npm \
    git curl \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install pyrogram requests beautifulsoup4

EXPOSE 8080
CMD ["code-server", "--bind-addr", "0.0.0.0:8080"]
