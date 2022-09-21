# [WoWs-Builder-Team/minimap_renderer_bot: A Discord bot wrapper for Minimap Renderer](https://github.com/WoWs-Builder-Team/minimap_renderer_bot)

FROM python:3-slim
WORKDIR /app

COPY ./run.sh /app/run.sh
RUN apt-get update  && \
    apt-get -y --no-install-recommends install software-properties-common  && \
    add-apt-repository ppa:deadsnakes/ppa  && \
    apt-get -y --no-install-recommends install git supervisor python3.10  && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/*  && \
    cd /app  && \
    python3.10 -m venv venv  && \
    git clone https://github.com/WoWs-Builder-Team/minimap_renderer_bot.git  && \
    cd minimap_renderer_bot  && \
    sed -i "s/minimap-renderer==0.0.3/minimap-renderer/" requirements.txt  && \
    sed -i "s/numpy==1.23.1/numpy/" requirements.txt  && \
    /app/venv/bin/python3.10 -m pip install --upgrade pip  && \
    /app/venv/bin/pip install --upgrade --force-reinstall git+https://github.com/WoWs-Builder-Team/minimap_renderer.git@develop  && \
    /app/venv/bin/pip install -U -r requirements.txt  && \
    chmod +x /app/run.sh