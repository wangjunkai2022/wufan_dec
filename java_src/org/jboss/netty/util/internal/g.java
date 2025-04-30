package org.jboss.netty.util.internal;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: SharedResourceMisuseDetector.java */
/* loaded from: classes5.dex */
public class g {

    /* renamed from: c  reason: collision with root package name */
    private static final int f73737c = 256;

    /* renamed from: a  reason: collision with root package name */
    private final AtomicLong f73738a = new AtomicLong();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f73739b = new AtomicBoolean();

    public void a() {
        this.f73738a.decrementAndGet();
    }

    public void b() {
        if (this.f73738a.incrementAndGet() > 256) {
            this.f73739b.compareAndSet(false, true);
        }
    }
}
