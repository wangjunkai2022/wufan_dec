package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ArenaGameRoomListConfig {
    private GameConfig current_collection_cfg;
    private List<GameConfig> game_list;

    public GameConfig getCurrent_collection_cfg() {
        return this.current_collection_cfg;
    }

    public List<GameConfig> getGame_list() {
        return this.game_list;
    }

    public void setCurrent_collection_cfg(GameConfig gameConfig) {
        this.current_collection_cfg = gameConfig;
    }

    public void setGame_list(List<GameConfig> list) {
        this.game_list = list;
    }
}
