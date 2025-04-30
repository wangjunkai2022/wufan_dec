package retrofit2.adapter.rxjava2;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.g0;
import io.reactivex.z;
import retrofit2.Response;
/* compiled from: BodyObservable.java */
/* loaded from: classes5.dex */
final class a<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    private final z<Response<T>> f74055a;

    /* compiled from: BodyObservable.java */
    /* renamed from: retrofit2.adapter.rxjava2.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static class C0499a<R> implements g0<Response<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final g0<? super R> f74056a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f74057b;

        C0499a(g0<? super R> g0Var) {
            this.f74056a = g0Var;
        }

        @Override // io.reactivex.g0
        /* renamed from: a */
        public void onNext(Response<R> response) {
            if (response.isSuccessful()) {
                this.f74056a.onNext(response.body());
                return;
            }
            this.f74057b = true;
            HttpException httpException = new HttpException(response);
            try {
                this.f74056a.onError(httpException);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(new CompositeException(httpException, th));
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74057b) {
                return;
            }
            this.f74056a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (!this.f74057b) {
                this.f74056a.onError(th);
                return;
            }
            AssertionError assertionError = new AssertionError("This should never happen! Report as a bug with the full stacktrace.");
            assertionError.initCause(th);
            io.reactivex.plugins.a.Y(assertionError);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f74056a.onSubscribe(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(z<Response<T>> zVar) {
        this.f74055a = zVar;
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super T> g0Var) {
        this.f74055a.a(new C0499a(g0Var));
    }
}
