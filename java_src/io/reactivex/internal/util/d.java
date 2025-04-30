package io.reactivex.internal.util;

import java.util.concurrent.CountDownLatch;
/* compiled from: BlockingIgnoringReceiver.java */
/* loaded from: classes5.dex */
public final class d extends CountDownLatch implements w2.g<Throwable>, w2.a {

    /* renamed from: a  reason: collision with root package name */
    public Throwable f70093a;

    public d() {
        super(1);
    }

    @Override // w2.g
    /* renamed from: a */
    public void accept(Throwable th) {
        this.f70093a = th;
        countDown();
    }

    @Override // w2.a
    public void run() {
        countDown();
    }
}
