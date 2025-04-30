package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StateFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.StateFlowImpl", f = "StateFlow.kt", i = {0, 0, 0, 2}, l = {386, 398, 403}, m = "collect", n = {"this", "collector", "slot", "oldState"}, s = {"L$0", "L$1", "L$2", "L$4"})
/* loaded from: classes5.dex */
public final class StateFlowImpl$collect$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71915a;

    /* renamed from: b  reason: collision with root package name */
    Object f71916b;

    /* renamed from: c  reason: collision with root package name */
    Object f71917c;

    /* renamed from: d  reason: collision with root package name */
    Object f71918d;

    /* renamed from: e  reason: collision with root package name */
    Object f71919e;

    /* renamed from: f  reason: collision with root package name */
    /* synthetic */ Object f71920f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ StateFlowImpl<T> f71921g;

    /* renamed from: h  reason: collision with root package name */
    int f71922h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateFlowImpl$collect$1(StateFlowImpl<T> stateFlowImpl, Continuation<? super StateFlowImpl$collect$1> continuation) {
        super(continuation);
        this.f71921g = stateFlowImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f71920f = obj;
        this.f71922h |= Integer.MIN_VALUE;
        return this.f71921g.e(null, this);
    }
}
