#!/bin/sh
echo "start run.sh"

echo "
[supervisord]
nodaemon=true
[program:python1]
command=/app/venv/bin/python3.10 /app/minimap_renderer_bot/main.py -r bot
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
stderr_logfile=/dev/stderr
stderr_logfile_maxbytes=0
autostart=true
autorestart=true
[program:python2]
command=/app/venv/bin/python3.10 /app/minimap_renderer_bot/main.py -r worker
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
stderr_logfile=/dev/stderr
stderr_logfile_maxbytes=0
autostart=true
autorestart=true
">/etc/supervisor/conf.d/supervisord.conf

/usr/bin/supervisord