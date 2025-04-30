package com.umeng.analytics.pro;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* compiled from: TField.java */
/* loaded from: classes4.dex */
public class bl {

    /* renamed from: a  reason: collision with root package name */
    public final String f60582a;

    /* renamed from: b  reason: collision with root package name */
    public final byte f60583b;

    /* renamed from: c  reason: collision with root package name */
    public final short f60584c;

    public bl() {
        this("", (byte) 0, (short) 0);
    }

    public boolean a(bl blVar) {
        return this.f60583b == blVar.f60583b && this.f60584c == blVar.f60584c;
    }

    public String toString() {
        return "<TField name:'" + this.f60582a + "' type:" + ((int) this.f60583b) + " field-id:" + ((int) this.f60584c) + SimpleComparison.GREATER_THAN_OPERATION;
    }

    public bl(String str, byte b4, short s3) {
        this.f60582a = str;
        this.f60583b = b4;
        this.f60584c = s3;
    }
}
