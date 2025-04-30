package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StateFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\n\b\u0002\u0018\u00002\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\rJ\u001b\u0010\u0005\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J)\u0010\n\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b0\u00072\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\tH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/flow/x;", "Lkotlinx/coroutines/flow/internal/c;", "Lkotlinx/coroutines/flow/StateFlowImpl;", "flow", "", ai.aD, "(Lkotlinx/coroutines/flow/StateFlowImpl;)Z", "", "Lkotlin/coroutines/Continuation;", "", "e", "(Lkotlinx/coroutines/flow/StateFlowImpl;)[Lkotlin/coroutines/Continuation;", "f", "()V", com.sdk.a.g.f56552a, "()Z", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class x extends kotlinx.coroutines.flow.internal.c<StateFlowImpl<?>> {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f72108a = AtomicReferenceFieldUpdater.newUpdater(x.class, Object.class, "_state");
    @NotNull
    volatile /* synthetic */ Object _state = null;

    @Override // kotlinx.coroutines.flow.internal.c
    /* renamed from: c */
    public boolean a(@NotNull StateFlowImpl<?> stateFlowImpl) {
        i0 i0Var;
        if (this._state != null) {
            return false;
        }
        i0Var = w.f72106a;
        this._state = i0Var;
        return true;
    }

    @Nullable
    public final Object d(@NotNull Continuation<? super Unit> continuation) {
        Continuation intercepted;
        i0 i0Var;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        i0 i0Var2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.q qVar = new kotlinx.coroutines.q(intercepted, 1);
        qVar.N();
        if (!v0.b() || Boxing.boxBoolean(!(this._state instanceof kotlinx.coroutines.q)).booleanValue()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f72108a;
            i0Var = w.f72106a;
            if (!atomicReferenceFieldUpdater.compareAndSet(this, i0Var, qVar)) {
                if (v0.b()) {
                    Object obj = this._state;
                    i0Var2 = w.f72107b;
                    if (!Boxing.boxBoolean(obj == i0Var2).booleanValue()) {
                        throw new AssertionError();
                    }
                }
                Unit unit = Unit.INSTANCE;
                Result.Companion companion = Result.Companion;
                qVar.resumeWith(Result.m24constructorimpl(unit));
            }
            Object x3 = qVar.x();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (x3 == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return x3 == coroutine_suspended2 ? x3 : Unit.INSTANCE;
        }
        throw new AssertionError();
    }

    @Override // kotlinx.coroutines.flow.internal.c
    @NotNull
    /* renamed from: e */
    public Continuation<Unit>[] b(@NotNull StateFlowImpl<?> stateFlowImpl) {
        this._state = null;
        return kotlinx.coroutines.flow.internal.b.f72077a;
    }

    public final void f() {
        i0 i0Var;
        i0 i0Var2;
        i0 i0Var3;
        i0 i0Var4;
        while (true) {
            Object obj = this._state;
            if (obj == null) {
                return;
            }
            i0Var = w.f72107b;
            if (obj == i0Var) {
                return;
            }
            i0Var2 = w.f72106a;
            if (obj == i0Var2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f72108a;
                i0Var3 = w.f72107b;
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, i0Var3)) {
                    return;
                }
            } else {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f72108a;
                i0Var4 = w.f72106a;
                if (atomicReferenceFieldUpdater2.compareAndSet(this, obj, i0Var4)) {
                    Unit unit = Unit.INSTANCE;
                    Result.Companion companion = Result.Companion;
                    ((kotlinx.coroutines.q) obj).resumeWith(Result.m24constructorimpl(unit));
                    return;
                }
            }
        }
    }

    public final boolean g() {
        i0 i0Var;
        i0 i0Var2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f72108a;
        i0Var = w.f72106a;
        Object andSet = atomicReferenceFieldUpdater.getAndSet(this, i0Var);
        Intrinsics.checkNotNull(andSet);
        if (!v0.b() || (!(andSet instanceof kotlinx.coroutines.q))) {
            i0Var2 = w.f72107b;
            return andSet == i0Var2;
        }
        throw new AssertionError();
    }
}
