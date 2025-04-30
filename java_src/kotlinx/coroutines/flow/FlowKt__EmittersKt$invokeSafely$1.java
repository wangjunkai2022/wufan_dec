package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Emitters.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt", f = "Emitters.kt", i = {0}, l = {216}, m = "invokeSafely$FlowKt__EmittersKt", n = {"cause"}, s = {"L$0"})
/* loaded from: classes5.dex */
public final class FlowKt__EmittersKt$invokeSafely$1<T> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71420a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f71421b;

    /* renamed from: c  reason: collision with root package name */
    int f71422c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__EmittersKt$invokeSafely$1(Continuation<? super FlowKt__EmittersKt$invokeSafely$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object c4;
        this.f71421b = obj;
        this.f71422c |= Integer.MIN_VALUE;
        c4 = FlowKt__EmittersKt.c(null, null, null, this);
        return c4;
    }
}
