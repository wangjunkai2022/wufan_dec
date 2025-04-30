package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DebugCoroutineInfoImpl.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl", f = "DebugCoroutineInfoImpl.kt", i = {}, l = {80}, m = "yieldFrames", n = {}, s = {})
/* loaded from: classes5.dex */
public final class DebugCoroutineInfoImpl$yieldFrames$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71140a;

    /* renamed from: b  reason: collision with root package name */
    Object f71141b;

    /* renamed from: c  reason: collision with root package name */
    Object f71142c;

    /* renamed from: d  reason: collision with root package name */
    /* synthetic */ Object f71143d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ DebugCoroutineInfoImpl f71144e;

    /* renamed from: f  reason: collision with root package name */
    int f71145f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DebugCoroutineInfoImpl$yieldFrames$1(DebugCoroutineInfoImpl debugCoroutineInfoImpl, Continuation<? super DebugCoroutineInfoImpl$yieldFrames$1> continuation) {
        super(continuation);
        this.f71144e = debugCoroutineInfoImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object j4;
        this.f71143d = obj;
        this.f71145f |= Integer.MIN_VALUE;
        j4 = this.f71144e.j(null, null, this);
        return j4;
    }
}
