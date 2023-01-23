# [padtrack/track](https://github.com/padtrack/track)

FROM python:3-slim
WORKDIR /app

RUN apt-get update  && \
    apt-get -y --no-install-recommends install git supervisor ffmpeg vim patch  && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/*

COPY ./run.sh /app/run.sh
COPY ./patch.diff /app/patch.diff

RUN cd /app  && \
    python3.10 -m venv venv  && \
    git clone https://github.com/padtrack/track.git  && \
    cd track  && \
    # HOTFIX
    patch -p1 < /app/patch.diff  && \
    /app/venv/bin/python3.10 -m pip install --upgrade pip  && \
    /app/venv/bin/pip install -U -r requirements.txt  && \
    /app/venv/bin/python3.10 bot/utils/db.py  && \
    chmod +x /app/run.sh