package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class HomeGameCarefullyRequestArgs2 {
    private int pn;
    private String token;
    private int uid;

    public HomeGameCarefullyRequestArgs2() {
    }

    public int getPn() {
        return this.pn;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public HomeGameCarefullyRequestArgs2(int i2, int i4, String str) {
        this.pn = i2;
        this.uid = i4;
        this.token = str;
    }

    public HomeGameCarefullyRequestArgs2(int i2) {
        this.uid = i2;
    }
}
