# Dockered Minimap Render Bot

Dockered [WoWs-Builder-Team/minimap_renderer_bot: A Discord bot wrapper for Minimap Renderer](https://github.com/WoWs-Builder-Team/minimap_renderer_bot)

## Installation

1. [Create a bot account and invite your bot for your discord server.](https://docs.nextcord.dev/en/stable/discord.html)
1. Set up files.

    ```bash
    git clone https://github.com/YukariMazeDofu/minimap_render_bot_docker
    cd minimap_render_bot_docker
    cp .env.default .env
    ```
1. Change `DISCORD_TOKEN` environment variables in `.env`
1. Change `TZ` environment variables in `docker-compose.yml`
1. `docker-compose up --build -d`
1. Say `/render` with the replay file in your discord server.

## Update

1. `docker-compose down`
1. `docker-compose build --no-cache`
1. `docker-compose up -d`