package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Collect.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$lambda-4$$inlined$collect$1  reason: invalid class name */
/* loaded from: classes5.dex */
public final class FlowKt__LimitKt$dropWhile$lambda4$$inlined$collect$1<T> implements g<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Ref.BooleanRef f71471a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ g f71472b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function2 f71473c;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$lambda-4$$inlined$collect$1", f = "Limit.kt", i = {1, 1}, l = {136, 137, 139}, m = "emit", n = {"this", "value"}, s = {"L$0", "L$1"})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$lambda-4$$inlined$collect$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f71474a;

        /* renamed from: b  reason: collision with root package name */
        int f71475b;

        /* renamed from: d  reason: collision with root package name */
        Object f71477d;

        /* renamed from: e  reason: collision with root package name */
        Object f71478e;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f71474a = obj;
            this.f71475b |= Integer.MIN_VALUE;
            return FlowKt__LimitKt$dropWhile$lambda4$$inlined$collect$1.this.emit(null, this);
        }
    }

    public FlowKt__LimitKt$dropWhile$lambda4$$inlined$collect$1(Ref.BooleanRef booleanRef, g gVar, Function2 function2) {
        this.f71471a = booleanRef;
        this.f71472b = gVar;
        this.f71473c = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0079  */
    @Override // kotlinx.coroutines.flow.g
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(T r7, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$lambda4$$inlined$collect$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$lambda-4$$inlined$collect$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$lambda4$$inlined$collect$1.AnonymousClass1) r0
            int r1 = r0.f71475b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71475b = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$lambda-4$$inlined$collect$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$lambda-4$$inlined$collect$1$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f71474a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71475b
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L45
            if (r2 == r5) goto L41
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r8)
            goto L8d
        L2f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L37:
            java.lang.Object r7 = r0.f71478e
            java.lang.Object r2 = r0.f71477d
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$lambda-4$$inlined$collect$1 r2 = (kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$lambda4$$inlined$collect$1) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L71
        L41:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L8d
        L45:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.jvm.internal.Ref$BooleanRef r8 = r6.f71471a
            boolean r8 = r8.element
            if (r8 == 0) goto L59
            kotlinx.coroutines.flow.g r8 = r6.f71472b
            r0.f71475b = r5
            java.lang.Object r7 = r8.emit(r7, r0)
            if (r7 != r1) goto L8d
            return r1
        L59:
            kotlin.jvm.functions.Function2 r8 = r6.f71473c
            r0.f71477d = r6
            r0.f71478e = r7
            r0.f71475b = r4
            r2 = 6
            kotlin.jvm.internal.InlineMarker.mark(r2)
            java.lang.Object r8 = r8.invoke(r7, r0)
            r2 = 7
            kotlin.jvm.internal.InlineMarker.mark(r2)
            if (r8 != r1) goto L70
            return r1
        L70:
            r2 = r6
        L71:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L8d
            kotlin.jvm.internal.Ref$BooleanRef r8 = r2.f71471a
            r8.element = r5
            kotlinx.coroutines.flow.g r8 = r2.f71472b
            r2 = 0
            r0.f71477d = r2
            r0.f71478e = r2
            r0.f71475b = r3
            java.lang.Object r7 = r8.emit(r7, r0)
            if (r7 != r1) goto L8d
            return r1
        L8d:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$lambda4$$inlined$collect$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
