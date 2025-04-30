package kotlinx.coroutines.flow.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChannelFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R5\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00078\u0002@\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;", "T", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", ai.aD, "Lkotlin/jvm/functions/Function2;", "emitRef", "Lkotlin/coroutines/CoroutineContext;", "a", "Lkotlin/coroutines/CoroutineContext;", "emitContext", "b", "Ljava/lang/Object;", "countOrElement", "downstream", "<init>", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class UndispatchedContextCollector<T> implements kotlinx.coroutines.flow.g<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CoroutineContext f72067a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Object f72068b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Function2<T, Continuation<? super Unit>, Object> f72069c;

    public UndispatchedContextCollector(@NotNull kotlinx.coroutines.flow.g<? super T> gVar, @NotNull CoroutineContext coroutineContext) {
        this.f72067a = coroutineContext;
        this.f72068b = ThreadContextKt.b(coroutineContext);
        this.f72069c = new UndispatchedContextCollector$emitRef$1(gVar, null);
    }

    @Override // kotlinx.coroutines.flow.g
    @Nullable
    public Object emit(T t3, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object c4 = d.c(this.f72067a, t3, this.f72068b, this.f72069c, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return c4 == coroutine_suspended ? c4 : Unit.INSTANCE;
    }
}
