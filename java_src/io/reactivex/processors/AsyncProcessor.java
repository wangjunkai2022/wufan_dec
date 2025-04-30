package io.reactivex.processors;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import l3.c;
import l3.d;
/* loaded from: classes5.dex */
public final class AsyncProcessor<T> extends a<T> {

    /* renamed from: e  reason: collision with root package name */
    static final AsyncSubscription[] f70174e = new AsyncSubscription[0];

    /* renamed from: f  reason: collision with root package name */
    static final AsyncSubscription[] f70175f = new AsyncSubscription[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<AsyncSubscription<T>[]> f70176b = new AtomicReference<>(f70174e);

    /* renamed from: c  reason: collision with root package name */
    Throwable f70177c;

    /* renamed from: d  reason: collision with root package name */
    T f70178d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class AsyncSubscription<T> extends DeferredScalarSubscription<T> {
        private static final long serialVersionUID = 5629876084736248016L;

        /* renamed from: k  reason: collision with root package name */
        final AsyncProcessor<T> f70179k;

        AsyncSubscription(c<? super T> cVar, AsyncProcessor<T> asyncProcessor) {
            super(cVar);
            this.f70179k = asyncProcessor;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, l3.d
        public void cancel() {
            if (super.f()) {
                this.f70179k.U8(this);
            }
        }

        void onComplete() {
            if (e()) {
                return;
            }
            this.f70070a.onComplete();
        }

        void onError(Throwable th) {
            if (e()) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f70070a.onError(th);
            }
        }
    }

    AsyncProcessor() {
    }

    @CheckReturnValue
    @NonNull
    public static <T> AsyncProcessor<T> P8() {
        return new AsyncProcessor<>();
    }

    @Override // io.reactivex.processors.a
    @Nullable
    public Throwable J8() {
        if (this.f70176b.get() == f70175f) {
            return this.f70177c;
        }
        return null;
    }

    @Override // io.reactivex.processors.a
    public boolean K8() {
        return this.f70176b.get() == f70175f && this.f70177c == null;
    }

    @Override // io.reactivex.processors.a
    public boolean L8() {
        return this.f70176b.get().length != 0;
    }

    @Override // io.reactivex.processors.a
    public boolean M8() {
        return this.f70176b.get() == f70175f && this.f70177c != null;
    }

    boolean O8(AsyncSubscription<T> asyncSubscription) {
        AsyncSubscription<T>[] asyncSubscriptionArr;
        AsyncSubscription<T>[] asyncSubscriptionArr2;
        do {
            asyncSubscriptionArr = this.f70176b.get();
            if (asyncSubscriptionArr == f70175f) {
                return false;
            }
            int length = asyncSubscriptionArr.length;
            asyncSubscriptionArr2 = new AsyncSubscription[length + 1];
            System.arraycopy(asyncSubscriptionArr, 0, asyncSubscriptionArr2, 0, length);
            asyncSubscriptionArr2[length] = asyncSubscription;
        } while (!this.f70176b.compareAndSet(asyncSubscriptionArr, asyncSubscriptionArr2));
        return true;
    }

    @Nullable
    public T Q8() {
        if (this.f70176b.get() == f70175f) {
            return this.f70178d;
        }
        return null;
    }

    @Deprecated
    public Object[] R8() {
        T Q8 = Q8();
        return Q8 != null ? new Object[]{Q8} : new Object[0];
    }

    @Deprecated
    public T[] S8(T[] tArr) {
        T Q8 = Q8();
        if (Q8 == null) {
            if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        if (tArr.length == 0) {
            tArr = (T[]) Arrays.copyOf(tArr, 1);
        }
        tArr[0] = Q8;
        if (tArr.length != 1) {
            tArr[1] = null;
        }
        return tArr;
    }

    public boolean T8() {
        return this.f70176b.get() == f70175f && this.f70178d != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void U8(AsyncSubscription<T> asyncSubscription) {
        AsyncSubscription<T>[] asyncSubscriptionArr;
        AsyncSubscription[] asyncSubscriptionArr2;
        do {
            asyncSubscriptionArr = this.f70176b.get();
            int length = asyncSubscriptionArr.length;
            if (length == 0) {
                return;
            }
            int i2 = -1;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (asyncSubscriptionArr[i4] == asyncSubscription) {
                    i2 = i4;
                    break;
                } else {
                    i4++;
                }
            }
            if (i2 < 0) {
                return;
            }
            if (length == 1) {
                asyncSubscriptionArr2 = f70174e;
            } else {
                AsyncSubscription[] asyncSubscriptionArr3 = new AsyncSubscription[length - 1];
                System.arraycopy(asyncSubscriptionArr, 0, asyncSubscriptionArr3, 0, i2);
                System.arraycopy(asyncSubscriptionArr, i2 + 1, asyncSubscriptionArr3, i2, (length - i2) - 1);
                asyncSubscriptionArr2 = asyncSubscriptionArr3;
            }
        } while (!this.f70176b.compareAndSet(asyncSubscriptionArr, asyncSubscriptionArr2));
    }

    @Override // io.reactivex.j
    protected void h6(c<? super T> cVar) {
        AsyncSubscription<T> asyncSubscription = new AsyncSubscription<>(cVar, this);
        cVar.onSubscribe(asyncSubscription);
        if (O8(asyncSubscription)) {
            if (asyncSubscription.e()) {
                U8(asyncSubscription);
                return;
            }
            return;
        }
        Throwable th = this.f70177c;
        if (th != null) {
            cVar.onError(th);
            return;
        }
        T t3 = this.f70178d;
        if (t3 != null) {
            asyncSubscription.d(t3);
        } else {
            asyncSubscription.onComplete();
        }
    }

    @Override // l3.c
    public void onComplete() {
        AsyncSubscription<T>[] asyncSubscriptionArr = this.f70176b.get();
        AsyncSubscription<T>[] asyncSubscriptionArr2 = f70175f;
        if (asyncSubscriptionArr == asyncSubscriptionArr2) {
            return;
        }
        T t3 = this.f70178d;
        AsyncSubscription<T>[] andSet = this.f70176b.getAndSet(asyncSubscriptionArr2);
        int i2 = 0;
        if (t3 == null) {
            int length = andSet.length;
            while (i2 < length) {
                andSet[i2].onComplete();
                i2++;
            }
            return;
        }
        int length2 = andSet.length;
        while (i2 < length2) {
            andSet[i2].d(t3);
            i2++;
        }
    }

    @Override // l3.c
    public void onError(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        AsyncSubscription<T>[] asyncSubscriptionArr = this.f70176b.get();
        AsyncSubscription<T>[] asyncSubscriptionArr2 = f70175f;
        if (asyncSubscriptionArr == asyncSubscriptionArr2) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f70178d = null;
        this.f70177c = th;
        for (AsyncSubscription<T> asyncSubscription : this.f70176b.getAndSet(asyncSubscriptionArr2)) {
            asyncSubscription.onError(th);
        }
    }

    @Override // l3.c
    public void onNext(T t3) {
        io.reactivex.internal.functions.a.g(t3, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70176b.get() == f70175f) {
            return;
        }
        this.f70178d = t3;
    }

    @Override // l3.c
    public void onSubscribe(d dVar) {
        if (this.f70176b.get() == f70175f) {
            dVar.cancel();
        } else {
            dVar.request(Long.MAX_VALUE);
        }
    }
}
