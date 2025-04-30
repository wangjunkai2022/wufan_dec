package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.CallbackFlowBuilder", f = "Builders.kt", i = {0}, l = {355}, m = "collectTo", n = {"scope"}, s = {"L$0"})
/* loaded from: classes5.dex */
public final class CallbackFlowBuilder$collectTo$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71210a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f71211b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ CallbackFlowBuilder<T> f71212c;

    /* renamed from: d  reason: collision with root package name */
    int f71213d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallbackFlowBuilder$collectTo$1(CallbackFlowBuilder<T> callbackFlowBuilder, Continuation<? super CallbackFlowBuilder$collectTo$1> continuation) {
        super(continuation);
        this.f71212c = callbackFlowBuilder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f71211b = obj;
        this.f71213d |= Integer.MIN_VALUE;
        return this.f71212c.i(null, this);
    }
}
