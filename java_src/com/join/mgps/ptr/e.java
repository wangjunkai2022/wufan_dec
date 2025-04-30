package com.join.mgps.ptr;
/* compiled from: PtrUIHandlerHook.java */
/* loaded from: classes4.dex */
public abstract class e implements Runnable {

    /* renamed from: c  reason: collision with root package name */
    private static final byte f51169c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static final byte f51170d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final byte f51171e = 2;

    /* renamed from: a  reason: collision with root package name */
    private Runnable f51172a;

    /* renamed from: b  reason: collision with root package name */
    private byte f51173b = 0;

    public void a() {
        this.f51173b = (byte) 0;
    }

    public void b() {
        Runnable runnable = this.f51172a;
        if (runnable != null) {
            runnable.run();
        }
        this.f51173b = (byte) 2;
    }

    public void c(Runnable runnable) {
        this.f51172a = runnable;
    }

    public void d() {
        e(null);
    }

    public void e(Runnable runnable) {
        if (runnable != null) {
            this.f51172a = runnable;
        }
        byte b4 = this.f51173b;
        if (b4 == 0) {
            this.f51173b = (byte) 1;
            run();
        } else if (b4 != 2) {
        } else {
            b();
        }
    }
}
