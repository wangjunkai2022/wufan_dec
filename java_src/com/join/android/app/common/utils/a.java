package com.join.android.app.common.utils;

import android.content.Context;
/* compiled from: APKUtils_.java */
/* loaded from: classes.dex */
public final class a extends APKUtils {

    /* renamed from: e  reason: collision with root package name */
    private static a f17217e;

    /* renamed from: c  reason: collision with root package name */
    private Context f17218c;

    /* renamed from: d  reason: collision with root package name */
    private Object f17219d;

    private a(Context context) {
        this.f17218c = context;
    }

    public static a g0(Context context) {
        if (f17217e == null) {
            i3.c c4 = i3.c.c(null);
            a aVar = new a(context.getApplicationContext());
            f17217e = aVar;
            aVar.h0();
            i3.c.c(c4);
        }
        return f17217e;
    }

    private void h0() {
    }

    private a(Context context, Object obj) {
        this.f17218c = context;
        this.f17219d = obj;
    }
}
