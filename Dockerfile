FROM steamcmd

# Argument that contains the Steam account key
ARG key

# Folder to install the game
ENV CSGO_GAME $WD/csgo
RUN mkdir -p $CSGO_GAME

# Install the game
RUN $STEAM_DIR/steamcmd.sh \
    +login anonymous \
    +force_install_dir $CSGO_GAME \
    +app_update 740 \
    +quit

# Change working directory
WORKDIR $CSGO_GAME

# Start the server!
CMD $CSGO_GAME/srcds_run -game csgo \
    -console -usercon \
    +game_type 0 \
    +game_mode 1 \
    +map de_dust2 \
    +sv_setsteamaccount ${key} \
    -net_port_try 1