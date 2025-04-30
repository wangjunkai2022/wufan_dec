package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Limit.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a$\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\"\u0010\t\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a$\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002\u001a+\u0010\u0010\u001a\u00020\u000f\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u000e\u001a\u00028\u0000H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001aJ\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\"\u0010\t\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u000b\u001at\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0013*\b\u0012\u0004\u0012\u00028\u00000\u00012D\b\u0001\u0010\u0018\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\r\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0014¢\u0006\u0002\b\u0017H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001aX\u0010\u001b\u001a\u00020\u000f\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000123\b\u0004\u0010\t\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0080Hø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"T", "Lkotlinx/coroutines/flow/f;", "", "count", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "predicate", "e", "(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/f;", com.sdk.a.g.f56552a, "Lkotlinx/coroutines/flow/g;", "value", "", "f", "(Lkotlinx/coroutines/flow/g;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "h", "R", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "Lkotlin/ExtensionFunctionType;", "transform", ai.aA, "(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/f;", "b", "(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes5.dex */
public final /* synthetic */ class FlowKt__LimitKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$a", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a<T> implements f<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f71504a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f71505b;

        public a(f fVar, int i2) {
            this.f71504a = fVar;
            this.f71505b = i2;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public Object e(@NotNull g<? super T> gVar, @NotNull Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object e4 = this.f71504a.e(new b(new Ref.IntRef(), this.f71505b, gVar), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Collect.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$b", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b<T> implements g<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f71506a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f71507b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ g f71508c;

        public b(Ref.IntRef intRef, int i2, g gVar) {
            this.f71506a = intRef;
            this.f71507b = i2;
            this.f71508c = gVar;
        }

        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object emit(T t3, @NotNull Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Ref.IntRef intRef = this.f71506a;
            int i2 = intRef.element;
            if (i2 >= this.f71507b) {
                Object emit = this.f71508c.emit(t3, continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (emit == coroutine_suspended) {
                    return emit;
                }
            } else {
                intRef.element = i2 + 1;
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$c", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class c<T> implements f<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f71509a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function2 f71510b;

        public c(f fVar, Function2 function2) {
            this.f71509a = fVar;
            this.f71510b = function2;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public Object e(@NotNull g<? super T> gVar, @NotNull Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object e4 = this.f71509a.e(new FlowKt__LimitKt$dropWhile$lambda4$$inlined$collect$1(new Ref.BooleanRef(), gVar, this.f71510b), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Collect.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$d", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class d<T> implements g<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f71519a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f71520b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ g f71521c;

        public d(Ref.IntRef intRef, int i2, g gVar) {
            this.f71519a = intRef;
            this.f71520b = i2;
            this.f71521c = gVar;
        }

        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object emit(T t3, @NotNull Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object coroutine_suspended2;
            Ref.IntRef intRef = this.f71519a;
            int i2 = intRef.element + 1;
            intRef.element = i2;
            if (i2 >= this.f71520b) {
                Object f4 = FlowKt__LimitKt.f(this.f71521c, t3, continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (f4 == coroutine_suspended) {
                    return f4;
                }
            } else {
                Object emit = this.f71521c.emit(t3, continuation);
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (emit == coroutine_suspended2) {
                    return emit;
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object b(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.f<? extends T> r4, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super T, ? super kotlin.coroutines.Continuation<? super java.lang.Boolean>, ? extends java.lang.Object> r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$1) r0
            int r1 = r0.f71513c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71513c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f71512b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71513c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r4 = r0.f71511a
            kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1 r4 = (kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1) r4
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L2d
            goto L4f
        L2d:
            r5 = move-exception
            goto L4c
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1 r6 = new kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1
            r6.<init>(r5)
            r0.f71511a = r6     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4a
            r0.f71513c = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4a
            java.lang.Object r4 = r4.e(r6, r0)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4a
            if (r4 != r1) goto L4f
            return r1
        L4a:
            r5 = move-exception
            r4 = r6
        L4c:
            kotlinx.coroutines.flow.internal.h.b(r5, r4)
        L4f:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt.b(kotlinx.coroutines.flow.f, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final <T> Object c(f<? extends T> fVar, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        FlowKt__LimitKt$collectWhile$collector$1 flowKt__LimitKt$collectWhile$collector$1 = new FlowKt__LimitKt$collectWhile$collector$1(function2);
        try {
            InlineMarker.mark(0);
            fVar.e(flowKt__LimitKt$collectWhile$collector$1, continuation);
            InlineMarker.mark(1);
        } catch (AbortFlowException e4) {
            kotlinx.coroutines.flow.internal.h.b(e4, flowKt__LimitKt$collectWhile$collector$1);
        }
        return Unit.INSTANCE;
    }

    @NotNull
    public static final <T> f<T> d(@NotNull f<? extends T> fVar, int i2) {
        if (i2 >= 0) {
            return new a(fVar, i2);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Drop count should be non-negative, but had ", Integer.valueOf(i2)).toString());
    }

    @NotNull
    public static final <T> f<T> e(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new c(fVar, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object f(kotlinx.coroutines.flow.g<? super T> r4, T r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1) r0
            int r1 = r0.f71524c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71524c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f71523b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71524c
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 == r3) goto L2d
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L2d:
            java.lang.Object r4 = r0.f71522a
            kotlinx.coroutines.flow.g r4 = (kotlinx.coroutines.flow.g) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L43
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.f71522a = r4
            r0.f71524c = r3
            java.lang.Object r5 = r4.emit(r5, r0)
            if (r5 != r1) goto L43
            return r1
        L43:
            kotlinx.coroutines.flow.internal.AbortFlowException r5 = new kotlinx.coroutines.flow.internal.AbortFlowException
            r5.<init>(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt.f(kotlinx.coroutines.flow.g, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @NotNull
    public static final <T> f<T> g(@NotNull f<? extends T> fVar, int i2) {
        if (i2 > 0) {
            return new FlowKt__LimitKt$take$$inlined$unsafeFlow$1(fVar, i2);
        }
        throw new IllegalArgumentException(("Requested element count " + i2 + " should be positive").toString());
    }

    @NotNull
    public static final <T> f<T> h(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(fVar, function2);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> f<R> i(@NotNull f<? extends T> fVar, @BuilderInference @NotNull Function3<? super g<? super R>, ? super T, ? super Continuation<? super Boolean>, ? extends Object> function3) {
        return h.K0(new FlowKt__LimitKt$transformWhile$1(fVar, function3, null));
    }
}
