package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Limit.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1", f = "Limit.kt", i = {0}, l = {132}, m = "emit", n = {"this"}, s = {"L$0"})
/* loaded from: classes5.dex */
public final class FlowKt__LimitKt$collectWhile$collector$1$emit$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71515a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f71516b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ FlowKt__LimitKt$collectWhile$collector$1 f71517c;

    /* renamed from: d  reason: collision with root package name */
    int f71518d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__LimitKt$collectWhile$collector$1$emit$1(FlowKt__LimitKt$collectWhile$collector$1 flowKt__LimitKt$collectWhile$collector$1, Continuation<? super FlowKt__LimitKt$collectWhile$collector$1$emit$1> continuation) {
        super(continuation);
        this.f71517c = flowKt__LimitKt$collectWhile$collector$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f71516b = obj;
        this.f71518d |= Integer.MIN_VALUE;
        return this.f71517c.emit(null, this);
    }
}
