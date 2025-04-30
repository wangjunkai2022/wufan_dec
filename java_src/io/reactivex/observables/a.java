package io.reactivex.observables;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.h0;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.operators.observable.ObservableRefCount;
import io.reactivex.internal.operators.observable.i;
import io.reactivex.internal.util.e;
import io.reactivex.z;
import java.util.concurrent.TimeUnit;
import w2.g;
/* compiled from: ConnectableObservable.java */
/* loaded from: classes5.dex */
public abstract class a<T> extends z<T> {
    @NonNull
    public z<T> f8() {
        return g8(1);
    }

    @NonNull
    public z<T> g8(int i2) {
        return h8(i2, Functions.h());
    }

    @NonNull
    public z<T> h8(int i2, @NonNull g<? super io.reactivex.disposables.b> gVar) {
        if (i2 <= 0) {
            j8(gVar);
            return io.reactivex.plugins.a.U(this);
        }
        return io.reactivex.plugins.a.R(new i(this, i2, gVar));
    }

    public final io.reactivex.disposables.b i8() {
        e eVar = new e();
        j8(eVar);
        return eVar.f70094a;
    }

    public abstract void j8(@NonNull g<? super io.reactivex.disposables.b> gVar);

    @SchedulerSupport("none")
    @CheckReturnValue
    @NonNull
    public z<T> k8() {
        return io.reactivex.plugins.a.R(new ObservableRefCount(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> l8(int i2) {
        return n8(i2, 0L, TimeUnit.NANOSECONDS, io.reactivex.schedulers.b.h());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> m8(int i2, long j4, TimeUnit timeUnit) {
        return n8(i2, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> n8(int i2, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.h(i2, "subscriberCount");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new ObservableRefCount(this, i2, j4, timeUnit, h0Var));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> o8(long j4, TimeUnit timeUnit) {
        return n8(1, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> p8(long j4, TimeUnit timeUnit, h0 h0Var) {
        return n8(1, j4, timeUnit, h0Var);
    }
}
