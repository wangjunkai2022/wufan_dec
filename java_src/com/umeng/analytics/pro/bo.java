package com.umeng.analytics.pro;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* compiled from: TMessage.java */
/* loaded from: classes4.dex */
public final class bo {

    /* renamed from: a  reason: collision with root package name */
    public final String f60590a;

    /* renamed from: b  reason: collision with root package name */
    public final byte f60591b;

    /* renamed from: c  reason: collision with root package name */
    public final int f60592c;

    public bo() {
        this("", (byte) 0, 0);
    }

    public boolean a(bo boVar) {
        return this.f60590a.equals(boVar.f60590a) && this.f60591b == boVar.f60591b && this.f60592c == boVar.f60592c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof bo) {
            return a((bo) obj);
        }
        return false;
    }

    public String toString() {
        return "<TMessage name:'" + this.f60590a + "' type: " + ((int) this.f60591b) + " seqid:" + this.f60592c + SimpleComparison.GREATER_THAN_OPERATION;
    }

    public bo(String str, byte b4, int i2) {
        this.f60590a = str;
        this.f60591b = b4;
        this.f60592c = i2;
    }
}
