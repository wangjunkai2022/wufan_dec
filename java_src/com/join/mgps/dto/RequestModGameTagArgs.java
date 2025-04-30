package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestModGameTagArgs {
    private String gameId;
    private long lastEnterTime;
    private int uid;

    public RequestModGameTagArgs() {
    }

    public String getGameId() {
        return this.gameId;
    }

    public long getLastEnterTime() {
        return this.lastEnterTime;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setLastEnterTime(long j4) {
        this.lastEnterTime = j4;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public RequestModGameTagArgs(String str, long j4, int i2) {
        this.gameId = str;
        this.lastEnterTime = j4;
        this.uid = i2;
    }
}
