# [WoWs-Builder-Team/minimap_renderer_bot: A Discord bot wrapper for Minimap Renderer](https://github.com/WoWs-Builder-Team/minimap_renderer_bot)

FROM python:3-slim
WORKDIR /app

COPY ./run.sh /app/run.sh
RUN apt update  && \
    apt -y install git  && \
    apt -y install supervisor  && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    cd /app  && \
    git clone https://github.com/WoWs-Builder-Team/minimap_renderer_bot.git  && \
    cd minimap_renderer_bot  && \
    pip install git+https://github.com/WoWs-Builder-Team/minimap_renderer.git@develop  && \
    pip install -r requirements.txt  && \
    chmod +x /app/run.sh