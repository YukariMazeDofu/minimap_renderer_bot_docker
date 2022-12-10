# Dockered Minimap Render Bot

Dockered [padtrack/track](https://github.com/padtrack/track)

## Installation

1. [Create a bot account and invite your bot for your discord server.](https://docs.nextcord.dev/en/stable/discord.html)
    - OAuth2 URL Generator
        - Scopes
            - bot
        - Bot Permissions
            - Send Message
            - Embed Links
            - Attach Files
            - Read Message History
            - Add Reactions
1. Set up files.

    ```bash
    git clone https://github.com/YukariMazeDofu/minimap_render_bot_docker
    cd minimap_render_bot_docker
    cp .env.default .env
    cp secrets_template.ini secrets.ini
    ```

1. Change `DISCORD_OWNER_IDS`, and `CHANNELS_FAILED_RENDERS` valiables in `.env`.
    - [Where can I find my User/Server/Message ID? – Discord](https://support.discord.com/hc/en-us/articles/206346498-Where-can-I-find-my-User-Server-Message-ID-)
1. Change `discord_token`, and `wg_application_id` variables in `secrets.ini`.
    - Do not change `redis_host` and `redis_password`. These are already set.
1. `docker-compose up --build -d`
1. Say `/render` with the replay file in your discord server.

## Update

1. `docker-compose down`
1. `docker-compose build --no-cache`
1. `docker-compose up -d`