package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.subscribers.BlockingSubscriber;
import io.reactivex.internal.subscribers.BoundedSubscriber;
import io.reactivex.internal.subscribers.LambdaSubscriber;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: FlowableBlockingSubscribe.java */
/* loaded from: classes5.dex */
public final class h {
    private h() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> void a(l3.b<? extends T> bVar) {
        io.reactivex.internal.util.d dVar = new io.reactivex.internal.util.d();
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(Functions.h(), dVar, dVar, Functions.f65833l);
        bVar.c(lambdaSubscriber);
        io.reactivex.internal.util.c.a(dVar, lambdaSubscriber);
        Throwable th = dVar.f70093a;
        if (th != null) {
            throw ExceptionHelper.e(th);
        }
    }

    public static <T> void b(l3.b<? extends T> bVar, l3.c<? super T> cVar) {
        Object poll;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        BlockingSubscriber blockingSubscriber = new BlockingSubscriber(linkedBlockingQueue);
        bVar.c(blockingSubscriber);
        do {
            try {
                if (blockingSubscriber.a()) {
                    return;
                }
                poll = linkedBlockingQueue.poll();
                if (poll == null) {
                    if (blockingSubscriber.a()) {
                        return;
                    }
                    io.reactivex.internal.util.c.b();
                    poll = linkedBlockingQueue.take();
                }
                if (blockingSubscriber.a() || poll == BlockingSubscriber.f69964b) {
                    return;
                }
            } catch (InterruptedException e4) {
                blockingSubscriber.cancel();
                cVar.onError(e4);
                return;
            }
        } while (!NotificationLite.acceptFull(poll, cVar));
    }

    public static <T> void c(l3.b<? extends T> bVar, w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar) {
        io.reactivex.internal.functions.a.g(gVar, "onNext is null");
        io.reactivex.internal.functions.a.g(gVar2, "onError is null");
        io.reactivex.internal.functions.a.g(aVar, "onComplete is null");
        b(bVar, new LambdaSubscriber(gVar, gVar2, aVar, Functions.f65833l));
    }

    public static <T> void d(l3.b<? extends T> bVar, w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar, int i2) {
        io.reactivex.internal.functions.a.g(gVar, "onNext is null");
        io.reactivex.internal.functions.a.g(gVar2, "onError is null");
        io.reactivex.internal.functions.a.g(aVar, "onComplete is null");
        io.reactivex.internal.functions.a.h(i2, "number > 0 required");
        b(bVar, new BoundedSubscriber(gVar, gVar2, aVar, Functions.d(i2), i2));
    }
}
