package io.reactivex.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.VolatileSizeArrayList;
import io.reactivex.observers.BaseTestConsumer;
import io.reactivex.y;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import w2.r;
/* loaded from: classes5.dex */
public abstract class BaseTestConsumer<T, U extends BaseTestConsumer<T, U>> implements io.reactivex.disposables.b {

    /* renamed from: d  reason: collision with root package name */
    protected long f70115d;

    /* renamed from: e  reason: collision with root package name */
    protected Thread f70116e;

    /* renamed from: f  reason: collision with root package name */
    protected boolean f70117f;

    /* renamed from: g  reason: collision with root package name */
    protected int f70118g;

    /* renamed from: h  reason: collision with root package name */
    protected int f70119h;

    /* renamed from: i  reason: collision with root package name */
    protected CharSequence f70120i;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f70121j;

    /* renamed from: b  reason: collision with root package name */
    protected final List<T> f70113b = new VolatileSizeArrayList();

    /* renamed from: c  reason: collision with root package name */
    protected final List<Throwable> f70114c = new VolatileSizeArrayList();

    /* renamed from: a  reason: collision with root package name */
    protected final CountDownLatch f70112a = new CountDownLatch(1);

    /* loaded from: classes5.dex */
    public enum TestWaitStrategy implements Runnable {
        SPIN { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.1
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
            }
        },
        YIELD { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.2
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                Thread.yield();
            }
        },
        SLEEP_1MS { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.3
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(1);
            }
        },
        SLEEP_10MS { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.4
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(10);
            }
        },
        SLEEP_100MS { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.5
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(100);
            }
        },
        SLEEP_1000MS { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.6
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(1000);
            }
        };

        static void sleep(int i2) {
            try {
                Thread.sleep(i2);
            } catch (InterruptedException e4) {
                throw new RuntimeException(e4);
            }
        }

        @Override // java.lang.Runnable
        public abstract void run();
    }

    public static String X(Object obj) {
        if (obj != null) {
            return obj + " (class: " + obj.getClass().getSimpleName() + ")";
        }
        return "null";
    }

    public final U A(Iterable<? extends T> iterable) {
        boolean hasNext;
        boolean hasNext2;
        Iterator<T> it2 = this.f70113b.iterator();
        Iterator<? extends T> it3 = iterable.iterator();
        int i2 = 0;
        while (true) {
            hasNext = it3.hasNext();
            hasNext2 = it2.hasNext();
            if (!hasNext2 || !hasNext) {
                break;
            }
            T next = it3.next();
            T next2 = it2.next();
            if (!io.reactivex.internal.functions.a.c(next, next2)) {
                throw S("Values at position " + i2 + " differ; Expected: " + X(next) + ", Actual: " + X(next2));
            }
            i2++;
        }
        if (hasNext2) {
            throw S("More values received than expected (" + i2 + ")");
        } else if (hasNext) {
            throw S("Fewer values received than expected (" + i2 + ")");
        } else {
            return this;
        }
    }

    public final U B(Iterable<? extends T> iterable) {
        return (U) s().A(iterable).l().o();
    }

    public final U C(Collection<? extends T> collection) {
        if (collection.isEmpty()) {
            n();
            return this;
        }
        for (T t3 : this.f70113b) {
            if (!collection.contains(t3)) {
                throw S("Value not in the expected collection: " + X(t3));
            }
        }
        return this;
    }

    public final U D(Collection<? extends T> collection) {
        return (U) s().C(collection).l().o();
    }

    public final U E(T... tArr) {
        int size = this.f70113b.size();
        if (size != tArr.length) {
            throw S("Value count differs; Expected: " + tArr.length + " " + Arrays.toString(tArr) + ", Actual: " + size + " " + this.f70113b);
        }
        for (int i2 = 0; i2 < size; i2++) {
            T t3 = this.f70113b.get(i2);
            T t4 = tArr[i2];
            if (!io.reactivex.internal.functions.a.c(t4, t3)) {
                throw S("Values at position " + i2 + " differ; Expected: " + X(t4) + ", Actual: " + X(t3));
            }
        }
        return this;
    }

    public final U F(T... tArr) {
        return (U) s().E(tArr).l().o();
    }

    public final U G() throws InterruptedException {
        if (this.f70112a.getCount() == 0) {
            return this;
        }
        this.f70112a.await();
        return this;
    }

    public final boolean H(long j4, TimeUnit timeUnit) throws InterruptedException {
        boolean z3 = this.f70112a.getCount() == 0 || this.f70112a.await(j4, timeUnit);
        this.f70121j = !z3;
        return z3;
    }

    public final U I(int i2) {
        return K(i2, TestWaitStrategy.SLEEP_10MS, 5000L);
    }

    public final U J(int i2, Runnable runnable) {
        return K(i2, runnable, 5000L);
    }

    public final U K(int i2, Runnable runnable, long j4) {
        long currentTimeMillis = System.currentTimeMillis();
        while (true) {
            if (j4 > 0 && System.currentTimeMillis() - currentTimeMillis >= j4) {
                this.f70121j = true;
                break;
            } else if (this.f70112a.getCount() == 0 || this.f70113b.size() >= i2) {
                break;
            } else {
                runnable.run();
            }
        }
        return this;
    }

    public final U L(long j4, TimeUnit timeUnit) {
        try {
            if (!this.f70112a.await(j4, timeUnit)) {
                this.f70121j = true;
                dispose();
            }
            return this;
        } catch (InterruptedException e4) {
            dispose();
            throw ExceptionHelper.e(e4);
        }
    }

    public final boolean M() {
        try {
            G();
            return true;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return false;
        }
    }

    public final boolean N(long j4, TimeUnit timeUnit) {
        try {
            return H(j4, timeUnit);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return false;
        }
    }

    public final U O() {
        this.f70121j = false;
        return this;
    }

    public final long P() {
        return this.f70115d;
    }

    public final int Q() {
        return this.f70114c.size();
    }

    public final List<Throwable> R() {
        return this.f70114c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final AssertionError S(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 64);
        sb.append(str);
        sb.append(" (");
        sb.append("latch = ");
        sb.append(this.f70112a.getCount());
        sb.append(", ");
        sb.append("values = ");
        sb.append(this.f70113b.size());
        sb.append(", ");
        sb.append("errors = ");
        sb.append(this.f70114c.size());
        sb.append(", ");
        sb.append("completions = ");
        sb.append(this.f70115d);
        if (this.f70121j) {
            sb.append(", timeout!");
        }
        if (isDisposed()) {
            sb.append(", disposed!");
        }
        CharSequence charSequence = this.f70120i;
        if (charSequence != null) {
            sb.append(", tag = ");
            sb.append(charSequence);
        }
        sb.append(')');
        AssertionError assertionError = new AssertionError(sb.toString());
        if (!this.f70114c.isEmpty()) {
            if (this.f70114c.size() == 1) {
                assertionError.initCause(this.f70114c.get(0));
            } else {
                assertionError.initCause(new CompositeException(this.f70114c));
            }
        }
        return assertionError;
    }

    public final List<List<Object>> T() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Z());
        arrayList.add(R());
        ArrayList arrayList2 = new ArrayList();
        for (long j4 = 0; j4 < this.f70115d; j4++) {
            arrayList2.add(y.a());
        }
        arrayList.add(arrayList2);
        return arrayList;
    }

    public final boolean U() {
        return this.f70112a.getCount() == 0;
    }

    public final boolean V() {
        return this.f70121j;
    }

    public final Thread W() {
        return this.f70116e;
    }

    public final int Y() {
        return this.f70113b.size();
    }

    public final List<T> Z() {
        return this.f70113b;
    }

    public final U a() {
        long j4 = this.f70115d;
        if (j4 != 0) {
            if (j4 <= 1) {
                return this;
            }
            throw S("Multiple completions: " + j4);
        }
        throw S("Not completed");
    }

    public final U a0(CharSequence charSequence) {
        this.f70120i = charSequence;
        return this;
    }

    public final U b() {
        return (U) s().n().l().o();
    }

    public final U c(Class<? extends Throwable> cls) {
        return e(Functions.l(cls));
    }

    public final U d(Throwable th) {
        return e(Functions.i(th));
    }

    public final U e(r<Throwable> rVar) {
        int size = this.f70114c.size();
        if (size != 0) {
            boolean z3 = false;
            Iterator<Throwable> it2 = this.f70114c.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                try {
                    if (rVar.test(it2.next())) {
                        z3 = true;
                        break;
                    }
                } catch (Exception e4) {
                    throw ExceptionHelper.e(e4);
                }
            }
            if (z3) {
                if (size == 1) {
                    return this;
                }
                throw S("Error present but other errors as well");
            }
            throw S("Error not present");
        }
        throw S("No errors");
    }

    public final U f(String str) {
        int size = this.f70114c.size();
        if (size != 0) {
            if (size == 1) {
                String message = this.f70114c.get(0).getMessage();
                if (io.reactivex.internal.functions.a.c(str, message)) {
                    return this;
                }
                throw S("Error message differs; Expected: " + str + ", Actual: " + message);
            }
            throw S("Multiple errors");
        }
        throw S("No errors");
    }

    public final U g(Class<? extends Throwable> cls, T... tArr) {
        return (U) s().E(tArr).c(cls).o();
    }

    public final U h(r<Throwable> rVar, T... tArr) {
        return (U) s().E(tArr).e(rVar).o();
    }

    public final U i(Class<? extends Throwable> cls, String str, T... tArr) {
        return (U) s().E(tArr).c(cls).f(str).o();
    }

    public final U j(T t3) {
        int size = this.f70113b.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (io.reactivex.internal.functions.a.c(this.f70113b.get(i2), t3)) {
                throw S("Value at position " + i2 + " is equal to " + X(t3) + "; Expected them to be different");
            }
        }
        return this;
    }

    public final U k(r<? super T> rVar) {
        int size = this.f70113b.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                if (rVar.test((T) this.f70113b.get(i2))) {
                    throw S("Value at position " + i2 + " matches predicate " + rVar.toString() + ", which was not expected.");
                }
            } catch (Exception e4) {
                throw ExceptionHelper.e(e4);
            }
        }
        return this;
    }

    public final U l() {
        if (this.f70114c.size() == 0) {
            return this;
        }
        throw S("Error(s) present: " + this.f70114c);
    }

    public final U m() {
        if (this.f70121j) {
            throw S("Timeout?!");
        }
        return this;
    }

    public final U n() {
        return z(0);
    }

    public final U o() {
        long j4 = this.f70115d;
        if (j4 != 1) {
            if (j4 <= 1) {
                return this;
            }
            throw S("Multiple completions: " + j4);
        }
        throw S("Completed!");
    }

    public abstract U p();

    public final U q() {
        if (this.f70112a.getCount() != 0) {
            return this;
        }
        throw S("Subscriber terminated!");
    }

    public final U r(T... tArr) {
        return (U) s().E(tArr).l().a();
    }

    public abstract U s();

    public final U t() {
        if (this.f70112a.getCount() == 0) {
            long j4 = this.f70115d;
            if (j4 <= 1) {
                int size = this.f70114c.size();
                if (size > 1) {
                    throw S("Terminated with multiple errors: " + size);
                } else if (j4 == 0 || size == 0) {
                    return this;
                } else {
                    throw S("Terminated with multiple completions and errors: " + j4);
                }
            }
            throw S("Terminated with multiple completions: " + j4);
        }
        throw S("Subscriber still running!");
    }

    public final U u() {
        if (this.f70121j) {
            return this;
        }
        throw S("No timeout?!");
    }

    public final U v(T t3) {
        if (this.f70113b.size() == 1) {
            T t4 = this.f70113b.get(0);
            if (io.reactivex.internal.functions.a.c(t3, t4)) {
                return this;
            }
            throw S("Expected: " + X(t3) + ", Actual: " + X(t4));
        }
        throw S("Expected: " + X(t3) + ", Actual: " + this.f70113b);
    }

    public final U w(r<T> rVar) {
        y(0, rVar);
        if (this.f70113b.size() <= 1) {
            return this;
        }
        throw S("Value present but other values as well");
    }

    public final U x(int i2, T t3) {
        int size = this.f70113b.size();
        if (size != 0) {
            if (i2 < size) {
                T t4 = this.f70113b.get(i2);
                if (io.reactivex.internal.functions.a.c(t3, t4)) {
                    return this;
                }
                throw S("Expected: " + X(t3) + ", Actual: " + X(t4));
            }
            throw S("Invalid index: " + i2);
        }
        throw S("No values");
    }

    public final U y(int i2, r<T> rVar) {
        if (this.f70113b.size() != 0) {
            if (i2 < this.f70113b.size()) {
                try {
                    if (rVar.test(this.f70113b.get(i2))) {
                        return this;
                    }
                    throw S("Value not present");
                } catch (Exception e4) {
                    throw ExceptionHelper.e(e4);
                }
            }
            throw S("Invalid index: " + i2);
        }
        throw S("No values");
    }

    public final U z(int i2) {
        int size = this.f70113b.size();
        if (size == i2) {
            return this;
        }
        throw S("Value counts differ; Expected: " + i2 + ", Actual: " + size);
    }
}
