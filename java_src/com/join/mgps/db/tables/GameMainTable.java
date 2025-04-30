package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class GameMainTable {
    @DatabaseField
    private String game_main_data;
    @DatabaseField
    private String gameid;
    @DatabaseField(generatedId = true)
    private int id;

    public String getGame_main_data() {
        return this.game_main_data;
    }

    public String getGameid() {
        return this.gameid;
    }

    public int getId() {
        return this.id;
    }

    public void setGame_main_data(String str) {
        this.game_main_data = str;
    }

    public void setGameid(String str) {
        this.gameid = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }
}
