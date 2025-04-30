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
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "singleOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes5.dex */
public final class FlowKt__ReduceKt$singleOrNull$1<T> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71634a;

    /* renamed from: b  reason: collision with root package name */
    Object f71635b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f71636c;

    /* renamed from: d  reason: collision with root package name */
    int f71637d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ReduceKt$singleOrNull$1(Continuation<? super FlowKt__ReduceKt$singleOrNull$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f71636c = obj;
        this.f71637d |= Integer.MIN_VALUE;
        return h.S1(null, this);
    }
}
