package retrofit2.adapter.rxjava2;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.g0;
import io.reactivex.z;
import retrofit2.Call;
import retrofit2.Response;
/* compiled from: CallExecuteObservable.java */
/* loaded from: classes5.dex */
final class c<T> extends z<Response<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final Call<T> f74063a;

    /* compiled from: CallExecuteObservable.java */
    /* loaded from: classes5.dex */
    private static final class a implements io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        private final Call<?> f74064a;

        /* renamed from: b  reason: collision with root package name */
        private volatile boolean f74065b;

        a(Call<?> call) {
            this.f74064a = call;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f74065b = true;
            this.f74064a.cancel();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f74065b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Call<T> call) {
        this.f74063a = call;
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super Response<T>> g0Var) {
        boolean z3;
        Call<T> mo1445clone = this.f74063a.mo1445clone();
        a aVar = new a(mo1445clone);
        g0Var.onSubscribe(aVar);
        if (aVar.isDisposed()) {
            return;
        }
        try {
            Response<T> execute = mo1445clone.execute();
            if (!aVar.isDisposed()) {
                g0Var.onNext(execute);
            }
            if (aVar.isDisposed()) {
                return;
            }
            try {
                g0Var.onComplete();
            } catch (Throwable th) {
                th = th;
                z3 = true;
                io.reactivex.exceptions.a.b(th);
                if (z3) {
                    io.reactivex.plugins.a.Y(th);
                } else if (aVar.isDisposed()) {
                } else {
                    try {
                        g0Var.onError(th);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        io.reactivex.plugins.a.Y(new CompositeException(th, th2));
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            z3 = false;
        }
    }
}
