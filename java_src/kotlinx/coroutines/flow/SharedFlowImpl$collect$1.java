package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SharedFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.SharedFlowImpl", f = "SharedFlow.kt", i = {0, 0, 0}, l = {341, 348, 351}, m = "collect", n = {"this", "collector", "slot"}, s = {"L$0", "L$1", "L$2"})
/* loaded from: classes5.dex */
public final class SharedFlowImpl$collect$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71891a;

    /* renamed from: b  reason: collision with root package name */
    Object f71892b;

    /* renamed from: c  reason: collision with root package name */
    Object f71893c;

    /* renamed from: d  reason: collision with root package name */
    Object f71894d;

    /* renamed from: e  reason: collision with root package name */
    /* synthetic */ Object f71895e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ SharedFlowImpl<T> f71896f;

    /* renamed from: g  reason: collision with root package name */
    int f71897g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedFlowImpl$collect$1(SharedFlowImpl<T> sharedFlowImpl, Continuation<? super SharedFlowImpl$collect$1> continuation) {
        super(continuation);
        this.f71896f = sharedFlowImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f71895e = obj;
        this.f71897g |= Integer.MIN_VALUE;
        return this.f71896f.e(null, this);
    }
}
