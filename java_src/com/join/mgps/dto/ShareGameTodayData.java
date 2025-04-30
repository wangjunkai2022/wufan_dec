package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ShareGameTodayData {
    String gameid1;
    String gameid2;
    String gameid3;
    boolean hasShare = false;
    long lastTime;

    public String getGameid1() {
        return this.gameid1;
    }

    public String getGameid2() {
        return this.gameid2;
    }

    public String getGameid3() {
        return this.gameid3;
    }

    public long getLastTime() {
        return this.lastTime;
    }

    public boolean isHasShare() {
        return this.hasShare;
    }

    public void setGameid1(String str) {
        this.gameid1 = str;
    }

    public void setGameid2(String str) {
        this.gameid2 = str;
    }

    public void setGameid3(String str) {
        this.gameid3 = str;
    }

    public void setHasShare(boolean z3) {
        this.hasShare = z3;
    }

    public void setLastTime(long j4) {
        this.lastTime = j4;
    }
}
