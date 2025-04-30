package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1<T> implements f<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f71380a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Function3 f71381b;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", i = {0, 0, 1, 2}, l = {114, 121, 128}, m = "collect", n = {"this", "$this$onCompletion_u24lambda_u2d3", "e", "sc"}, s = {"L$0", "L$1", "L$0", "L$0"})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f71382a;

        /* renamed from: b  reason: collision with root package name */
        int f71383b;

        /* renamed from: d  reason: collision with root package name */
        Object f71385d;

        /* renamed from: e  reason: collision with root package name */
        Object f71386e;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f71382a = obj;
            this.f71383b |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.this.e(null, this);
        }
    }

    public FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(f fVar, Function3 function3) {
        this.f71380a = fVar;
        this.f71381b = function3;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0086 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    @Override // kotlinx.coroutines.flow.f
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object e(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.g<? super T> r8, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r1 = r0.f71383b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71383b = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f71382a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71383b
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L54
            if (r2 == r5) goto L46
            if (r2 == r4) goto L3e
            if (r2 != r3) goto L36
            java.lang.Object r8 = r0.f71385d
            kotlinx.coroutines.flow.internal.SafeCollector r8 = (kotlinx.coroutines.flow.internal.SafeCollector) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L34
            goto L88
        L34:
            r9 = move-exception
            goto L90
        L36:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3e:
            java.lang.Object r8 = r0.f71385d
            java.lang.Throwable r8 = (java.lang.Throwable) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto Laa
        L46:
            java.lang.Object r8 = r0.f71386e
            kotlinx.coroutines.flow.g r8 = (kotlinx.coroutines.flow.g) r8
            java.lang.Object r2 = r0.f71385d
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 r2 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1) r2
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L52
            goto L67
        L52:
            r8 = move-exception
            goto L96
        L54:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.flow.f r9 = r7.f71380a     // Catch: java.lang.Throwable -> L94
            r0.f71385d = r7     // Catch: java.lang.Throwable -> L94
            r0.f71386e = r8     // Catch: java.lang.Throwable -> L94
            r0.f71383b = r5     // Catch: java.lang.Throwable -> L94
            java.lang.Object r9 = r9.e(r8, r0)     // Catch: java.lang.Throwable -> L94
            if (r9 != r1) goto L66
            return r1
        L66:
            r2 = r7
        L67:
            kotlin.coroutines.CoroutineContext r9 = r0.getContext()
            kotlinx.coroutines.flow.internal.SafeCollector r4 = new kotlinx.coroutines.flow.internal.SafeCollector
            r4.<init>(r8, r9)
            kotlin.jvm.functions.Function3 r8 = r2.f71381b     // Catch: java.lang.Throwable -> L8e
            r0.f71385d = r4     // Catch: java.lang.Throwable -> L8e
            r0.f71386e = r6     // Catch: java.lang.Throwable -> L8e
            r0.f71383b = r3     // Catch: java.lang.Throwable -> L8e
            r9 = 6
            kotlin.jvm.internal.InlineMarker.mark(r9)     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r8 = r8.invoke(r4, r6, r0)     // Catch: java.lang.Throwable -> L8e
            r9 = 7
            kotlin.jvm.internal.InlineMarker.mark(r9)     // Catch: java.lang.Throwable -> L8e
            if (r8 != r1) goto L87
            return r1
        L87:
            r8 = r4
        L88:
            r8.releaseIntercepted()
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L8e:
            r9 = move-exception
            r8 = r4
        L90:
            r8.releaseIntercepted()
            throw r9
        L94:
            r8 = move-exception
            r2 = r7
        L96:
            kotlinx.coroutines.flow.z r9 = new kotlinx.coroutines.flow.z
            r9.<init>(r8)
            kotlin.jvm.functions.Function3 r2 = r2.f71381b
            r0.f71385d = r8
            r0.f71386e = r6
            r0.f71383b = r4
            java.lang.Object r9 = kotlinx.coroutines.flow.FlowKt__EmittersKt.a(r9, r2, r8, r0)
            if (r9 != r1) goto Laa
            return r1
        Laa:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.e(kotlinx.coroutines.flow.g, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
