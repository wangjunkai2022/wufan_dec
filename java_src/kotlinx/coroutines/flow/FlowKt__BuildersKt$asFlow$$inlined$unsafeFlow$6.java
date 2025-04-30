package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$6<T> implements f<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Object[] f71252a;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$6", f = "Builders.kt", i = {0}, l = {115}, m = "collect", n = {"$this$asFlow_u24lambda_u2d11"}, s = {"L$0"})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$6$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f71253a;

        /* renamed from: b  reason: collision with root package name */
        int f71254b;

        /* renamed from: d  reason: collision with root package name */
        Object f71256d;

        /* renamed from: e  reason: collision with root package name */
        Object f71257e;

        /* renamed from: f  reason: collision with root package name */
        int f71258f;

        /* renamed from: g  reason: collision with root package name */
        int f71259g;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f71253a = obj;
            this.f71254b |= Integer.MIN_VALUE;
            return FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$6.this.e(null, this);
        }
    }

    public FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$6(Object[] objArr) {
        this.f71252a = objArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x005a -> B:19:0x005d). Please submit an issue!!! */
    @Override // kotlinx.coroutines.flow.f
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object e(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.g<? super T> r7, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$6.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$6$1 r0 = (kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$6.AnonymousClass1) r0
            int r1 = r0.f71254b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71254b = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$6$1 r0 = new kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$6$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f71253a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71254b
            r3 = 1
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            int r7 = r0.f71259g
            int r2 = r0.f71258f
            java.lang.Object r4 = r0.f71257e
            java.lang.Object[] r4 = (java.lang.Object[]) r4
            java.lang.Object r5 = r0.f71256d
            kotlinx.coroutines.flow.g r5 = (kotlinx.coroutines.flow.g) r5
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r5
            goto L5d
        L36:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3e:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object[] r8 = r6.f71252a
            int r2 = r8.length
            r4 = 0
            r4 = r8
            r8 = r7
            r7 = 0
        L48:
            if (r7 >= r2) goto L5f
            r5 = r4[r7]
            r0.f71256d = r8
            r0.f71257e = r4
            r0.f71258f = r2
            r0.f71259g = r7
            r0.f71254b = r3
            java.lang.Object r5 = r8.emit(r5, r0)
            if (r5 != r1) goto L5d
            return r1
        L5d:
            int r7 = r7 + r3
            goto L48
        L5f:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$6.e(kotlinx.coroutines.flow.g, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
