package com.facebook.imagepipeline.producers;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
/* compiled from: ThreadHandoffProducerQueue.java */
/* loaded from: classes2.dex */
public class u0 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f13243a = false;

    /* renamed from: b  reason: collision with root package name */
    private final Deque<Runnable> f13244b = new ArrayDeque();

    /* renamed from: c  reason: collision with root package name */
    private final Executor f13245c;

    public u0(Executor executor) {
        this.f13245c = (Executor) com.facebook.common.internal.h.i(executor);
    }

    private void b() {
        while (!this.f13244b.isEmpty()) {
            this.f13245c.execute(this.f13244b.pop());
        }
        this.f13244b.clear();
    }

    public synchronized void a(Runnable runnable) {
        if (this.f13243a) {
            this.f13244b.add(runnable);
        } else {
            this.f13245c.execute(runnable);
        }
    }

    public synchronized boolean c() {
        return this.f13243a;
    }

    public synchronized void d(Runnable runnable) {
        this.f13244b.remove(runnable);
    }

    public synchronized void e() {
        this.f13243a = true;
    }

    public synchronized void f() {
        this.f13243a = false;
        b();
    }
}
