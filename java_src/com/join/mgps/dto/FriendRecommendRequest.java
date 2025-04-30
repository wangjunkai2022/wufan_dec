package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class FriendRecommendRequest {
    private String gameId;
    private String gameSeries;
    private List<String> localDownloadGameIds;
    private String locationPageType;
    private int page;
    private String token;
    private int uid;

    public String getGameId() {
        return this.gameId;
    }

    public String getGameSeries() {
        return this.gameSeries;
    }

    public List<String> getLocalDownloadGameIds() {
        return this.localDownloadGameIds;
    }

    public String getLocationPageType() {
        return this.locationPageType;
    }

    public int getPage() {
        return this.page;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setGameSeries(String str) {
        this.gameSeries = str;
    }

    public void setLocalDownloadGameIds(List<String> list) {
        this.localDownloadGameIds = list;
    }

    public void setLocationPageType(String str) {
        this.locationPageType = str;
    }

    public void setPage(int i2) {
        this.page = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
