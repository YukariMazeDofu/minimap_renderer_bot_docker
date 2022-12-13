#!/bin/sh
echo "start run.sh"

# Setting track/config.py.
sed -i "s|        \"DISCORD_OWNER_IDS\": {212466672450142208, 113104128783159296},|        \"DISCORD_OWNER_IDS\": ${DISCORD_OWNER_IDS},|" /app/track/config.py
sed -i "s|        \"CHANNELS_FAILED_RENDERS\": 1010834704804614184,|        \"CHANNELS_FAILED_RENDERS\": ${CHANNELS_FAILED_RENDERS},|" /app/track/config.py

# Setting supervisord.
echo "
[supervisord]
nodaemon=true
[program:python1]
command=/app/venv/bin/python3.10 /app/track/bot/run.py
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
stderr_logfile=/dev/stderr
stderr_logfile_maxbytes=0
autostart=true
autorestart=true
[program:python2]
command=/app/venv/bin/python3.10 /app/track/bot/worker.py -q single
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
stderr_logfile=/dev/stderr
stderr_logfile_maxbytes=0
autostart=true
autorestart=true
">/etc/supervisor/conf.d/supervisord.conf

# Run supervisord.
/usr/bin/supervisord