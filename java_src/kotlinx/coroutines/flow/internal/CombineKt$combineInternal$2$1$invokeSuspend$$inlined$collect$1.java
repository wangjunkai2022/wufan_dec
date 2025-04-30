package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Collect.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1<T> implements kotlinx.coroutines.flow.g<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.channels.k f71996a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f71997b;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1", f = "Combine.kt", i = {}, l = {135, 136}, m = "emit", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f71998a;

        /* renamed from: b  reason: collision with root package name */
        int f71999b;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f71998a = obj;
            this.f71999b |= Integer.MIN_VALUE;
            return CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1.this.emit(null, this);
        }
    }

    public CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1(kotlinx.coroutines.channels.k kVar, int i2) {
        this.f71996a = kVar;
        this.f71997b = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0055 A[RETURN] */
    @Override // kotlinx.coroutines.flow.g
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(T r7, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1 r0 = (kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1.AnonymousClass1) r0
            int r1 = r0.f71999b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71999b = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1 r0 = new kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f71998a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71999b
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r8)
            goto L56
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L34:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4d
        L38:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.k r8 = r6.f71996a
            kotlin.collections.IndexedValue r2 = new kotlin.collections.IndexedValue
            int r5 = r6.f71997b
            r2.<init>(r5, r7)
            r0.f71999b = r4
            java.lang.Object r7 = r8.R(r2, r0)
            if (r7 != r1) goto L4d
            return r1
        L4d:
            r0.f71999b = r3
            java.lang.Object r7 = kotlinx.coroutines.p3.a(r0)
            if (r7 != r1) goto L56
            return r1
        L56:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
