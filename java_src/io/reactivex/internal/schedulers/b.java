package io.reactivex.internal.schedulers;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: DisposeOnCancel.java */
/* loaded from: classes5.dex */
final class b implements Future<Object> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.disposables.b f69895a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(io.reactivex.disposables.b bVar) {
        this.f69895a = bVar;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z3) {
        this.f69895a.dispose();
        return false;
    }

    @Override // java.util.concurrent.Future
    public Object get() throws InterruptedException, ExecutionException {
        return null;
    }

    @Override // java.util.concurrent.Future
    public Object get(long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return null;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return false;
    }
}
