package com.umeng.commonsdk.internal;

import android.content.Context;
/* compiled from: UMInternalData.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static b f61152b;

    /* renamed from: a  reason: collision with root package name */
    private Context f61153a;

    /* renamed from: c  reason: collision with root package name */
    private c f61154c;

    private b(Context context) {
        this.f61153a = context;
        this.f61154c = new c(context);
    }

    public static synchronized b a(Context context) {
        b bVar;
        synchronized (b.class) {
            if (f61152b == null) {
                f61152b = new b(context.getApplicationContext());
            }
            bVar = f61152b;
        }
        return bVar;
    }

    public c a() {
        return this.f61154c;
    }
}
