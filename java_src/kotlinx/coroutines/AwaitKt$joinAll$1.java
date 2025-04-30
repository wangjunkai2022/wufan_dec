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
@DebugMetadata(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", i = {}, l = {54}, m = "joinAll", n = {}, s = {})
/* loaded from: classes5.dex */
public final class AwaitKt$joinAll$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70700a;

    /* renamed from: b  reason: collision with root package name */
    int f70701b;

    /* renamed from: c  reason: collision with root package name */
    int f70702c;

    /* renamed from: d  reason: collision with root package name */
    /* synthetic */ Object f70703d;

    /* renamed from: e  reason: collision with root package name */
    int f70704e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AwaitKt$joinAll$1(Continuation<? super AwaitKt$joinAll$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f70703d = obj;
        this.f70704e |= Integer.MIN_VALUE;
        return AwaitKt.d(null, this);
    }
}
