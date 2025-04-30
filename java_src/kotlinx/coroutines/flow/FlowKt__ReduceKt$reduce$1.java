package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Reduce.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {173}, m = "reduce", n = {"accumulator"}, s = {"L$0"})
/* loaded from: classes5.dex */
public final class FlowKt__ReduceKt$reduce$1<S, T extends S> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71628a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f71629b;

    /* renamed from: c  reason: collision with root package name */
    int f71630c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ReduceKt$reduce$1(Continuation<? super FlowKt__ReduceKt$reduce$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f71629b = obj;
        this.f71630c |= Integer.MIN_VALUE;
        return h.A1(null, null, this);
    }
}
