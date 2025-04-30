package retrofit2.adapter.rxjava2;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.g0;
import io.reactivex.z;
import retrofit2.Response;
/* compiled from: ResultObservable.java */
/* loaded from: classes5.dex */
final class e<T> extends z<d<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final z<Response<T>> f74068a;

    /* compiled from: ResultObservable.java */
    /* loaded from: classes5.dex */
    private static class a<R> implements g0<Response<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final g0<? super d<R>> f74069a;

        a(g0<? super d<R>> g0Var) {
            this.f74069a = g0Var;
        }

        @Override // io.reactivex.g0
        /* renamed from: a */
        public void onNext(Response<R> response) {
            this.f74069a.onNext(d.e(response));
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74069a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            try {
                this.f74069a.onNext(d.b(th));
                this.f74069a.onComplete();
            } catch (Throwable th2) {
                try {
                    this.f74069a.onError(th2);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    io.reactivex.plugins.a.Y(new CompositeException(th2, th3));
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f74069a.onSubscribe(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(z<Response<T>> zVar) {
        this.f74068a = zVar;
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super d<T>> g0Var) {
        this.f74068a.a(new a(g0Var));
    }
}
