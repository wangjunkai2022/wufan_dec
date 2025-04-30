package org.greenrobot.eventbus.util;

import android.content.res.Resources;
/* compiled from: ErrorDialogConfig.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    final Resources f73328a;

    /* renamed from: b  reason: collision with root package name */
    final int f73329b;

    /* renamed from: c  reason: collision with root package name */
    final int f73330c;

    /* renamed from: e  reason: collision with root package name */
    org.greenrobot.eventbus.c f73332e;

    /* renamed from: g  reason: collision with root package name */
    String f73334g;

    /* renamed from: h  reason: collision with root package name */
    int f73335h;

    /* renamed from: i  reason: collision with root package name */
    Class<?> f73336i;

    /* renamed from: f  reason: collision with root package name */
    boolean f73333f = true;

    /* renamed from: d  reason: collision with root package name */
    final d f73331d = new d();

    public b(Resources resources, int i2, int i4) {
        this.f73328a = resources;
        this.f73329b = i2;
        this.f73330c = i4;
    }

    public b a(Class<? extends Throwable> cls, int i2) {
        this.f73331d.a(cls, i2);
        return this;
    }

    public void b() {
        this.f73333f = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public org.greenrobot.eventbus.c c() {
        org.greenrobot.eventbus.c cVar = this.f73332e;
        return cVar != null ? cVar : org.greenrobot.eventbus.c.f();
    }

    public int d(Throwable th) {
        Integer b4 = this.f73331d.b(th);
        if (b4 != null) {
            return b4.intValue();
        }
        String str = org.greenrobot.eventbus.c.f73209q;
        StringBuilder sb = new StringBuilder();
        sb.append("No specific message ressource ID found for ");
        sb.append(th);
        return this.f73330c;
    }

    public void e(int i2) {
        this.f73335h = i2;
    }

    public void f(Class<?> cls) {
        this.f73336i = cls;
    }

    public void g(org.greenrobot.eventbus.c cVar) {
        this.f73332e = cVar;
    }

    public void h(String str) {
        this.f73334g = str;
    }
}
