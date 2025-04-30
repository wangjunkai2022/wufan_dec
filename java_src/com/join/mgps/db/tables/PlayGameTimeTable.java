package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
/* loaded from: classes.dex */
public class PlayGameTimeTable {
    @DatabaseField
    private String gameId;
    @DatabaseField
    private long gamePlayRecentlyTime;
    @DatabaseField
    private long gamePlayTotalTime;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String uId;

    public PlayGameTimeTable() {
    }

    public String getGameId() {
        return this.gameId;
    }

    public long getGamePlayRecentlyTime() {
        return this.gamePlayRecentlyTime;
    }

    public long getGamePlayTotalTime() {
        return this.gamePlayTotalTime;
    }

    public int getId() {
        return this.id;
    }

    public String getuId() {
        return this.uId;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setGamePlayRecentlyTime(long j4) {
        this.gamePlayRecentlyTime = j4;
    }

    public void setGamePlayTotalTime(long j4) {
        this.gamePlayTotalTime = j4;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setuId(String str) {
        this.uId = str;
    }

    public PlayGameTimeTable(String str, String str2, long j4, long j5) {
        setuId(str);
        setGameId(str2);
        setGamePlayTotalTime(j4);
        setGamePlayRecentlyTime(j5);
    }
}
