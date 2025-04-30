package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class PaOpenBean {
    private int paOpenuid;
    private String token;

    public PaOpenBean() {
    }

    public int getPaOpenuid() {
        return this.paOpenuid;
    }

    public String getToken() {
        return this.token;
    }

    public void setPaOpenuid(int i2) {
        this.paOpenuid = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public PaOpenBean(int i2, String str) {
        this.paOpenuid = i2;
        this.token = str;
    }
}
