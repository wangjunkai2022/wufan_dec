package com.qq.e.comm.constants;
/* loaded from: classes4.dex */
public enum LoginType {
    Unknow(0),
    WeiXin(1),
    QQ(2);
    

    /* renamed from: a  reason: collision with root package name */
    private int f56428a;

    LoginType(int i2) {
        this.f56428a = i2;
        ordinal();
    }

    public int getValue() {
        return this.f56428a;
    }
}
