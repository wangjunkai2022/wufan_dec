package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Share.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002BG\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012-\u0010\u0015\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000f¢\u0006\u0002\b\u0012ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b8\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\f\u0010\rR@\u0010\u0015\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000f¢\u0006\u0002\b\u00128\u0002@\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/flow/y;", "T", "Lkotlinx/coroutines/flow/o;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "Lkotlinx/coroutines/flow/o;", "sharedFlow", "", ai.aD, "()Ljava/util/List;", "replayCache", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "b", "Lkotlin/jvm/functions/Function2;", "action", "<init>", "(Lkotlinx/coroutines/flow/o;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class y<T> implements o<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final o<T> f72109a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Function2<g<? super T>, Continuation<? super Unit>, Object> f72110b;

    /* JADX WARN: Multi-variable type inference failed */
    public y(@NotNull o<? extends T> oVar, @NotNull Function2<? super g<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.f72109a = oVar;
        this.f72110b = function2;
    }

    @Override // kotlinx.coroutines.flow.o
    @NotNull
    public List<T> c() {
        return this.f72109a.c();
    }

    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public Object e(@NotNull g<? super T> gVar, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object e4 = this.f72109a.e(new SubscribedFlowCollector(gVar, this.f72110b), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
    }
}
