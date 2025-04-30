package com.papa91.arc.bean;
/* loaded from: classes4.dex */
public class ReqSubmitRealNameArgs {
    private Integer action;
    private String apiVersion = "V3";
    private String gameId;
    private String idCard;
    private String name;
    private String platformType;
    private Integer type;
    private String uid;

    public Integer getAction() {
        return this.action;
    }

    public String getApiVersion() {
        return this.apiVersion;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getIdCard() {
        return this.idCard;
    }

    public String getName() {
        return this.name;
    }

    public String getPlatformType() {
        return this.platformType;
    }

    public Integer getType() {
        return this.type;
    }

    public String getUid() {
        return this.uid;
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

    public void setIdCard(String str) {
        this.idCard = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPlatformType(String str) {
        this.platformType = str;
    }

    public void setType(Integer num) {
        this.type = num;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
