package io.reactivex.internal.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.h0;
import java.util.concurrent.TimeUnit;
/* compiled from: ImmediateThinScheduler.java */
/* loaded from: classes5.dex */
public final class c extends h0 {

    /* renamed from: b  reason: collision with root package name */
    public static final h0 f69896b = new c();

    /* renamed from: c  reason: collision with root package name */
    static final h0.c f69897c = new a();

    /* renamed from: d  reason: collision with root package name */
    static final io.reactivex.disposables.b f69898d;

    /* compiled from: ImmediateThinScheduler.java */
    /* loaded from: classes5.dex */
    static final class a extends h0.c {
        a() {
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b b(@NonNull Runnable runnable) {
            runnable.run();
            return c.f69898d;
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b c(@NonNull Runnable runnable, long j4, @NonNull TimeUnit timeUnit) {
            throw new UnsupportedOperationException("This scheduler doesn't support delayed execution");
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b d(@NonNull Runnable runnable, long j4, long j5, TimeUnit timeUnit) {
            throw new UnsupportedOperationException("This scheduler doesn't support periodic execution");
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return false;
        }
    }

    static {
        io.reactivex.disposables.b b4 = io.reactivex.disposables.c.b();
        f69898d = b4;
        b4.dispose();
    }

    private c() {
    }

    @Override // io.reactivex.h0
    @NonNull
    public h0.c c() {
        return f69897c;
    }

    @Override // io.reactivex.h0
    @NonNull
    public io.reactivex.disposables.b e(@NonNull Runnable runnable) {
        runnable.run();
        return f69898d;
    }

    @Override // io.reactivex.h0
    @NonNull
    public io.reactivex.disposables.b f(@NonNull Runnable runnable, long j4, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("This scheduler doesn't support delayed execution");
    }

    @Override // io.reactivex.h0
    @NonNull
    public io.reactivex.disposables.b g(@NonNull Runnable runnable, long j4, long j5, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("This scheduler doesn't support periodic execution");
    }
}
