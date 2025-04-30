package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class SearchHistoryBean implements Serializable {
    public static final String GAME_NAME = "game_name";
    private String game_name;

    public static String getGameName() {
        return GAME_NAME;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }
}
