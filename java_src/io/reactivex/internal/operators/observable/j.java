package io.reactivex.internal.operators.observable;

import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.observers.LambdaObserver;
import io.reactivex.internal.util.ExceptionHelper;
/* compiled from: ObservableBlockingSubscribe.java */
/* loaded from: classes5.dex */
public final class j {
    private j() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> void a(io.reactivex.e0<? extends T> e0Var) {
        io.reactivex.internal.util.d dVar = new io.reactivex.internal.util.d();
        LambdaObserver lambdaObserver = new LambdaObserver(Functions.h(), dVar, dVar, Functions.h());
        e0Var.a(lambdaObserver);
        io.reactivex.internal.util.c.a(dVar, lambdaObserver);
        Throwable th = dVar.f70093a;
        if (th != null) {
            throw ExceptionHelper.e(th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> void b(io.reactivex.e0<? extends T> r4, io.reactivex.g0<? super T> r5) {
        /*
            java.util.concurrent.LinkedBlockingQueue r0 = new java.util.concurrent.LinkedBlockingQueue
            r0.<init>()
            io.reactivex.internal.observers.BlockingObserver r1 = new io.reactivex.internal.observers.BlockingObserver
            r1.<init>(r0)
            r5.onSubscribe(r1)
            r4.a(r1)
        L10:
            boolean r2 = r1.isDisposed()
            if (r2 == 0) goto L17
            goto L3a
        L17:
            java.lang.Object r2 = r0.poll()
            if (r2 != 0) goto L2a
            java.lang.Object r2 = r0.take()     // Catch: java.lang.InterruptedException -> L22
            goto L2a
        L22:
            r4 = move-exception
            r1.dispose()
            r5.onError(r4)
            return
        L2a:
            boolean r3 = r1.isDisposed()
            if (r3 != 0) goto L3a
            java.lang.Object r3 = io.reactivex.internal.observers.BlockingObserver.f65865b
            if (r4 == r3) goto L3a
            boolean r2 = io.reactivex.internal.util.NotificationLite.acceptFull(r2, r5)
            if (r2 == 0) goto L10
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.j.b(io.reactivex.e0, io.reactivex.g0):void");
    }

    public static <T> void c(io.reactivex.e0<? extends T> e0Var, w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar) {
        io.reactivex.internal.functions.a.g(gVar, "onNext is null");
        io.reactivex.internal.functions.a.g(gVar2, "onError is null");
        io.reactivex.internal.functions.a.g(aVar, "onComplete is null");
        b(e0Var, new LambdaObserver(gVar, gVar2, aVar, Functions.h()));
    }
}
