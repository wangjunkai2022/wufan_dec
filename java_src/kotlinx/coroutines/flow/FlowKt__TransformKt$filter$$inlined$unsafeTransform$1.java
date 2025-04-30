package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/flow/g;", "collector", "", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$$inlined$unsafeFlow$1"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FlowKt__TransformKt$filter$$inlined$unsafeTransform$1<T> implements f<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f71657a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Function2 f71658b;

    /* compiled from: Collect.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$lambda-1$$inlined$collect$1"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass2 implements g<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f71662a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function2 f71663b;

        @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2", f = "Transform.kt", i = {0, 0}, l = {136, 136}, m = "emit", n = {"value", "$this$filter_u24lambda_u2d0"}, s = {"L$0", "L$1"})
        /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2$1  reason: invalid class name */
        /* loaded from: classes5.dex */
        public static final class AnonymousClass1 extends ContinuationImpl {

            /* renamed from: a  reason: collision with root package name */
            /* synthetic */ Object f71664a;

            /* renamed from: b  reason: collision with root package name */
            int f71665b;

            /* renamed from: d  reason: collision with root package name */
            Object f71667d;

            /* renamed from: e  reason: collision with root package name */
            Object f71668e;

            public AnonymousClass1(Continuation continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f71664a = obj;
                this.f71665b |= Integer.MIN_VALUE;
                return AnonymousClass2.this.emit(null, this);
            }
        }

        public AnonymousClass2(g gVar, Function2 function2) {
            this.f71662a = gVar;
            this.f71663b = function2;
        }

        @Nullable
        public Object a(Object obj, @NotNull Continuation continuation) {
            InlineMarker.mark(4);
            new AnonymousClass1(continuation);
            InlineMarker.mark(5);
            g gVar = this.f71662a;
            if (((Boolean) this.f71663b.invoke(obj, continuation)).booleanValue()) {
                InlineMarker.mark(0);
                gVar.emit(obj, continuation);
                InlineMarker.mark(1);
            }
            return Unit.INSTANCE;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
        @Override // kotlinx.coroutines.flow.g
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object emit(java.lang.Object r7, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation r8) {
            /*
                r6 = this;
                boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__TransformKt$filter$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1
                if (r0 == 0) goto L13
                r0 = r8
                kotlinx.coroutines.flow.FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt$filter$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1) r0
                int r1 = r0.f71665b
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f71665b = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2$1
                r0.<init>(r8)
            L18:
                java.lang.Object r8 = r0.f71664a
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f71665b
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L3e
                if (r2 == r4) goto L34
                if (r2 != r3) goto L2c
                kotlin.ResultKt.throwOnFailure(r8)
                goto L6c
            L2c:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L34:
                java.lang.Object r7 = r0.f71668e
                kotlinx.coroutines.flow.g r7 = (kotlinx.coroutines.flow.g) r7
                java.lang.Object r2 = r0.f71667d
                kotlin.ResultKt.throwOnFailure(r8)
                goto L56
            L3e:
                kotlin.ResultKt.throwOnFailure(r8)
                kotlinx.coroutines.flow.g r8 = r6.f71662a
                kotlin.jvm.functions.Function2 r2 = r6.f71663b
                r0.f71667d = r7
                r0.f71668e = r8
                r0.f71665b = r4
                java.lang.Object r2 = r2.invoke(r7, r0)
                if (r2 != r1) goto L52
                return r1
            L52:
                r5 = r2
                r2 = r7
                r7 = r8
                r8 = r5
            L56:
                java.lang.Boolean r8 = (java.lang.Boolean) r8
                boolean r8 = r8.booleanValue()
                if (r8 == 0) goto L6c
                r8 = 0
                r0.f71667d = r8
                r0.f71668e = r8
                r0.f71665b = r3
                java.lang.Object r7 = r7.emit(r2, r0)
                if (r7 != r1) goto L6c
                return r1
            L6c:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt$filter$$inlined$unsafeTransform$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    public FlowKt__TransformKt$filter$$inlined$unsafeTransform$1(f fVar, Function2 function2) {
        this.f71657a = fVar;
        this.f71658b = function2;
    }

    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public Object e(@NotNull g gVar, @NotNull Continuation continuation) {
        Object coroutine_suspended;
        Object e4 = this.f71657a.e(new AnonymousClass2(gVar, this.f71658b), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
    }

    @Nullable
    public Object g(@NotNull g gVar, @NotNull Continuation continuation) {
        InlineMarker.mark(4);
        new ContinuationImpl(continuation) { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$filter$$inlined$unsafeTransform$1.1

            /* renamed from: a  reason: collision with root package name */
            /* synthetic */ Object f71659a;

            /* renamed from: b  reason: collision with root package name */
            int f71660b;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f71659a = obj;
                this.f71660b |= Integer.MIN_VALUE;
                return FlowKt__TransformKt$filter$$inlined$unsafeTransform$1.this.e(null, this);
            }
        };
        InlineMarker.mark(5);
        f fVar = this.f71657a;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(gVar, this.f71658b);
        InlineMarker.mark(0);
        fVar.e(anonymousClass2, continuation);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
