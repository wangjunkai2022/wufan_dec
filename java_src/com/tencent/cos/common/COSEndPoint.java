package com.tencent.cos.common;
/* loaded from: classes4.dex */
public enum COSEndPoint {
    COS_GZ("cosgz", "华南"),
    COS_TJ("costj", "华北"),
    COS_SH("cossh", "华东");
    
    private String code;
    private String desc;

    COSEndPoint(String str, String str2) {
        this.code = str;
        this.desc = str2;
    }

    public String getCode() {
        return this.code;
    }

    public String getDesc() {
        return this.desc;
    }
}
