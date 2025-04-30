package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1<R> implements f<R> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Object f71727a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ f f71728b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function3 f71729c;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1", f = "Transform.kt", i = {0, 0, 0}, l = {114, 116}, m = "collect", n = {"this", "$this$runningFold_u24lambda_u2d10", "accumulator"}, s = {"L$0", "L$1", "L$2"})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f71730a;

        /* renamed from: b  reason: collision with root package name */
        int f71731b;

        /* renamed from: d  reason: collision with root package name */
        Object f71733d;

        /* renamed from: e  reason: collision with root package name */
        Object f71734e;

        /* renamed from: f  reason: collision with root package name */
        Object f71735f;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f71730a = obj;
            this.f71731b |= Integer.MIN_VALUE;
            return FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1.this.e(null, this);
        }
    }

    public FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1(Object obj, f fVar, Function3 function3) {
        this.f71727a = obj;
        this.f71728b = fVar;
        this.f71729c = function3;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007a A[RETURN] */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Object] */
    @Override // kotlinx.coroutines.flow.f
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object e(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.g<? super R> r7, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r1 = r0.f71731b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71731b = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f71730a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71731b
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L44
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r8)
            goto L7b
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L34:
            java.lang.Object r7 = r0.f71735f
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
            java.lang.Object r2 = r0.f71734e
            kotlinx.coroutines.flow.g r2 = (kotlinx.coroutines.flow.g) r2
            java.lang.Object r4 = r0.f71733d
            kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1 r4 = (kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1) r4
            kotlin.ResultKt.throwOnFailure(r8)
            goto L62
        L44:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.jvm.internal.Ref$ObjectRef r8 = new kotlin.jvm.internal.Ref$ObjectRef
            r8.<init>()
            java.lang.Object r2 = r6.f71727a
            r8.element = r2
            r0.f71733d = r6
            r0.f71734e = r7
            r0.f71735f = r8
            r0.f71731b = r4
            java.lang.Object r2 = r7.emit(r2, r0)
            if (r2 != r1) goto L5f
            return r1
        L5f:
            r4 = r6
            r2 = r7
            r7 = r8
        L62:
            kotlinx.coroutines.flow.f r8 = r4.f71728b
            kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$lambda-10$$inlined$collect$1 r5 = new kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$lambda-10$$inlined$collect$1
            kotlin.jvm.functions.Function3 r4 = r4.f71729c
            r5.<init>(r7, r4, r2)
            r7 = 0
            r0.f71733d = r7
            r0.f71734e = r7
            r0.f71735f = r7
            r0.f71731b = r3
            java.lang.Object r7 = r8.e(r5, r0)
            if (r7 != r1) goto L7b
            return r1
        L7b:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1.e(kotlinx.coroutines.flow.g, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
