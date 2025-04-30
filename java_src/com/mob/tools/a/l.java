package com.mob.tools.a;

import android.content.Context;
/* loaded from: classes4.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static l f53844a = new l();

    /* renamed from: b  reason: collision with root package name */
    private volatile Context f53845b;

    /* renamed from: c  reason: collision with root package name */
    private volatile k f53846c;

    /* renamed from: d  reason: collision with root package name */
    private volatile k f53847d;

    public static l a(Context context) {
        if (f53844a.f53845b == null && context != null) {
            f53844a.f53845b = context.getApplicationContext();
        }
        return f53844a;
    }

    public k b() {
        if (this.f53847d == null) {
            this.f53847d = new e(this.f53845b);
        }
        return this.f53847d;
    }

    public void a(k kVar) {
        this.f53846c = kVar;
    }

    public k a() {
        if (this.f53846c == null) {
            return b();
        }
        return this.f53846c;
    }
}
