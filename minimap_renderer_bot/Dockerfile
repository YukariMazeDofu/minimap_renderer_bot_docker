# [WoWs-Builder-Team/minimap_renderer_bot: A Discord bot wrapper for Minimap Renderer](https://github.com/WoWs-Builder-Team/minimap_renderer_bot)

FROM python:3-slim
WORKDIR /app

COPY ./run.sh /app/run.sh
RUN apt-get update  && \
    apt-get -y install git  && \
    apt-get -y install supervisor  && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/*  && \
    cd /app  && \
    python -m venv venv  && \
    git clone https://github.com/WoWs-Builder-Team/minimap_renderer_bot.git  && \
    cd minimap_renderer_bot  && \
    /app/venv/bin/pip install git+https://github.com/WoWs-Builder-Team/minimap_renderer.git@develop  && \
    /app/venv/bin/pip install -U -r requirements.txt  && \
    chmod +x /app/run.sh