package io.reactivex.internal.util;

import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: EndConsumerHelper.java */
/* loaded from: classes5.dex */
public final class f {
    private f() {
        throw new IllegalStateException("No instances!");
    }

    public static String a(String str) {
        return "It is not allowed to subscribe with a(n) " + str + " multiple times. Please create a fresh instance of " + str + " and subscribe that to the target source instead.";
    }

    public static void b(Class<?> cls) {
        io.reactivex.plugins.a.Y(new ProtocolViolationException(a(cls.getName())));
    }

    public static boolean c(AtomicReference<io.reactivex.disposables.b> atomicReference, io.reactivex.disposables.b bVar, Class<?> cls) {
        io.reactivex.internal.functions.a.g(bVar, "next is null");
        if (atomicReference.compareAndSet(null, bVar)) {
            return true;
        }
        bVar.dispose();
        if (atomicReference.get() != DisposableHelper.DISPOSED) {
            b(cls);
            return false;
        }
        return false;
    }

    public static boolean d(AtomicReference<l3.d> atomicReference, l3.d dVar, Class<?> cls) {
        io.reactivex.internal.functions.a.g(dVar, "next is null");
        if (atomicReference.compareAndSet(null, dVar)) {
            return true;
        }
        dVar.cancel();
        if (atomicReference.get() != SubscriptionHelper.CANCELLED) {
            b(cls);
            return false;
        }
        return false;
    }

    public static boolean e(io.reactivex.disposables.b bVar, io.reactivex.disposables.b bVar2, Class<?> cls) {
        io.reactivex.internal.functions.a.g(bVar2, "next is null");
        if (bVar != null) {
            bVar2.dispose();
            if (bVar != DisposableHelper.DISPOSED) {
                b(cls);
                return false;
            }
            return false;
        }
        return true;
    }

    public static boolean f(l3.d dVar, l3.d dVar2, Class<?> cls) {
        io.reactivex.internal.functions.a.g(dVar2, "next is null");
        if (dVar != null) {
            dVar2.cancel();
            if (dVar != SubscriptionHelper.CANCELLED) {
                b(cls);
                return false;
            }
            return false;
        }
        return true;
    }
}
