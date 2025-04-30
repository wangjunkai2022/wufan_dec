package com.join.mgps.dto;

import java.util.ArrayList;
/* loaded from: classes4.dex */
public class RequestModGameRecommendAdArgs {
    private ArrayList<Long> downloadedGameIdList;
    private long gameId;
    private int uid;

    public RequestModGameRecommendAdArgs() {
    }

    public ArrayList<Long> getDownloadedGameIdList() {
        return this.downloadedGameIdList;
    }

    public long getGameId() {
        return this.gameId;
    }

    public int getUid() {
        return this.uid;
    }

    public void setDownloadedGameIdList(ArrayList<Long> arrayList) {
        this.downloadedGameIdList = arrayList;
    }

    public void setGameId(long j4) {
        this.gameId = j4;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public RequestModGameRecommendAdArgs(ArrayList<Long> arrayList, int i2, long j4) {
        this.downloadedGameIdList = arrayList;
        this.uid = i2;
        this.gameId = j4;
    }
}
