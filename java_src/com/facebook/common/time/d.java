package com.facebook.common.time;
/* compiled from: SystemClock.java */
/* loaded from: classes2.dex */
public class d implements a {

    /* renamed from: b  reason: collision with root package name */
    private static final d f11754b = new d();

    private d() {
    }

    public static d a() {
        return f11754b;
    }

    @Override // com.facebook.common.time.a
    public long now() {
        return System.currentTimeMillis();
    }
}
