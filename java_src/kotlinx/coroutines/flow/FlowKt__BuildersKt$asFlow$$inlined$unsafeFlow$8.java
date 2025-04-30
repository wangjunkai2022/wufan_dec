package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8 implements f<Long> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long[] f71268a;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8", f = "Builders.kt", i = {0}, l = {115}, m = "collect", n = {"$this$asFlow_u24lambda_u2d15"}, s = {"L$0"})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f71269a;

        /* renamed from: b  reason: collision with root package name */
        int f71270b;

        /* renamed from: d  reason: collision with root package name */
        Object f71272d;

        /* renamed from: e  reason: collision with root package name */
        Object f71273e;

        /* renamed from: f  reason: collision with root package name */
        int f71274f;

        /* renamed from: g  reason: collision with root package name */
        int f71275g;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f71269a = obj;
            this.f71270b |= Integer.MIN_VALUE;
            return FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8.this.e(null, this);
        }
    }

    public FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8(long[] jArr) {
        this.f71268a = jArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0066 -> B:19:0x0069). Please submit an issue!!! */
    @Override // kotlinx.coroutines.flow.f
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object e(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.g<? super java.lang.Long> r8, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1 r0 = (kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8.AnonymousClass1) r0
            int r1 = r0.f71270b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71270b = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1 r0 = new kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f71269a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71270b
            r3 = 1
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            int r8 = r0.f71275g
            int r2 = r0.f71274f
            java.lang.Object r4 = r0.f71273e
            long[] r4 = (long[]) r4
            java.lang.Object r5 = r0.f71272d
            kotlinx.coroutines.flow.g r5 = (kotlinx.coroutines.flow.g) r5
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r5
            goto L69
        L36:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3e:
            kotlin.ResultKt.throwOnFailure(r9)
            long[] r9 = r7.f71268a
            int r2 = r9.length
            r4 = 0
            r4 = r9
            r9 = r8
            r8 = 0
        L48:
            if (r8 >= r2) goto L6b
            r5 = r4[r8]
            java.lang.Long r5 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r5)
            long r5 = r5.longValue()
            java.lang.Long r5 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r5)
            r0.f71272d = r9
            r0.f71273e = r4
            r0.f71274f = r2
            r0.f71275g = r8
            r0.f71270b = r3
            java.lang.Object r5 = r9.emit(r5, r0)
            if (r5 != r1) goto L69
            return r1
        L69:
            int r8 = r8 + r3
            goto L48
        L6b:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8.e(kotlinx.coroutines.flow.g, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
