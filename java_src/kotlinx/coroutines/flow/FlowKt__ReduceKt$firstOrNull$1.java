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
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "firstOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes5.dex */
public final class FlowKt__ReduceKt$firstOrNull$1<T> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71611a;

    /* renamed from: b  reason: collision with root package name */
    Object f71612b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f71613c;

    /* renamed from: d  reason: collision with root package name */
    int f71614d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ReduceKt$firstOrNull$1(Continuation<? super FlowKt__ReduceKt$firstOrNull$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f71613c = obj;
        this.f71614d |= Integer.MIN_VALUE;
        return h.x0(null, this);
    }
}
