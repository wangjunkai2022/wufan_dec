package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GameSortRequestBean {
    private String deviceid;
    private String version;

    public GameSortRequestBean() {
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public String getVersion() {
        return this.version;
    }

    public void setDeviceid(String str) {
        this.deviceid = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public GameSortRequestBean(String str, String str2) {
        this.version = str;
        this.deviceid = str2;
    }
}
