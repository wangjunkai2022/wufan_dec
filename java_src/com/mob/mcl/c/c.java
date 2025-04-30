package com.mob.mcl.c;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes4.dex */
public class c implements Future<e> {

    /* renamed from: a  reason: collision with root package name */
    final CountDownLatch f53203a = new CountDownLatch(1);

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<e> f53204b = new AtomicReference<>();

    @Override // java.util.concurrent.Future
    /* renamed from: a */
    public e get() throws InterruptedException, ExecutionException {
        this.f53203a.await();
        return this.f53204b.get();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z3) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f53203a.getCount() == 0;
    }

    @Override // java.util.concurrent.Future
    /* renamed from: a */
    public e get(long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        if (this.f53203a.await(j4, timeUnit)) {
            return this.f53204b.get();
        }
        throw new TimeoutException("tcp get msg timeout");
    }

    public void a(e eVar) {
        synchronized (this.f53203a) {
            this.f53204b.set(eVar);
            this.f53203a.countDown();
        }
    }
}
