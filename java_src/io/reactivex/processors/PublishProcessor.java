package io.reactivex.processors;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import l3.c;
import l3.d;
/* loaded from: classes5.dex */
public final class PublishProcessor<T> extends a<T> {

    /* renamed from: d  reason: collision with root package name */
    static final PublishSubscription[] f70215d = new PublishSubscription[0];

    /* renamed from: e  reason: collision with root package name */
    static final PublishSubscription[] f70216e = new PublishSubscription[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<PublishSubscription<T>[]> f70217b = new AtomicReference<>(f70216e);

    /* renamed from: c  reason: collision with root package name */
    Throwable f70218c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class PublishSubscription<T> extends AtomicLong implements d {
        private static final long serialVersionUID = 3562861878281475070L;

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f70219a;

        /* renamed from: b  reason: collision with root package name */
        final PublishProcessor<T> f70220b;

        PublishSubscription(c<? super T> cVar, PublishProcessor<T> publishProcessor) {
            this.f70219a = cVar;
            this.f70220b = publishProcessor;
        }

        public boolean a() {
            return get() == Long.MIN_VALUE;
        }

        boolean b() {
            return get() == 0;
        }

        public void c() {
            if (get() != Long.MIN_VALUE) {
                this.f70219a.onComplete();
            }
        }

        @Override // l3.d
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f70220b.R8(this);
            }
        }

        public void d(Throwable th) {
            if (get() != Long.MIN_VALUE) {
                this.f70219a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        public void e(T t3) {
            long j4 = get();
            if (j4 == Long.MIN_VALUE) {
                return;
            }
            if (j4 != 0) {
                this.f70219a.onNext(t3);
                io.reactivex.internal.util.b.f(this, 1L);
                return;
            }
            cancel();
            this.f70219a.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.b(this, j4);
            }
        }
    }

    PublishProcessor() {
    }

    @CheckReturnValue
    @NonNull
    public static <T> PublishProcessor<T> P8() {
        return new PublishProcessor<>();
    }

    @Override // io.reactivex.processors.a
    @Nullable
    public Throwable J8() {
        if (this.f70217b.get() == f70215d) {
            return this.f70218c;
        }
        return null;
    }

    @Override // io.reactivex.processors.a
    public boolean K8() {
        return this.f70217b.get() == f70215d && this.f70218c == null;
    }

    @Override // io.reactivex.processors.a
    public boolean L8() {
        return this.f70217b.get().length != 0;
    }

    @Override // io.reactivex.processors.a
    public boolean M8() {
        return this.f70217b.get() == f70215d && this.f70218c != null;
    }

    boolean O8(PublishSubscription<T> publishSubscription) {
        PublishSubscription<T>[] publishSubscriptionArr;
        PublishSubscription<T>[] publishSubscriptionArr2;
        do {
            publishSubscriptionArr = this.f70217b.get();
            if (publishSubscriptionArr == f70215d) {
                return false;
            }
            int length = publishSubscriptionArr.length;
            publishSubscriptionArr2 = new PublishSubscription[length + 1];
            System.arraycopy(publishSubscriptionArr, 0, publishSubscriptionArr2, 0, length);
            publishSubscriptionArr2[length] = publishSubscription;
        } while (!this.f70217b.compareAndSet(publishSubscriptionArr, publishSubscriptionArr2));
        return true;
    }

    public boolean Q8(T t3) {
        if (t3 == null) {
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return true;
        }
        PublishSubscription<T>[] publishSubscriptionArr = this.f70217b.get();
        for (PublishSubscription<T> publishSubscription : publishSubscriptionArr) {
            if (publishSubscription.b()) {
                return false;
            }
        }
        for (PublishSubscription<T> publishSubscription2 : publishSubscriptionArr) {
            publishSubscription2.e(t3);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void R8(PublishSubscription<T> publishSubscription) {
        PublishSubscription<T>[] publishSubscriptionArr;
        PublishSubscription[] publishSubscriptionArr2;
        do {
            publishSubscriptionArr = this.f70217b.get();
            if (publishSubscriptionArr == f70215d || publishSubscriptionArr == f70216e) {
                return;
            }
            int length = publishSubscriptionArr.length;
            int i2 = -1;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (publishSubscriptionArr[i4] == publishSubscription) {
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
                publishSubscriptionArr2 = f70216e;
            } else {
                PublishSubscription[] publishSubscriptionArr3 = new PublishSubscription[length - 1];
                System.arraycopy(publishSubscriptionArr, 0, publishSubscriptionArr3, 0, i2);
                System.arraycopy(publishSubscriptionArr, i2 + 1, publishSubscriptionArr3, i2, (length - i2) - 1);
                publishSubscriptionArr2 = publishSubscriptionArr3;
            }
        } while (!this.f70217b.compareAndSet(publishSubscriptionArr, publishSubscriptionArr2));
    }

    @Override // io.reactivex.j
    protected void h6(c<? super T> cVar) {
        PublishSubscription<T> publishSubscription = new PublishSubscription<>(cVar, this);
        cVar.onSubscribe(publishSubscription);
        if (O8(publishSubscription)) {
            if (publishSubscription.a()) {
                R8(publishSubscription);
                return;
            }
            return;
        }
        Throwable th = this.f70218c;
        if (th != null) {
            cVar.onError(th);
        } else {
            cVar.onComplete();
        }
    }

    @Override // l3.c
    public void onComplete() {
        PublishSubscription<T>[] publishSubscriptionArr = this.f70217b.get();
        PublishSubscription<T>[] publishSubscriptionArr2 = f70215d;
        if (publishSubscriptionArr == publishSubscriptionArr2) {
            return;
        }
        for (PublishSubscription<T> publishSubscription : this.f70217b.getAndSet(publishSubscriptionArr2)) {
            publishSubscription.c();
        }
    }

    @Override // l3.c
    public void onError(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        PublishSubscription<T>[] publishSubscriptionArr = this.f70217b.get();
        PublishSubscription<T>[] publishSubscriptionArr2 = f70215d;
        if (publishSubscriptionArr == publishSubscriptionArr2) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f70218c = th;
        for (PublishSubscription<T> publishSubscription : this.f70217b.getAndSet(publishSubscriptionArr2)) {
            publishSubscription.d(th);
        }
    }

    @Override // l3.c
    public void onNext(T t3) {
        io.reactivex.internal.functions.a.g(t3, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (PublishSubscription<T> publishSubscription : this.f70217b.get()) {
            publishSubscription.e(t3);
        }
    }

    @Override // l3.c
    public void onSubscribe(d dVar) {
        if (this.f70217b.get() == f70215d) {
            dVar.cancel();
        } else {
            dVar.request(Long.MAX_VALUE);
        }
    }
}
