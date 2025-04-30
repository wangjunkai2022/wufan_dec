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
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "first", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes5.dex */
public final class FlowKt__ReduceKt$first$1<T> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71602a;

    /* renamed from: b  reason: collision with root package name */
    Object f71603b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f71604c;

    /* renamed from: d  reason: collision with root package name */
    int f71605d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ReduceKt$first$1(Continuation<? super FlowKt__ReduceKt$first$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f71604c = obj;
        this.f71605d |= Integer.MIN_VALUE;
        return h.v0(null, this);
    }
}
