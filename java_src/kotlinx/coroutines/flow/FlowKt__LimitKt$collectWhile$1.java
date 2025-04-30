package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Limit.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt", f = "Limit.kt", i = {0}, l = {138}, m = "collectWhile", n = {"collector"}, s = {"L$0"})
/* loaded from: classes5.dex */
public final class FlowKt__LimitKt$collectWhile$1<T> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71511a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f71512b;

    /* renamed from: c  reason: collision with root package name */
    int f71513c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__LimitKt$collectWhile$1(Continuation<? super FlowKt__LimitKt$collectWhile$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f71512b = obj;
        this.f71513c |= Integer.MIN_VALUE;
        return FlowKt__LimitKt.b(null, null, this);
    }
}
