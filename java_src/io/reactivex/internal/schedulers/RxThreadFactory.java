package io.reactivex.internal.schedulers;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class RxThreadFactory extends AtomicLong implements ThreadFactory {
    private static final long serialVersionUID = -7789753024099756196L;

    /* renamed from: a  reason: collision with root package name */
    final String f69850a;

    /* renamed from: b  reason: collision with root package name */
    final int f69851b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f69852c;

    /* loaded from: classes5.dex */
    static final class a extends Thread implements h {
        a(Runnable runnable, String str) {
            super(runnable, str);
        }
    }

    public RxThreadFactory(String str) {
        this(str, 5, false);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        String str = this.f69850a + '-' + incrementAndGet();
        Thread aVar = this.f69852c ? new a(runnable, str) : new Thread(runnable, str);
        aVar.setPriority(this.f69851b);
        aVar.setDaemon(true);
        return aVar;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public String toString() {
        return "RxThreadFactory[" + this.f69850a + "]";
    }

    public RxThreadFactory(String str, int i2) {
        this(str, i2, false);
    }

    public RxThreadFactory(String str, int i2, boolean z3) {
        this.f69850a = str;
        this.f69851b = i2;
        this.f69852c = z3;
    }
}
