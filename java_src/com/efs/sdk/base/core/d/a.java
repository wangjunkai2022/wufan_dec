package com.efs.sdk.base.core.d;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public String f11342a;

    /* renamed from: b  reason: collision with root package name */
    public byte f11343b;

    /* renamed from: c  reason: collision with root package name */
    public int f11344c = 0;

    /* renamed from: d  reason: collision with root package name */
    public String f11345d = "none";

    /* renamed from: e  reason: collision with root package name */
    public int f11346e = 1;

    /* renamed from: f  reason: collision with root package name */
    long f11347f = 0;

    /* renamed from: g  reason: collision with root package name */
    int f11348g = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, byte b4) {
        this.f11343b = (byte) 2;
        this.f11342a = str;
        if (b4 > 0 && 3 >= b4) {
            this.f11343b = b4;
            return;
        }
        throw new IllegalArgumentException("log protocol flag invalid : ".concat(String.valueOf((int) b4)));
    }
}
