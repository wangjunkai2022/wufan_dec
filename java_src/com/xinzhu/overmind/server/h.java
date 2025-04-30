package com.xinzhu.overmind.server;

import android.os.HandlerThread;
/* compiled from: ServiceThread.java */
/* loaded from: classes3.dex */
public class h extends HandlerThread {

    /* renamed from: b  reason: collision with root package name */
    private static final String f64488b = "ServiceThread";

    /* renamed from: a  reason: collision with root package name */
    private final boolean f64489a;

    public h(String name, int priority, boolean allowIo) {
        super(name, priority);
        this.f64489a = allowIo;
    }

    @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
    }
}
