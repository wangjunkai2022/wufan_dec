package androidx.concurrent.futures;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e1.a;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public final class CallbackToFutureAdapter {

    /* loaded from: classes.dex */
    public static final class Completer<T> {

        /* renamed from: a  reason: collision with root package name */
        Object f1751a;

        /* renamed from: b  reason: collision with root package name */
        SafeFuture<T> f1752b;

        /* renamed from: c  reason: collision with root package name */
        private ResolvableFuture<Void> f1753c = ResolvableFuture.create();

        /* renamed from: d  reason: collision with root package name */
        private boolean f1754d;

        Completer() {
        }

        private void b() {
            this.f1751a = null;
            this.f1752b = null;
            this.f1753c = null;
        }

        void a() {
            this.f1751a = null;
            this.f1752b = null;
            this.f1753c.set(null);
        }

        public void addCancellationListener(@NonNull Runnable runnable, @NonNull Executor executor) {
            ResolvableFuture<Void> resolvableFuture = this.f1753c;
            if (resolvableFuture != null) {
                resolvableFuture.addListener(runnable, executor);
            }
        }

        protected void finalize() {
            ResolvableFuture<Void> resolvableFuture;
            SafeFuture<T> safeFuture = this.f1752b;
            if (safeFuture != null && !safeFuture.isDone()) {
                safeFuture.c(new FutureGarbageCollectedException("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f1751a));
            }
            if (this.f1754d || (resolvableFuture = this.f1753c) == null) {
                return;
            }
            resolvableFuture.set(null);
        }

        public boolean set(T t3) {
            boolean z3 = true;
            this.f1754d = true;
            SafeFuture<T> safeFuture = this.f1752b;
            z3 = (safeFuture == null || !safeFuture.b(t3)) ? false : false;
            if (z3) {
                b();
            }
            return z3;
        }

        public boolean setCancelled() {
            boolean z3 = true;
            this.f1754d = true;
            SafeFuture<T> safeFuture = this.f1752b;
            z3 = (safeFuture == null || !safeFuture.a(true)) ? false : false;
            if (z3) {
                b();
            }
            return z3;
        }

        public boolean setException(@NonNull Throwable th) {
            boolean z3 = true;
            this.f1754d = true;
            SafeFuture<T> safeFuture = this.f1752b;
            z3 = (safeFuture == null || !safeFuture.c(th)) ? false : false;
            if (z3) {
                b();
            }
            return z3;
        }
    }

    /* loaded from: classes.dex */
    static final class FutureGarbageCollectedException extends Throwable {
        FutureGarbageCollectedException(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    /* loaded from: classes.dex */
    public interface Resolver<T> {
        @Nullable
        Object attachCompleter(@NonNull Completer<T> completer) throws Exception;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class SafeFuture<T> implements a<T> {

        /* renamed from: a  reason: collision with root package name */
        final WeakReference<Completer<T>> f1755a;

        /* renamed from: b  reason: collision with root package name */
        private final AbstractResolvableFuture<T> f1756b = new AbstractResolvableFuture<T>() { // from class: androidx.concurrent.futures.CallbackToFutureAdapter.SafeFuture.1
            @Override // androidx.concurrent.futures.AbstractResolvableFuture
            protected String m() {
                Completer<T> completer = SafeFuture.this.f1755a.get();
                if (completer == null) {
                    return "Completer object has been garbage collected, future will fail soon";
                }
                return "tag=[" + completer.f1751a + "]";
            }
        };

        SafeFuture(Completer<T> completer) {
            this.f1755a = new WeakReference<>(completer);
        }

        boolean a(boolean z3) {
            return this.f1756b.cancel(z3);
        }

        @Override // e1.a
        public void addListener(@NonNull Runnable runnable, @NonNull Executor executor) {
            this.f1756b.addListener(runnable, executor);
        }

        boolean b(T t3) {
            return this.f1756b.set(t3);
        }

        boolean c(Throwable th) {
            return this.f1756b.setException(th);
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z3) {
            Completer<T> completer = this.f1755a.get();
            boolean cancel = this.f1756b.cancel(z3);
            if (cancel && completer != null) {
                completer.a();
            }
            return cancel;
        }

        @Override // java.util.concurrent.Future
        public T get() throws InterruptedException, ExecutionException {
            return this.f1756b.get();
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.f1756b.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.f1756b.isDone();
        }

        public String toString() {
            return this.f1756b.toString();
        }

        @Override // java.util.concurrent.Future
        public T get(long j4, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return this.f1756b.get(j4, timeUnit);
        }
    }

    private CallbackToFutureAdapter() {
    }

    @NonNull
    public static <T> a<T> getFuture(@NonNull Resolver<T> resolver) {
        Completer<T> completer = new Completer<>();
        SafeFuture<T> safeFuture = new SafeFuture<>(completer);
        completer.f1752b = safeFuture;
        completer.f1751a = resolver.getClass();
        try {
            Object attachCompleter = resolver.attachCompleter(completer);
            if (attachCompleter != null) {
                completer.f1751a = attachCompleter;
            }
        } catch (Exception e4) {
            safeFuture.c(e4);
        }
        return safeFuture;
    }
}
