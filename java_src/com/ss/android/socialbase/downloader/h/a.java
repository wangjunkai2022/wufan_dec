package com.ss.android.socialbase.downloader.h;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: DefaultThreadFactory.java */
/* loaded from: classes4.dex */
public class a implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final String f58186a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f58187b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f58188c;

    public a(String str) {
        this(str, false);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        int incrementAndGet = this.f58187b.incrementAndGet();
        Thread thread = new Thread(runnable, this.f58186a + "-" + incrementAndGet);
        if (!this.f58188c) {
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
        }
        return thread;
    }

    public a(String str, boolean z3) {
        this.f58187b = new AtomicInteger();
        this.f58186a = str;
        this.f58188c = z3;
    }
}
