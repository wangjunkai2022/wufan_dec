package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Distinct.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002Bg\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\t0\b\u0012:\u0010\u0015\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\r¢\u0006\u0004\b\u0019\u0010\u001aJ!\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\f\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\t0\b8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bRJ\u0010\u0015\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\r8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lkotlinx/coroutines/flow/DistinctFlowImpl;", "T", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function1;", "", "b", "Lkotlin/jvm/functions/Function1;", "keySelector", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "old", "new", "", ai.aD, "Lkotlin/jvm/functions/Function2;", "areEquivalent", "a", "Lkotlinx/coroutines/flow/f;", "upstream", "<init>", "(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class DistinctFlowImpl<T> implements f<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final f<T> f71214a;
    @JvmField
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final Function1<T, Object> f71215b;
    @JvmField
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final Function2<Object, Object, Boolean> f71216c;

    /* JADX WARN: Multi-variable type inference failed */
    public DistinctFlowImpl(@NotNull f<? extends T> fVar, @NotNull Function1<? super T, ? extends Object> function1, @NotNull Function2<Object, Object, Boolean> function2) {
        this.f71214a = fVar;
        this.f71215b = function1;
        this.f71216c = function2;
    }

    @Override // kotlinx.coroutines.flow.f
    @InternalCoroutinesApi
    @Nullable
    public Object e(@NotNull g<? super T> gVar, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = (T) kotlinx.coroutines.flow.internal.m.f72084a;
        Object e4 = this.f71214a.e(new DistinctFlowImpl$collect$$inlined$collect$1(this, objectRef, gVar), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
    }
}
