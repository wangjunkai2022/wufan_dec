package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Collect.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class DistinctFlowImpl$collect$$inlined$collect$1<T> implements g<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ DistinctFlowImpl f71217a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef f71218b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ g f71219c;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.DistinctFlowImpl$collect$$inlined$collect$1", f = "Distinct.kt", i = {}, l = {139}, m = "emit", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.DistinctFlowImpl$collect$$inlined$collect$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f71220a;

        /* renamed from: b  reason: collision with root package name */
        int f71221b;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f71220a = obj;
            this.f71221b |= Integer.MIN_VALUE;
            return DistinctFlowImpl$collect$$inlined$collect$1.this.emit(null, this);
        }
    }

    public DistinctFlowImpl$collect$$inlined$collect$1(DistinctFlowImpl distinctFlowImpl, Ref.ObjectRef objectRef, g gVar) {
        this.f71217a = distinctFlowImpl;
        this.f71218b = objectRef;
        this.f71219c = gVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // kotlinx.coroutines.flow.g
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(T r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.DistinctFlowImpl$collect$$inlined$collect$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.DistinctFlowImpl$collect$$inlined$collect$1$1 r0 = (kotlinx.coroutines.flow.DistinctFlowImpl$collect$$inlined$collect$1.AnonymousClass1) r0
            int r1 = r0.f71221b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71221b = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.DistinctFlowImpl$collect$$inlined$collect$1$1 r0 = new kotlinx.coroutines.flow.DistinctFlowImpl$collect$$inlined$collect$1$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f71220a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71221b
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L63
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.flow.DistinctFlowImpl r7 = r5.f71217a
            kotlin.jvm.functions.Function1<T, java.lang.Object> r7 = r7.f71215b
            java.lang.Object r7 = r7.invoke(r6)
            kotlin.jvm.internal.Ref$ObjectRef r2 = r5.f71218b
            T r2 = r2.element
            kotlinx.coroutines.internal.i0 r4 = kotlinx.coroutines.flow.internal.m.f72084a
            if (r2 == r4) goto L54
            kotlinx.coroutines.flow.DistinctFlowImpl r4 = r5.f71217a
            kotlin.jvm.functions.Function2<java.lang.Object, java.lang.Object, java.lang.Boolean> r4 = r4.f71216c
            java.lang.Object r2 = r4.invoke(r2, r7)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 != 0) goto L63
        L54:
            kotlin.jvm.internal.Ref$ObjectRef r2 = r5.f71218b
            r2.element = r7
            kotlinx.coroutines.flow.g r7 = r5.f71219c
            r0.f71221b = r3
            java.lang.Object r6 = r7.emit(r6, r0)
            if (r6 != r1) goto L63
            return r1
        L63:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.DistinctFlowImpl$collect$$inlined$collect$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
