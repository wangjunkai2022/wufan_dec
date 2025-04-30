package androidx.concurrent.futures;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.tencent.bugly.Bugly;
import com.umeng.analytics.pro.ai;
import e1.a;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class AbstractResolvableFuture<V> implements a<V> {

    /* renamed from: d  reason: collision with root package name */
    static final boolean f1723d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", Bugly.SDK_IS_DEV));

    /* renamed from: e  reason: collision with root package name */
    private static final Logger f1724e = Logger.getLogger(AbstractResolvableFuture.class.getName());

    /* renamed from: f  reason: collision with root package name */
    private static final long f1725f = 1000;

    /* renamed from: g  reason: collision with root package name */
    static final AtomicHelper f1726g;

    /* renamed from: h  reason: collision with root package name */
    private static final Object f1727h;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    volatile Object f1728a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    volatile Listener f1729b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    volatile Waiter f1730c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class AtomicHelper {
        private AtomicHelper() {
        }

        abstract boolean a(AbstractResolvableFuture<?> abstractResolvableFuture, Listener listener, Listener listener2);

        abstract boolean b(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2);

        abstract boolean c(AbstractResolvableFuture<?> abstractResolvableFuture, Waiter waiter, Waiter waiter2);

        abstract void d(Waiter waiter, Waiter waiter2);

        abstract void e(Waiter waiter, Thread thread);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class Cancellation {

        /* renamed from: c  reason: collision with root package name */
        static final Cancellation f1731c;

        /* renamed from: d  reason: collision with root package name */
        static final Cancellation f1732d;

        /* renamed from: a  reason: collision with root package name */
        final boolean f1733a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        final Throwable f1734b;

        static {
            if (AbstractResolvableFuture.f1723d) {
                f1732d = null;
                f1731c = null;
                return;
            }
            f1732d = new Cancellation(false, null);
            f1731c = new Cancellation(true, null);
        }

        Cancellation(boolean z3, @Nullable Throwable th) {
            this.f1733a = z3;
            this.f1734b = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class Failure {

        /* renamed from: b  reason: collision with root package name */
        static final Failure f1735b = new Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.concurrent.futures.AbstractResolvableFuture.Failure.1
            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });

        /* renamed from: a  reason: collision with root package name */
        final Throwable f1736a;

        Failure(Throwable th) {
            this.f1736a = (Throwable) AbstractResolvableFuture.d(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class Listener {

        /* renamed from: d  reason: collision with root package name */
        static final Listener f1737d = new Listener(null, null);

        /* renamed from: a  reason: collision with root package name */
        final Runnable f1738a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f1739b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        Listener f1740c;

        Listener(Runnable runnable, Executor executor) {
            this.f1738a = runnable;
            this.f1739b = executor;
        }
    }

    /* loaded from: classes.dex */
    private static final class SafeAtomicHelper extends AtomicHelper {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<Waiter, Thread> f1741a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<Waiter, Waiter> f1742b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Waiter> f1743c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Listener> f1744d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> f1745e;

        SafeAtomicHelper(AtomicReferenceFieldUpdater<Waiter, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<Waiter, Waiter> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Waiter> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Listener> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f1741a = atomicReferenceFieldUpdater;
            this.f1742b = atomicReferenceFieldUpdater2;
            this.f1743c = atomicReferenceFieldUpdater3;
            this.f1744d = atomicReferenceFieldUpdater4;
            this.f1745e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean a(AbstractResolvableFuture<?> abstractResolvableFuture, Listener listener, Listener listener2) {
            return this.f1744d.compareAndSet(abstractResolvableFuture, listener, listener2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean b(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
            return this.f1745e.compareAndSet(abstractResolvableFuture, obj, obj2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean c(AbstractResolvableFuture<?> abstractResolvableFuture, Waiter waiter, Waiter waiter2) {
            return this.f1743c.compareAndSet(abstractResolvableFuture, waiter, waiter2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void d(Waiter waiter, Waiter waiter2) {
            this.f1742b.lazySet(waiter, waiter2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void e(Waiter waiter, Thread thread) {
            this.f1741a.lazySet(waiter, thread);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class SetFuture<V> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final AbstractResolvableFuture<V> f1746a;

        /* renamed from: b  reason: collision with root package name */
        final a<? extends V> f1747b;

        SetFuture(AbstractResolvableFuture<V> abstractResolvableFuture, a<? extends V> aVar) {
            this.f1746a = abstractResolvableFuture;
            this.f1747b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1746a.f1728a != this) {
                return;
            }
            if (AbstractResolvableFuture.f1726g.b(this.f1746a, this, AbstractResolvableFuture.i(this.f1747b))) {
                AbstractResolvableFuture.f(this.f1746a);
            }
        }
    }

    /* loaded from: classes.dex */
    private static final class SynchronizedHelper extends AtomicHelper {
        SynchronizedHelper() {
            super();
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean a(AbstractResolvableFuture<?> abstractResolvableFuture, Listener listener, Listener listener2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.f1729b == listener) {
                    abstractResolvableFuture.f1729b = listener2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean b(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.f1728a == obj) {
                    abstractResolvableFuture.f1728a = obj2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean c(AbstractResolvableFuture<?> abstractResolvableFuture, Waiter waiter, Waiter waiter2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.f1730c == waiter) {
                    abstractResolvableFuture.f1730c = waiter2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void d(Waiter waiter, Waiter waiter2) {
            waiter.f1750b = waiter2;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void e(Waiter waiter, Thread thread) {
            waiter.f1749a = thread;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class Waiter {

        /* renamed from: c  reason: collision with root package name */
        static final Waiter f1748c = new Waiter(false);
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        volatile Thread f1749a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        volatile Waiter f1750b;

        Waiter(boolean z3) {
        }

        void a(Waiter waiter) {
            AbstractResolvableFuture.f1726g.d(this, waiter);
        }

        void b() {
            Thread thread = this.f1749a;
            if (thread != null) {
                this.f1749a = null;
                LockSupport.unpark(thread);
            }
        }

        Waiter() {
            AbstractResolvableFuture.f1726g.e(this, Thread.currentThread());
        }
    }

    static {
        AtomicHelper synchronizedHelper;
        try {
            synchronizedHelper = new SafeAtomicHelper(AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Waiter.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Waiter.class, ai.aD), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Listener.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Object.class, "a"));
            th = null;
        } catch (Throwable th) {
            th = th;
            synchronizedHelper = new SynchronizedHelper();
        }
        f1726g = synchronizedHelper;
        if (th != null) {
            f1724e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f1727h = new Object();
    }

    private void a(StringBuilder sb) {
        try {
            Object j4 = j(this);
            sb.append("SUCCESS, result=[");
            sb.append(p(j4));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e4) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e4.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e5) {
            sb.append("FAILURE, cause=[");
            sb.append(e5.getCause());
            sb.append("]");
        }
    }

    private static CancellationException c(@Nullable String str, @Nullable Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    @NonNull
    static <T> T d(@Nullable T t3) {
        Objects.requireNonNull(t3);
        return t3;
    }

    private Listener e(Listener listener) {
        Listener listener2;
        do {
            listener2 = this.f1729b;
        } while (!f1726g.a(this, listener2, Listener.f1737d));
        Listener listener3 = listener;
        Listener listener4 = listener2;
        while (listener4 != null) {
            Listener listener5 = listener4.f1740c;
            listener4.f1740c = listener3;
            listener3 = listener4;
            listener4 = listener5;
        }
        return listener3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper] */
    /* JADX WARN: Type inference failed for: r4v0, types: [androidx.concurrent.futures.AbstractResolvableFuture<?>] */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.concurrent.futures.AbstractResolvableFuture] */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.concurrent.futures.AbstractResolvableFuture, androidx.concurrent.futures.AbstractResolvableFuture<V>] */
    static void f(AbstractResolvableFuture<?> abstractResolvableFuture) {
        Listener listener = null;
        while (true) {
            abstractResolvableFuture.n();
            abstractResolvableFuture.b();
            Listener e4 = abstractResolvableFuture.e(listener);
            while (e4 != null) {
                listener = e4.f1740c;
                Runnable runnable = e4.f1738a;
                if (runnable instanceof SetFuture) {
                    SetFuture setFuture = (SetFuture) runnable;
                    abstractResolvableFuture = setFuture.f1746a;
                    if (abstractResolvableFuture.f1728a == setFuture) {
                        if (f1726g.b(abstractResolvableFuture, setFuture, i(setFuture.f1747b))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    g(runnable, e4.f1739b);
                }
                e4 = listener;
            }
            return;
        }
    }

    private static void g(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e4) {
            Logger logger = f1724e;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private V h(Object obj) throws ExecutionException {
        if (!(obj instanceof Cancellation)) {
            if (!(obj instanceof Failure)) {
                if (obj == f1727h) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((Failure) obj).f1736a);
        }
        throw c("Task was cancelled.", ((Cancellation) obj).f1734b);
    }

    static Object i(a<?> aVar) {
        if (aVar instanceof AbstractResolvableFuture) {
            Object obj = ((AbstractResolvableFuture) aVar).f1728a;
            if (obj instanceof Cancellation) {
                Cancellation cancellation = (Cancellation) obj;
                return cancellation.f1733a ? cancellation.f1734b != null ? new Cancellation(false, cancellation.f1734b) : Cancellation.f1732d : obj;
            }
            return obj;
        }
        boolean isCancelled = aVar.isCancelled();
        if ((!f1723d) & isCancelled) {
            return Cancellation.f1732d;
        }
        try {
            Object j4 = j(aVar);
            return j4 == null ? f1727h : j4;
        } catch (CancellationException e4) {
            if (!isCancelled) {
                return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + aVar, e4));
            }
            return new Cancellation(false, e4);
        } catch (ExecutionException e5) {
            return new Failure(e5.getCause());
        } catch (Throwable th) {
            return new Failure(th);
        }
    }

    private static <V> V j(Future<V> future) throws ExecutionException {
        V v3;
        boolean z3 = false;
        while (true) {
            try {
                v3 = future.get();
                break;
            } catch (InterruptedException unused) {
                z3 = true;
            } catch (Throwable th) {
                if (z3) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z3) {
            Thread.currentThread().interrupt();
        }
        return v3;
    }

    private void n() {
        Waiter waiter;
        do {
            waiter = this.f1730c;
        } while (!f1726g.c(this, waiter, Waiter.f1748c));
        while (waiter != null) {
            waiter.b();
            waiter = waiter.f1750b;
        }
    }

    private void o(Waiter waiter) {
        waiter.f1749a = null;
        while (true) {
            Waiter waiter2 = this.f1730c;
            if (waiter2 == Waiter.f1748c) {
                return;
            }
            Waiter waiter3 = null;
            while (waiter2 != null) {
                Waiter waiter4 = waiter2.f1750b;
                if (waiter2.f1749a != null) {
                    waiter3 = waiter2;
                } else if (waiter3 != null) {
                    waiter3.f1750b = waiter4;
                    if (waiter3.f1749a == null) {
                        break;
                    }
                } else if (!f1726g.c(this, waiter2, waiter4)) {
                    break;
                }
                waiter2 = waiter4;
            }
            return;
        }
    }

    private String p(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    @Override // e1.a
    public final void addListener(Runnable runnable, Executor executor) {
        d(runnable);
        d(executor);
        Listener listener = this.f1729b;
        if (listener != Listener.f1737d) {
            Listener listener2 = new Listener(runnable, executor);
            do {
                listener2.f1740c = listener;
                if (f1726g.a(this, listener, listener2)) {
                    return;
                }
                listener = this.f1729b;
            } while (listener != Listener.f1737d);
            g(runnable, executor);
        }
        g(runnable, executor);
    }

    protected void b() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z3) {
        Object obj = this.f1728a;
        if (!(obj == null) && !(obj instanceof SetFuture)) {
            return false;
        }
        Cancellation cancellation = f1723d ? new Cancellation(z3, new CancellationException("Future.cancel() was called.")) : z3 ? Cancellation.f1731c : Cancellation.f1732d;
        boolean z4 = false;
        AbstractResolvableFuture<V> abstractResolvableFuture = this;
        while (true) {
            if (f1726g.b(abstractResolvableFuture, obj, cancellation)) {
                if (z3) {
                    abstractResolvableFuture.k();
                }
                f(abstractResolvableFuture);
                if (!(obj instanceof SetFuture)) {
                    return true;
                }
                a<? extends V> aVar = ((SetFuture) obj).f1747b;
                if (aVar instanceof AbstractResolvableFuture) {
                    abstractResolvableFuture = (AbstractResolvableFuture) aVar;
                    obj = abstractResolvableFuture.f1728a;
                    if (!(obj == null) && !(obj instanceof SetFuture)) {
                        return true;
                    }
                    z4 = true;
                } else {
                    aVar.cancel(z3);
                    return true;
                }
            } else {
                obj = abstractResolvableFuture.f1728a;
                if (!(obj instanceof SetFuture)) {
                    return z4;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    public final V get(long j4, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        Locale locale;
        long nanos = timeUnit.toNanos(j4);
        if (!Thread.interrupted()) {
            Object obj = this.f1728a;
            if ((obj != null) & (!(obj instanceof SetFuture))) {
                return h(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                Waiter waiter = this.f1730c;
                if (waiter != Waiter.f1748c) {
                    Waiter waiter2 = new Waiter();
                    do {
                        waiter2.a(waiter);
                        if (f1726g.c(this, waiter, waiter2)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f1728a;
                                    if ((obj2 != null) & (!(obj2 instanceof SetFuture))) {
                                        return h(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    o(waiter2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            o(waiter2);
                        } else {
                            waiter = this.f1730c;
                        }
                    } while (waiter != Waiter.f1748c);
                    return h(this.f1728a);
                }
                return h(this.f1728a);
            }
            while (nanos > 0) {
                Object obj3 = this.f1728a;
                if ((obj3 != null) & (!(obj3 instanceof SetFuture))) {
                    return h(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String abstractResolvableFuture = toString();
            String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
            String str = "Waited " + j4 + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String str2 = str + " (plus ";
                long j5 = -nanos;
                long convert = timeUnit.convert(j5, TimeUnit.NANOSECONDS);
                long nanos2 = j5 - timeUnit.toNanos(convert);
                boolean z3 = convert == 0 || nanos2 > 1000;
                if (convert > 0) {
                    String str3 = str2 + convert + " " + lowerCase;
                    if (z3) {
                        str3 = str3 + ",";
                    }
                    str2 = str3 + " ";
                }
                if (z3) {
                    str2 = str2 + nanos2 + " nanoseconds ";
                }
                str = str2 + "delay)";
            }
            if (isDone()) {
                throw new TimeoutException(str + " but future completed as timeout expired");
            }
            throw new TimeoutException(str + " for " + abstractResolvableFuture);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f1728a instanceof Cancellation;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f1728a;
        return (!(obj instanceof SetFuture)) & (obj != null);
    }

    protected void k() {
    }

    final void l(@Nullable Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(q());
        }
    }

    @Nullable
    protected String m() {
        Object obj = this.f1728a;
        if (obj instanceof SetFuture) {
            return "setFuture=[" + p(((SetFuture) obj).f1747b) + "]";
        } else if (this instanceof ScheduledFuture) {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        } else {
            return null;
        }
    }

    protected final boolean q() {
        Object obj = this.f1728a;
        return (obj instanceof Cancellation) && ((Cancellation) obj).f1733a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean set(@Nullable V v3) {
        if (v3 == null) {
            v3 = (V) f1727h;
        }
        if (f1726g.b(this, null, v3)) {
            f(this);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean setException(Throwable th) {
        if (f1726g.b(this, null, new Failure((Throwable) d(th)))) {
            f(this);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean setFuture(a<? extends V> aVar) {
        Failure failure;
        d(aVar);
        Object obj = this.f1728a;
        if (obj == null) {
            if (aVar.isDone()) {
                if (f1726g.b(this, null, i(aVar))) {
                    f(this);
                    return true;
                }
                return false;
            }
            SetFuture setFuture = new SetFuture(this, aVar);
            if (f1726g.b(this, null, setFuture)) {
                try {
                    aVar.addListener(setFuture, DirectExecutor.INSTANCE);
                } catch (Throwable th) {
                    try {
                        failure = new Failure(th);
                    } catch (Throwable unused) {
                        failure = Failure.f1735b;
                    }
                    f1726g.b(this, setFuture, failure);
                }
                return true;
            }
            obj = this.f1728a;
        }
        if (obj instanceof Cancellation) {
            aVar.cancel(((Cancellation) obj).f1733a);
        }
        return false;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                str = m();
            } catch (RuntimeException e4) {
                str = "Exception thrown from implementation: " + e4.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f1728a;
            if ((obj2 != null) & (!(obj2 instanceof SetFuture))) {
                return h(obj2);
            }
            Waiter waiter = this.f1730c;
            if (waiter != Waiter.f1748c) {
                Waiter waiter2 = new Waiter();
                do {
                    waiter2.a(waiter);
                    if (f1726g.c(this, waiter, waiter2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f1728a;
                            } else {
                                o(waiter2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof SetFuture))));
                        return h(obj);
                    }
                    waiter = this.f1730c;
                } while (waiter != Waiter.f1748c);
                return h(this.f1728a);
            }
            return h(this.f1728a);
        }
        throw new InterruptedException();
    }
}
