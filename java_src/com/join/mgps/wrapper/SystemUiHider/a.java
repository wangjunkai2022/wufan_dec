package com.join.mgps.wrapper.SystemUiHider;

import android.app.Activity;
import android.view.View;
/* compiled from: SystemUiHider.java */
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: e  reason: collision with root package name */
    public static final int f52400e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f52401f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f52402g = 6;

    /* renamed from: h  reason: collision with root package name */
    private static b f52403h = new C0233a();

    /* renamed from: a  reason: collision with root package name */
    protected Activity f52404a;

    /* renamed from: b  reason: collision with root package name */
    protected View f52405b;

    /* renamed from: c  reason: collision with root package name */
    protected int f52406c;

    /* renamed from: d  reason: collision with root package name */
    protected b f52407d = f52403h;

    /* compiled from: SystemUiHider.java */
    /* renamed from: com.join.mgps.wrapper.SystemUiHider.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0233a implements b {
        C0233a() {
        }

        @Override // com.join.mgps.wrapper.SystemUiHider.a.b
        public void onVisibilityChange(boolean z3) {
        }
    }

    /* compiled from: SystemUiHider.java */
    /* loaded from: classes4.dex */
    public interface b {
        void onVisibilityChange(boolean z3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Activity activity, View view, int i2) {
        this.f52404a = activity;
        this.f52405b = view;
        this.f52406c = i2;
    }

    public static a a(Activity activity, View view, int i2) {
        if (com.join.mgps.wrapper.a.f52423b >= 11) {
            return new c(activity, view, i2);
        }
        return new com.join.mgps.wrapper.SystemUiHider.b(activity, view, i2);
    }

    public abstract void b();

    public abstract boolean c();

    public void d(b bVar) {
        if (bVar == null) {
            bVar = f52403h;
        }
        this.f52407d = bVar;
    }

    public abstract void e();

    public abstract void f();

    public void g() {
        if (c()) {
            b();
        } else {
            f();
        }
    }
}
