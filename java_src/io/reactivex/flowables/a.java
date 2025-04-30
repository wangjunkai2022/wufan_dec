package io.reactivex.flowables;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.annotations.BackpressureSupport;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.h0;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.operators.flowable.FlowableRefCount;
import io.reactivex.internal.util.e;
import io.reactivex.j;
import java.util.concurrent.TimeUnit;
import w2.g;
/* compiled from: ConnectableFlowable.java */
/* loaded from: classes.dex */
public abstract class a<T> extends j<T> {
    @NonNull
    public j<T> J8() {
        return K8(1);
    }

    @NonNull
    public j<T> K8(int i2) {
        return L8(i2, Functions.h());
    }

    @NonNull
    public j<T> L8(int i2, @NonNull g<? super io.reactivex.disposables.b> gVar) {
        if (i2 <= 0) {
            N8(gVar);
            return io.reactivex.plugins.a.T(this);
        }
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.g(this, i2, gVar));
    }

    public final io.reactivex.disposables.b M8() {
        e eVar = new e();
        N8(eVar);
        return eVar.f70094a;
    }

    public abstract void N8(@NonNull g<? super io.reactivex.disposables.b> gVar);

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    @NonNull
    public j<T> O8() {
        return io.reactivex.plugins.a.P(new FlowableRefCount(this));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> P8(int i2) {
        return R8(i2, 0L, TimeUnit.NANOSECONDS, io.reactivex.schedulers.b.h());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> Q8(int i2, long j4, TimeUnit timeUnit) {
        return R8(i2, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> R8(int i2, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.h(i2, "subscriberCount");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new FlowableRefCount(this, i2, j4, timeUnit, h0Var));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> S8(long j4, TimeUnit timeUnit) {
        return R8(1, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> T8(long j4, TimeUnit timeUnit, h0 h0Var) {
        return R8(1, j4, timeUnit, h0Var);
    }
}
