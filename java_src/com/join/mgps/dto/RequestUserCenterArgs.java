package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestUserCenterArgs {
    private int is_vip;
    private String token;
    private int uid;
    private String userToken;
    private int vip;

    public RequestUserCenterArgs(int i2, String str, int i4) {
        this.uid = i2;
        this.token = str;
        this.userToken = str;
        this.is_vip = i4;
        this.vip = i4;
    }

    public int getIs_vip() {
        return this.is_vip;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUserToken() {
        return this.userToken;
    }

    public int getVip() {
        return this.vip;
    }

    public void setIs_vip(int i2) {
        this.is_vip = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setUserToken(String str) {
        this.userToken = str;
    }

    public void setVip(int i2) {
        this.vip = i2;
    }
}
