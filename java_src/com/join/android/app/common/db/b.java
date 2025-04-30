package com.join.android.app.common.db;

import android.content.Context;
/* compiled from: DBUpdateUtils_.java */
/* loaded from: classes.dex */
public final class b extends a {

    /* renamed from: c  reason: collision with root package name */
    private static b f16901c;

    /* renamed from: a  reason: collision with root package name */
    private Context f16902a;

    /* renamed from: b  reason: collision with root package name */
    private Object f16903b;

    private b(Context context) {
        this.f16902a = context;
    }

    public static b b(Context context) {
        if (f16901c == null) {
            i3.c c4 = i3.c.c(null);
            b bVar = new b(context.getApplicationContext());
            f16901c = bVar;
            bVar.c();
            i3.c.c(c4);
        }
        return f16901c;
    }

    private void c() {
    }

    private b(Context context, Object obj) {
        this.f16902a = context;
        this.f16903b = obj;
    }
}
