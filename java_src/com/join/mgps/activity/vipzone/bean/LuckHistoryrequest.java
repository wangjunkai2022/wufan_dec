package com.join.mgps.activity.vipzone.bean;
/* loaded from: classes3.dex */
public class LuckHistoryrequest {
    private int action;
    private String gameId;
    private String gameType;
    private int page;
    private int type;
    private int uid;
    private String userToken;
    private String platformType = "ANDROID";
    private String apiVersion = "V3";

    public int getAction() {
        return this.action;
    }

    public String getApiVersion() {
        return this.apiVersion;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getGameType() {
        return this.gameType;
    }

    public int getPage() {
        return this.page;
    }

    public String getPlatformType() {
        return this.platformType;
    }

    public int getType() {
        return this.type;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUserToken() {
        return this.userToken;
    }

    public void setAction(int i2) {
        this.action = i2;
    }

    public void setApiVersion(String str) {
        this.apiVersion = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setGameType(String str) {
        this.gameType = str;
    }

    public void setPage(int i2) {
        this.page = i2;
    }

    public void setPlatformType(String str) {
        this.platformType = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setUserToken(String str) {
        this.userToken = str;
    }
}
