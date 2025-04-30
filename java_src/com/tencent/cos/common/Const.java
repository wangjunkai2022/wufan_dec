package com.tencent.cos.common;
/* loaded from: classes4.dex */
public enum Const {
    ERROR_CLIENT_EXCEPTION(25000, "出现client异常"),
    ERROR_OTHER_EXCEPTION(25001, "出现其它异常");
    
    private int code;
    private String desc;

    Const(int i2, String str) {
        this.code = i2;
        this.desc = str;
    }

    public int getCode() {
        return this.code;
    }

    public String getDesc() {
        return this.desc;
    }
}
