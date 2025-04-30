package com.papa91.arc.bean;
/* loaded from: classes4.dex */
public class ReqRealNameArgs {
    private Integer action;
    private String apiVersion = "V3";
    private String gameId;
    private String gameType;
    private String platformType;
    private Integer type;
    private Integer uid;
    private String userToken;

    public Integer getAction() {
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

    public String getPlatformType() {
        return this.platformType;
    }

    public Integer getType() {
        return this.type;
    }

    public Integer getUid() {
        return this.uid;
    }

    public String getUserToken() {
        return this.userToken;
    }

    public void setAction(Integer num) {
        this.action = num;
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

    public void setPlatformType(String str) {
        this.platformType = str;
    }

    public void setType(Integer num) {
        this.type = num;
    }

    public void setUid(Integer num) {
        this.uid = num;
    }

    public void setUserToken(String str) {
        this.userToken = str;
    }
}
