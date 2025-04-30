package retrofit2.adapter.rxjava2;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.g0;
import io.reactivex.z;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: CallEnqueueObservable.java */
/* loaded from: classes5.dex */
final class b<T> extends z<Response<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final Call<T> f74058a;

    /* compiled from: CallEnqueueObservable.java */
    /* loaded from: classes5.dex */
    private static final class a<T> implements io.reactivex.disposables.b, Callback<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Call<?> f74059a;

        /* renamed from: b  reason: collision with root package name */
        private final g0<? super Response<T>> f74060b;

        /* renamed from: c  reason: collision with root package name */
        private volatile boolean f74061c;

        /* renamed from: d  reason: collision with root package name */
        boolean f74062d = false;

        a(Call<?> call, g0<? super Response<T>> g0Var) {
            this.f74059a = call;
            this.f74060b = g0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f74061c = true;
            this.f74059a.cancel();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f74061c;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<T> call, Throwable th) {
            if (call.isCanceled()) {
                return;
            }
            try {
                this.f74060b.onError(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                io.reactivex.plugins.a.Y(new CompositeException(th, th2));
            }
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<T> call, Response<T> response) {
            if (this.f74061c) {
                return;
            }
            try {
                this.f74060b.onNext(response);
                if (this.f74061c) {
                    return;
                }
                this.f74062d = true;
                this.f74060b.onComplete();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                if (this.f74062d) {
                    io.reactivex.plugins.a.Y(th);
                } else if (this.f74061c) {
                } else {
                    try {
                        this.f74060b.onError(th);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        io.reactivex.plugins.a.Y(new CompositeException(th, th2));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Call<T> call) {
        this.f74058a = call;
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super Response<T>> g0Var) {
        Call<T> mo1445clone = this.f74058a.mo1445clone();
        a aVar = new a(mo1445clone, g0Var);
        g0Var.onSubscribe(aVar);
        if (aVar.isDisposed()) {
            return;
        }
        mo1445clone.enqueue(aVar);
    }
}
