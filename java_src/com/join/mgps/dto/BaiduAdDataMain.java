package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class BaiduAdDataMain {
    private String ad_id;
    private int type_id;

    public BaiduAdDataMain() {
    }

    public String getAd_id() {
        return this.ad_id;
    }

    public int getType_id() {
        return this.type_id;
    }

    public void setAd_id(String str) {
        this.ad_id = str;
    }

    public void setType_id(int i2) {
        this.type_id = i2;
    }

    public BaiduAdDataMain(int i2, String str) {
        this.type_id = i2;
        this.ad_id = str;
    }
}
