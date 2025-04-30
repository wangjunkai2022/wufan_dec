package com.umeng.analytics.pro;

import java.io.Serializable;
/* compiled from: FieldValueMetaData.java */
/* loaded from: classes4.dex */
public class be implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f60525a;

    /* renamed from: b  reason: collision with root package name */
    public final byte f60526b;

    /* renamed from: c  reason: collision with root package name */
    private final String f60527c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f60528d;

    public be(byte b4, boolean z3) {
        this.f60526b = b4;
        this.f60525a = false;
        this.f60527c = null;
        this.f60528d = z3;
    }

    public boolean a() {
        return this.f60525a;
    }

    public String b() {
        return this.f60527c;
    }

    public boolean c() {
        return this.f60526b == 12;
    }

    public boolean d() {
        byte b4 = this.f60526b;
        return b4 == 15 || b4 == 13 || b4 == 14;
    }

    public boolean e() {
        return this.f60528d;
    }

    public be(byte b4) {
        this(b4, false);
    }

    public be(byte b4, String str) {
        this.f60526b = b4;
        this.f60525a = true;
        this.f60527c = str;
        this.f60528d = false;
    }
}
