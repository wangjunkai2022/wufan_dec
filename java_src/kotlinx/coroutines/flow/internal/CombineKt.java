package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.u0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Combine.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0092\u0001\u0010\u000e\u001a\u00020\n\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0014\u0010\u0005\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u00032\u0016\u0010\u0007\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0018\u00010\u00030\u000629\u0010\r\u001a5\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\b¢\u0006\u0002\b\fH\u0081@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001ap\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00020\u0004\"\u0004\b\u0000\u0010\u0010\"\u0004\b\u0001\u0010\u0011\"\u0004\b\u0002\u0010\u00002\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042(\u0010\r\u001a$\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\bH\u0000ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015*\u001c\b\u0002\u0010\u0017\"\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00162\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/g;", "", "Lkotlinx/coroutines/flow/f;", "flows", "Lkotlin/Function0;", "arrayFactory", "Lkotlin/Function3;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "transform", "a", "(Lkotlinx/coroutines/flow/g;[Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "T1", "T2", "flow", "flow2", "b", "(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/f;", "Lkotlin/collections/IndexedValue;", "Update", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class CombineKt {

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/CombineKt$a", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a<R> implements kotlinx.coroutines.flow.f<R> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.f f72001a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.f f72002b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function3 f72003c;

        public a(kotlinx.coroutines.flow.f fVar, kotlinx.coroutines.flow.f fVar2, Function3 function3) {
            this.f72001a = fVar;
            this.f72002b = fVar2;
            this.f72003c = function3;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public Object e(@NotNull kotlinx.coroutines.flow.g<? super R> gVar, @NotNull Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object g4 = u0.g(new CombineKt$zipImpl$1$1(gVar, this.f72001a, this.f72002b, this.f72003c, null), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return g4 == coroutine_suspended ? g4 : Unit.INSTANCE;
        }
    }

    @PublishedApi
    @Nullable
    public static final <R, T> Object a(@NotNull kotlinx.coroutines.flow.g<? super R> gVar, @NotNull kotlinx.coroutines.flow.f<? extends T>[] fVarArr, @NotNull Function0<T[]> function0, @NotNull Function3<? super kotlinx.coroutines.flow.g<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object c4 = FlowCoroutineKt.c(new CombineKt$combineInternal$2(fVarArr, function0, function3, gVar, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return c4 == coroutine_suspended ? c4 : Unit.INSTANCE;
    }

    @NotNull
    public static final <T1, T2, R> kotlinx.coroutines.flow.f<R> b(@NotNull kotlinx.coroutines.flow.f<? extends T1> fVar, @NotNull kotlinx.coroutines.flow.f<? extends T2> fVar2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return new a(fVar2, fVar, function3);
    }
}
