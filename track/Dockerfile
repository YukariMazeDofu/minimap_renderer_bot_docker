# [padtrack/track](https://github.com/padtrack/track)

FROM python:3-slim
WORKDIR /app

RUN apt-get update  && \
    apt-get -y --no-install-recommends install git supervisor ffmpeg vim  && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/*

COPY ./run.sh /app/run.sh

RUN cd /app  && \
    python3.10 -m venv venv  && \
    git clone https://github.com/padtrack/track.git  && \
    # HOTFIX
    sed -i 's|_url = f"redis://:{cfg.redis.password}@localhost:{cfg.redis.port}/"|_url = f"redis://:{cfg.redis.password}@{cfg.redis.host}:{cfg.redis.port}/"|' /app/track/bot/extensions/render.py  && \
    cd track  && \
    /app/venv/bin/python3.10 -m pip install --upgrade pip  && \
    /app/venv/bin/pip install -U -r requirements.txt  && \
    /app/venv/bin/python3.10 bot/utils/db.py  && \
    chmod +x /app/run.sh