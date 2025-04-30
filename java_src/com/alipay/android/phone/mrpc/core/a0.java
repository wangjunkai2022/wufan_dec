package com.alipay.android.phone.mrpc.core;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
/* loaded from: classes2.dex */
final class a0 extends FutureTask<e> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ e0 f9420a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z f9421b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(z zVar, Callable callable, e0 e0Var) {
        super(callable);
        this.f9421b = zVar;
        this.f9420a = e0Var;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void done() {
        c0 d4 = this.f9420a.d();
        if (d4.a() == null) {
            super.done();
            return;
        }
        try {
            get();
            if (isCancelled() || d4.f9435a) {
                d4.f9435a = true;
                if (isCancelled() && isDone()) {
                    return;
                }
                cancel(false);
            }
        } catch (InterruptedException e4) {
            e4.toString();
        } catch (CancellationException unused) {
            d4.f9435a = true;
        } catch (ExecutionException e5) {
            if (e5.getCause() == null || !(e5.getCause() instanceof a)) {
                e5.toString();
                return;
            }
            a aVar = (a) e5.getCause();
            aVar.a();
            aVar.b();
        } catch (Throwable th) {
            throw new RuntimeException("An error occured while executing http request", th);
        }
    }
}
