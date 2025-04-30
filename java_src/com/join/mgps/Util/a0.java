package com.join.mgps.Util;

import android.content.Context;
/* compiled from: DialogUtil_.java */
/* loaded from: classes3.dex */
public final class a0 extends z {

    /* renamed from: n  reason: collision with root package name */
    private static a0 f27489n;

    /* renamed from: l  reason: collision with root package name */
    private Context f27490l;

    /* renamed from: m  reason: collision with root package name */
    private Object f27491m;

    private a0(Context context) {
        this.f27490l = context;
    }

    public static a0 c0(Context context) {
        if (f27489n == null) {
            i3.c c4 = i3.c.c(null);
            a0 a0Var = new a0(context.getApplicationContext());
            f27489n = a0Var;
            a0Var.d0();
            i3.c.c(c4);
        }
        return f27489n;
    }

    private void d0() {
    }

    private a0(Context context, Object obj) {
        this.f27490l = context;
        this.f27491m = obj;
    }
}
