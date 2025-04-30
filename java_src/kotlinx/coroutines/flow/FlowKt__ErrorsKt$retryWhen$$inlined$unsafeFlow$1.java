package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function4;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1<T> implements f<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f71440a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Function4 f71441b;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1", f = "Errors.kt", i = {0, 0, 0, 0, 1, 1, 1, 1}, l = {117, 119}, m = "collect", n = {"this", "$this$retryWhen_u24lambda_u2d3", "attempt", "shallRetry", "this", "$this$retryWhen_u24lambda_u2d3", "cause", "attempt"}, s = {"L$0", "L$1", "J$0", "I$0", "L$0", "L$1", "L$2", "J$0"})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f71442a;

        /* renamed from: b  reason: collision with root package name */
        int f71443b;

        /* renamed from: d  reason: collision with root package name */
        Object f71445d;

        /* renamed from: e  reason: collision with root package name */
        Object f71446e;

        /* renamed from: f  reason: collision with root package name */
        Object f71447f;

        /* renamed from: g  reason: collision with root package name */
        long f71448g;

        /* renamed from: h  reason: collision with root package name */
        int f71449h;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f71442a = obj;
            this.f71443b |= Integer.MIN_VALUE;
            return FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.this.e(null, this);
        }
    }

    public FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(f fVar, Function4 function4) {
        this.f71440a = fVar;
        this.f71441b = function4;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00af  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0097 -> B:27:0x009a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a9 -> B:32:0x00aa). Please submit an issue!!! */
    @Override // kotlinx.coroutines.flow.f
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object e(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.g<? super T> r12, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            r11 = this;
            boolean r0 = r13 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r13
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r1 = r0.f71443b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71443b = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.f71442a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71443b
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L52
            if (r2 == r4) goto L42
            if (r2 != r3) goto L3a
            long r5 = r0.f71448g
            java.lang.Object r12 = r0.f71447f
            java.lang.Throwable r12 = (java.lang.Throwable) r12
            java.lang.Object r2 = r0.f71446e
            kotlinx.coroutines.flow.g r2 = (kotlinx.coroutines.flow.g) r2
            java.lang.Object r7 = r0.f71445d
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 r7 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1) r7
            kotlin.ResultKt.throwOnFailure(r13)
            goto L9a
        L3a:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L42:
            int r12 = r0.f71449h
            long r5 = r0.f71448g
            java.lang.Object r2 = r0.f71446e
            kotlinx.coroutines.flow.g r2 = (kotlinx.coroutines.flow.g) r2
            java.lang.Object r7 = r0.f71445d
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 r7 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1) r7
            kotlin.ResultKt.throwOnFailure(r13)
            goto L74
        L52:
            kotlin.ResultKt.throwOnFailure(r13)
            r5 = 0
            r13 = r11
        L58:
            r2 = 0
            kotlinx.coroutines.flow.f r7 = r13.f71440a
            r0.f71445d = r13
            r0.f71446e = r12
            r8 = 0
            r0.f71447f = r8
            r0.f71448g = r5
            r0.f71449h = r2
            r0.f71443b = r4
            java.lang.Object r7 = kotlinx.coroutines.flow.h.x(r7, r12, r0)
            if (r7 != r1) goto L6f
            return r1
        L6f:
            r2 = r12
            r12 = 0
            r10 = r7
            r7 = r13
            r13 = r10
        L74:
            java.lang.Throwable r13 = (java.lang.Throwable) r13
            if (r13 == 0) goto La9
            kotlin.jvm.functions.Function4 r12 = r7.f71441b
            java.lang.Long r8 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r5)
            r0.f71445d = r7
            r0.f71446e = r2
            r0.f71447f = r13
            r0.f71448g = r5
            r0.f71443b = r3
            r9 = 6
            kotlin.jvm.internal.InlineMarker.mark(r9)
            java.lang.Object r12 = r12.invoke(r2, r13, r8, r0)
            r8 = 7
            kotlin.jvm.internal.InlineMarker.mark(r8)
            if (r12 != r1) goto L97
            return r1
        L97:
            r10 = r13
            r13 = r12
            r12 = r10
        L9a:
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            if (r13 == 0) goto La8
            r12 = 1
            long r5 = r5 + r12
            r13 = r7
            r12 = 1
            goto Laa
        La8:
            throw r12
        La9:
            r13 = r7
        Laa:
            if (r12 != 0) goto Laf
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        Laf:
            r12 = r2
            goto L58
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.e(kotlinx.coroutines.flow.g, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
