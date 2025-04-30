package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Await.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", i = {}, l = {66}, m = "joinAll", n = {}, s = {})
/* loaded from: classes5.dex */
public final class AwaitKt$joinAll$3 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70705a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f70706b;

    /* renamed from: c  reason: collision with root package name */
    int f70707c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AwaitKt$joinAll$3(Continuation<? super AwaitKt$joinAll$3> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f70706b = obj;
        this.f70707c |= Integer.MIN_VALUE;
        return AwaitKt.c(null, this);
    }
}
