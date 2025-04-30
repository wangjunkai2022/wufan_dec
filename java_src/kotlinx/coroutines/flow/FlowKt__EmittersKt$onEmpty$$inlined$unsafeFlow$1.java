package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1<T> implements f<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f71387a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Function2 f71388b;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1", f = "Emitters.kt", i = {0, 0, 0, 1}, l = {115, 122}, m = "collect", n = {"this", "$this$onEmpty_u24lambda_u2d5", "isEmpty", "collector"}, s = {"L$0", "L$1", "L$2", "L$0"})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f71389a;

        /* renamed from: b  reason: collision with root package name */
        int f71390b;

        /* renamed from: d  reason: collision with root package name */
        Object f71392d;

        /* renamed from: e  reason: collision with root package name */
        Object f71393e;

        /* renamed from: f  reason: collision with root package name */
        Object f71394f;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f71389a = obj;
            this.f71390b |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1.this.e(null, this);
        }
    }

    public FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1(f fVar, Function2 function2) {
        this.f71387a = fVar;
        this.f71388b = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
    @Override // kotlinx.coroutines.flow.f
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object e(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.g<? super T> r8, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r1 = r0.f71390b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f71390b = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f71389a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f71390b
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L4b
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r8 = r0.f71392d
            kotlinx.coroutines.flow.internal.SafeCollector r8 = (kotlinx.coroutines.flow.internal.SafeCollector) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L30
            goto L96
        L30:
            r9 = move-exception
            goto L9e
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3b:
            java.lang.Object r8 = r0.f71394f
            kotlin.jvm.internal.Ref$BooleanRef r8 = (kotlin.jvm.internal.Ref.BooleanRef) r8
            java.lang.Object r2 = r0.f71393e
            kotlinx.coroutines.flow.g r2 = (kotlinx.coroutines.flow.g) r2
            java.lang.Object r4 = r0.f71392d
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1 r4 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1) r4
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6e
        L4b:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.jvm.internal.Ref$BooleanRef r9 = new kotlin.jvm.internal.Ref$BooleanRef
            r9.<init>()
            r9.element = r4
            kotlinx.coroutines.flow.f r2 = r7.f71387a
            kotlinx.coroutines.flow.FlowKt__EmittersKt$a r5 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$a
            r5.<init>(r9, r8)
            r0.f71392d = r7
            r0.f71393e = r8
            r0.f71394f = r9
            r0.f71390b = r4
            java.lang.Object r2 = r2.e(r5, r0)
            if (r2 != r1) goto L6b
            return r1
        L6b:
            r4 = r7
            r2 = r8
            r8 = r9
        L6e:
            boolean r8 = r8.element
            if (r8 == 0) goto La2
            kotlin.coroutines.CoroutineContext r8 = r0.getContext()
            kotlinx.coroutines.flow.internal.SafeCollector r9 = new kotlinx.coroutines.flow.internal.SafeCollector
            r9.<init>(r2, r8)
            kotlin.jvm.functions.Function2 r8 = r4.f71388b     // Catch: java.lang.Throwable -> L9a
            r0.f71392d = r9     // Catch: java.lang.Throwable -> L9a
            r2 = 0
            r0.f71393e = r2     // Catch: java.lang.Throwable -> L9a
            r0.f71394f = r2     // Catch: java.lang.Throwable -> L9a
            r0.f71390b = r3     // Catch: java.lang.Throwable -> L9a
            r2 = 6
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch: java.lang.Throwable -> L9a
            java.lang.Object r8 = r8.invoke(r9, r0)     // Catch: java.lang.Throwable -> L9a
            r0 = 7
            kotlin.jvm.internal.InlineMarker.mark(r0)     // Catch: java.lang.Throwable -> L9a
            if (r8 != r1) goto L95
            return r1
        L95:
            r8 = r9
        L96:
            r8.releaseIntercepted()
            goto La2
        L9a:
            r8 = move-exception
            r6 = r9
            r9 = r8
            r8 = r6
        L9e:
            r8.releaseIntercepted()
            throw r9
        La2:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1.e(kotlinx.coroutines.flow.g, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
