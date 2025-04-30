package io.reactivex.internal.operators.flowable;
/* compiled from: FlowableFromObservable.java */
/* loaded from: classes5.dex */
public final class h0<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.z<T> f67380b;

    /* compiled from: FlowableFromObservable.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67381a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f67382b;

        a(l3.c<? super T> cVar) {
            this.f67381a = cVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f67382b.dispose();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f67381a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f67381a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f67381a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f67382b = bVar;
            this.f67381a.onSubscribe(this);
        }

        @Override // l3.d
        public void request(long j4) {
        }
    }

    public h0(io.reactivex.z<T> zVar) {
        this.f67380b = zVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67380b.a(new a(cVar));
    }
}
