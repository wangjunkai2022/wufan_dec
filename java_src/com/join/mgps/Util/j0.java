package com.join.mgps.Util;

import android.content.Context;
/* compiled from: ForumUtil_.java */
/* loaded from: classes3.dex */
public final class j0 extends i0 {

    /* renamed from: p  reason: collision with root package name */
    private static j0 f27639p;

    /* renamed from: n  reason: collision with root package name */
    private Context f27640n;

    /* renamed from: o  reason: collision with root package name */
    private Object f27641o;

    private j0(Context context) {
        this.f27640n = context;
    }

    public static j0 I1(Context context) {
        if (f27639p == null) {
            i3.c c4 = i3.c.c(null);
            j0 j0Var = new j0(context.getApplicationContext());
            f27639p = j0Var;
            j0Var.J1();
            i3.c.c(c4);
        }
        return f27639p;
    }

    private void J1() {
    }

    private j0(Context context, Object obj) {
        this.f27640n = context;
        this.f27641o = obj;
    }
}
