FROM codercom/code-server:latest

# Already includes: Node.js, npm, git, curl, Python 3

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3-pip \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir \
    pyrogram \
    requests \
    beautifulsoup4 \
    python-telegram-bot

USER coder

EXPOSE 8080

ENTRYPOINT ["code-server", "--bind-addr", "0.0.0.0:8080"]
