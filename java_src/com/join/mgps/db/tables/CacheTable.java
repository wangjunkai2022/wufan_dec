package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class CacheTable {
    public static int TYPE_GAME_WORLD_GLOBAL_DATA = 1;
    public static int TYPE_GAME_WORLD_GRADE = 3;
    public static int TYPE_GAME_WORLD_USER_INFO = 2;
    public static int TYPE_GAME_WORLD_WORSHIP = 4;
    @DatabaseField
    private String data;
    @DatabaseField
    private String extra1;
    @DatabaseField
    private String extra2;
    @DatabaseField
    private long gameId;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private int type;
    @DatabaseField
    private String uid;

    public String getData() {
        return this.data;
    }

    public String getExtra1() {
        return this.extra1;
    }

    public String getExtra2() {
        return this.extra2;
    }

    public long getGameId() {
        return this.gameId;
    }

    public int getId() {
        return this.id;
    }

    public int getType() {
        return this.type;
    }

    public String getUid() {
        return this.uid;
    }

    public void setData(String str) {
        this.data = str;
    }

    public void setExtra1(String str) {
        this.extra1 = str;
    }

    public void setExtra2(String str) {
        this.extra2 = str;
    }

    public void setGameId(long j4) {
        this.gameId = j4;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
