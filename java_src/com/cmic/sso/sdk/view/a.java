package com.cmic.sso.sdk.view;
/* compiled from: LoginProxy.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f11046a;

    /* renamed from: b  reason: collision with root package name */
    private InterfaceC0051a f11047b;

    /* compiled from: LoginProxy.java */
    /* renamed from: com.cmic.sso.sdk.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0051a {
        void a();
    }

    public static a a() {
        if (f11046a == null) {
            synchronized (a.class) {
                if (f11046a == null) {
                    f11046a = new a();
                }
            }
        }
        return f11046a;
    }

    public InterfaceC0051a b() {
        return this.f11047b;
    }

    public void c() {
        if (this.f11047b != null) {
            this.f11047b = null;
        }
    }

    public void a(InterfaceC0051a interfaceC0051a) {
        this.f11047b = interfaceC0051a;
    }
}
