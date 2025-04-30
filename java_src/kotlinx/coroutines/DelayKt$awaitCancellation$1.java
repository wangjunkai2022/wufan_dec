package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Delay.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.DelayKt", f = "Delay.kt", i = {}, l = {155}, m = "awaitCancellation", n = {}, s = {})
/* loaded from: classes5.dex */
public final class DelayKt$awaitCancellation$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    /* synthetic */ Object f70710a;

    /* renamed from: b  reason: collision with root package name */
    int f70711b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DelayKt$awaitCancellation$1(Continuation<? super DelayKt$awaitCancellation$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f70710a = obj;
        this.f70711b |= Integer.MIN_VALUE;
        return DelayKt.a(this);
    }
}
