package io.reactivex.internal.util;

import io.reactivex.exceptions.CompositeException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ExceptionHelper {

    /* renamed from: a  reason: collision with root package name */
    public static final Throwable f70084a = new Termination();

    /* loaded from: classes5.dex */
    static final class Termination extends Throwable {
        private static final long serialVersionUID = -4649703670690200604L;

        Termination() {
            super("No further exceptions");
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }
    }

    private ExceptionHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> boolean a(AtomicReference<Throwable> atomicReference, Throwable th) {
        Throwable th2;
        do {
            th2 = atomicReference.get();
            if (th2 == f70084a) {
                return false;
            }
        } while (!atomicReference.compareAndSet(th2, th2 == null ? th : new CompositeException(th2, th)));
        return true;
    }

    public static List<Throwable> b(Throwable th) {
        ArrayList arrayList = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.offer(th);
        while (!arrayDeque.isEmpty()) {
            Throwable th2 = (Throwable) arrayDeque.removeFirst();
            if (th2 instanceof CompositeException) {
                List<Throwable> b4 = ((CompositeException) th2).b();
                for (int size = b4.size() - 1; size >= 0; size--) {
                    arrayDeque.offerFirst(b4.get(size));
                }
            } else {
                arrayList.add(th2);
            }
        }
        return arrayList;
    }

    public static <T> Throwable c(AtomicReference<Throwable> atomicReference) {
        Throwable th = atomicReference.get();
        Throwable th2 = f70084a;
        return th != th2 ? atomicReference.getAndSet(th2) : th;
    }

    public static <E extends Throwable> Exception d(Throwable th) throws Throwable {
        if (th instanceof Exception) {
            return (Exception) th;
        }
        throw th;
    }

    public static RuntimeException e(Throwable th) {
        if (!(th instanceof Error)) {
            if (th instanceof RuntimeException) {
                return (RuntimeException) th;
            }
            return new RuntimeException(th);
        }
        throw ((Error) th);
    }
}
