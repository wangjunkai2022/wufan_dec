package io.reactivex.internal.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.h0;
import java.util.concurrent.ThreadFactory;
/* compiled from: NewThreadScheduler.java */
/* loaded from: classes5.dex */
public final class f extends h0 {

    /* renamed from: b  reason: collision with root package name */
    final ThreadFactory f69930b;

    /* renamed from: c  reason: collision with root package name */
    private static final String f69927c = "RxNewThreadScheduler";

    /* renamed from: e  reason: collision with root package name */
    private static final String f69929e = "rx2.newthread-priority";

    /* renamed from: d  reason: collision with root package name */
    private static final RxThreadFactory f69928d = new RxThreadFactory(f69927c, Math.max(1, Math.min(10, Integer.getInteger(f69929e, 5).intValue())));

    public f() {
        this(f69928d);
    }

    @Override // io.reactivex.h0
    @NonNull
    public h0.c c() {
        return new g(this.f69930b);
    }

    public f(ThreadFactory threadFactory) {
        this.f69930b = threadFactory;
    }
}
