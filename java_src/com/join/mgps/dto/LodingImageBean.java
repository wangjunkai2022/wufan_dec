package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class LodingImageBean {
    private String md5;
    private String path;

    public LodingImageBean() {
    }

    public String getMd5() {
        return this.md5;
    }

    public String getPath() {
        return this.path;
    }

    public void setMd5(String str) {
        this.md5 = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public LodingImageBean(String str, String str2) {
        this.path = str;
        this.md5 = str2;
    }
}
