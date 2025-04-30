package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1<R> implements f<R> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f[] f71825a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Function2 f71826b;

    public FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1(f[] fVarArr, Function2 function2) {
        this.f71825a = fVarArr;
        this.f71826b = function2;
    }

    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public Object e(@NotNull g<? super R> gVar, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        f[] fVarArr = this.f71825a;
        Function0 a4 = FlowKt__ZipKt.a();
        Intrinsics.needClassReification();
        Object a5 = CombineKt.a(gVar, fVarArr, a4, new FlowKt__ZipKt$combineUnsafe$1$1(this.f71826b, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return a5 == coroutine_suspended ? a5 : Unit.INSTANCE;
    }

    @Nullable
    public Object g(@NotNull g gVar, @NotNull Continuation continuation) {
        InlineMarker.mark(4);
        new ContinuationImpl(continuation) { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1.1

            /* renamed from: a  reason: collision with root package name */
            /* synthetic */ Object f71827a;

            /* renamed from: b  reason: collision with root package name */
            int f71828b;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f71827a = obj;
                this.f71828b |= Integer.MIN_VALUE;
                return FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1.this.e(null, this);
            }
        };
        InlineMarker.mark(5);
        f[] fVarArr = this.f71825a;
        Function0 a4 = FlowKt__ZipKt.a();
        Intrinsics.needClassReification();
        FlowKt__ZipKt$combineUnsafe$1$1 flowKt__ZipKt$combineUnsafe$1$1 = new FlowKt__ZipKt$combineUnsafe$1$1(this.f71826b, null);
        InlineMarker.mark(0);
        CombineKt.a(gVar, fVarArr, a4, flowKt__ZipKt$combineUnsafe$1$1, continuation);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
