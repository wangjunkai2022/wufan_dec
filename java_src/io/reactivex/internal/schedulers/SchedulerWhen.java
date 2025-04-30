package io.reactivex.internal.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.h0;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.processors.UnicastProcessor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import w2.o;
/* loaded from: classes5.dex */
public class SchedulerWhen extends h0 implements io.reactivex.disposables.b {

    /* renamed from: e  reason: collision with root package name */
    static final io.reactivex.disposables.b f69861e = new d();

    /* renamed from: f  reason: collision with root package name */
    static final io.reactivex.disposables.b f69862f = io.reactivex.disposables.c.a();

    /* renamed from: b  reason: collision with root package name */
    private final h0 f69863b;

    /* renamed from: c  reason: collision with root package name */
    private final io.reactivex.processors.a<io.reactivex.j<io.reactivex.a>> f69864c;

    /* renamed from: d  reason: collision with root package name */
    private io.reactivex.disposables.b f69865d;

    /* loaded from: classes5.dex */
    static class DelayedAction extends ScheduledAction {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f69866a;

        /* renamed from: b  reason: collision with root package name */
        private final long f69867b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f69868c;

        DelayedAction(Runnable runnable, long j4, TimeUnit timeUnit) {
            this.f69866a = runnable;
            this.f69867b = j4;
            this.f69868c = timeUnit;
        }

        @Override // io.reactivex.internal.schedulers.SchedulerWhen.ScheduledAction
        protected io.reactivex.disposables.b a(h0.c cVar, io.reactivex.d dVar) {
            return cVar.c(new b(this.f69866a, dVar), this.f69867b, this.f69868c);
        }
    }

    /* loaded from: classes5.dex */
    static class ImmediateAction extends ScheduledAction {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f69869a;

        ImmediateAction(Runnable runnable) {
            this.f69869a = runnable;
        }

        @Override // io.reactivex.internal.schedulers.SchedulerWhen.ScheduledAction
        protected io.reactivex.disposables.b a(h0.c cVar, io.reactivex.d dVar) {
            return cVar.b(new b(this.f69869a, dVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class ScheduledAction extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.disposables.b {
        ScheduledAction() {
            super(SchedulerWhen.f69861e);
        }

        protected abstract io.reactivex.disposables.b a(h0.c cVar, io.reactivex.d dVar);

        void call(h0.c cVar, io.reactivex.d dVar) {
            io.reactivex.disposables.b bVar;
            io.reactivex.disposables.b bVar2 = get();
            if (bVar2 != SchedulerWhen.f69862f && bVar2 == (bVar = SchedulerWhen.f69861e)) {
                io.reactivex.disposables.b a4 = a(cVar, dVar);
                if (compareAndSet(bVar, a4)) {
                    return;
                }
                a4.dispose();
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            io.reactivex.disposables.b bVar;
            io.reactivex.disposables.b bVar2 = SchedulerWhen.f69862f;
            do {
                bVar = get();
                if (bVar == SchedulerWhen.f69862f) {
                    return;
                }
            } while (!compareAndSet(bVar, bVar2));
            if (bVar != SchedulerWhen.f69861e) {
                bVar.dispose();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get().isDisposed();
        }
    }

    /* loaded from: classes5.dex */
    static final class a implements o<ScheduledAction, io.reactivex.a> {

        /* renamed from: a  reason: collision with root package name */
        final h0.c f69870a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.reactivex.internal.schedulers.SchedulerWhen$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public final class C0467a extends io.reactivex.a {

            /* renamed from: a  reason: collision with root package name */
            final ScheduledAction f69871a;

            C0467a(ScheduledAction scheduledAction) {
                this.f69871a = scheduledAction;
            }

            @Override // io.reactivex.a
            protected void F0(io.reactivex.d dVar) {
                dVar.onSubscribe(this.f69871a);
                this.f69871a.call(a.this.f69870a, dVar);
            }
        }

        a(h0.c cVar) {
            this.f69870a = cVar;
        }

        @Override // w2.o
        /* renamed from: a */
        public io.reactivex.a apply(ScheduledAction scheduledAction) {
            return new C0467a(scheduledAction);
        }
    }

    /* loaded from: classes5.dex */
    static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f69873a;

        /* renamed from: b  reason: collision with root package name */
        final Runnable f69874b;

        b(Runnable runnable, io.reactivex.d dVar) {
            this.f69874b = runnable;
            this.f69873a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f69874b.run();
            } finally {
                this.f69873a.onComplete();
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class c extends h0.c {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicBoolean f69875a = new AtomicBoolean();

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.processors.a<ScheduledAction> f69876b;

        /* renamed from: c  reason: collision with root package name */
        private final h0.c f69877c;

        c(io.reactivex.processors.a<ScheduledAction> aVar, h0.c cVar) {
            this.f69876b = aVar;
            this.f69877c = cVar;
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b b(@NonNull Runnable runnable) {
            ImmediateAction immediateAction = new ImmediateAction(runnable);
            this.f69876b.onNext(immediateAction);
            return immediateAction;
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b c(@NonNull Runnable runnable, long j4, @NonNull TimeUnit timeUnit) {
            DelayedAction delayedAction = new DelayedAction(runnable, j4, timeUnit);
            this.f69876b.onNext(delayedAction);
            return delayedAction;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f69875a.compareAndSet(false, true)) {
                this.f69876b.onComplete();
                this.f69877c.dispose();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69875a.get();
        }
    }

    /* loaded from: classes5.dex */
    static final class d implements io.reactivex.disposables.b {
        d() {
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SchedulerWhen(o<io.reactivex.j<io.reactivex.j<io.reactivex.a>>, io.reactivex.a> oVar, h0 h0Var) {
        this.f69863b = h0Var;
        io.reactivex.processors.a N8 = UnicastProcessor.P8().N8();
        this.f69864c = N8;
        try {
            this.f69865d = ((io.reactivex.a) oVar.apply(N8)).C0();
        } catch (Throwable th) {
            throw ExceptionHelper.e(th);
        }
    }

    @Override // io.reactivex.h0
    @NonNull
    public h0.c c() {
        h0.c c4 = this.f69863b.c();
        io.reactivex.processors.a<T> N8 = UnicastProcessor.P8().N8();
        io.reactivex.j<io.reactivex.a> H3 = N8.H3(new a(c4));
        c cVar = new c(N8, c4);
        this.f69864c.onNext(H3);
        return cVar;
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        this.f69865d.dispose();
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return this.f69865d.isDisposed();
    }
}
