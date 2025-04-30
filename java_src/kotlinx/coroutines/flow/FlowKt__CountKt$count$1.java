package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Count.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__CountKt", f = "Count.kt", i = {0}, l = {39}, m = "count", n = {ai.aA}, s = {"L$0"})
/* loaded from: classes5.dex */
public final class FlowKt__CountKt$count$1<T> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71327a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f71328b;

    /* renamed from: c  reason: collision with root package name */
    int f71329c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__CountKt$count$1(Continuation<? super FlowKt__CountKt$count$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f71328b = obj;
        this.f71329c |= Integer.MIN_VALUE;
        return h.a0(null, this);
    }
}
