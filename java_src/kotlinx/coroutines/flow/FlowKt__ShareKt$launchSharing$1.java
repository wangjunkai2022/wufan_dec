package kotlinx.coroutines.flow;

import com.android.dx.io.Opcodes;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Share.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/t0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1", f = "Share.kt", i = {}, l = {206, 210, 211, 217}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__ShareKt$launchSharing$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71638a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ s f71639b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f<T> f71640c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ j<T> f71641d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ T f71642e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Share.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {"T", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1", f = "Share.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<Integer, Continuation<? super Boolean>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f71643a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ int f71644b;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.f71644b = ((Number) obj).intValue();
            return anonymousClass1;
        }

        @Nullable
        public final Object e(int i2, @Nullable Continuation<? super Boolean> continuation) {
            return ((AnonymousClass1) create(Integer.valueOf(i2), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Integer num, Continuation<? super Boolean> continuation) {
            return e(num.intValue(), continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f71643a == 0) {
                ResultKt.throwOnFailure(obj);
                return Boxing.boxBoolean(this.f71644b > 0);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Share.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/flow/SharingCommand;", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2", f = "Share.kt", i = {}, l = {Opcodes.DIV_INT_LIT8}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<SharingCommand, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f71645a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f71646b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ f<T> f71647c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ j<T> f71648d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ T f71649e;

        /* compiled from: Share.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
        /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2$a */
        /* loaded from: classes5.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SharingCommand.values().length];
                iArr[SharingCommand.START.ordinal()] = 1;
                iArr[SharingCommand.STOP.ordinal()] = 2;
                iArr[SharingCommand.STOP_AND_RESET_REPLAY_CACHE.ordinal()] = 3;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(f<? extends T> fVar, j<T> jVar, T t3, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.f71647c = fVar;
            this.f71648d = jVar;
            this.f71649e = t3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f71647c, this.f71648d, this.f71649e, continuation);
            anonymousClass2.f71646b = obj;
            return anonymousClass2;
        }

        @Nullable
        public final Object e(@NotNull SharingCommand sharingCommand, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(sharingCommand, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(SharingCommand sharingCommand, Continuation<? super Unit> continuation) {
            return e(sharingCommand, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = this.f71645a;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                int i4 = a.$EnumSwitchMapping$0[((SharingCommand) this.f71646b).ordinal()];
                if (i4 == 1) {
                    f<T> fVar = this.f71647c;
                    g gVar = this.f71648d;
                    this.f71645a = 1;
                    if (fVar.e(gVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 == 3) {
                    T t3 = this.f71649e;
                    if (t3 == p.f72095a) {
                        this.f71648d.f();
                    } else {
                        this.f71648d.b(t3);
                    }
                }
            } else if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ShareKt$launchSharing$1(s sVar, f<? extends T> fVar, j<T> jVar, T t3, Continuation<? super FlowKt__ShareKt$launchSharing$1> continuation) {
        super(2, continuation);
        this.f71639b = sVar;
        this.f71640c = fVar;
        this.f71641d = jVar;
        this.f71642e = t3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new FlowKt__ShareKt$launchSharing$1(this.f71639b, this.f71640c, this.f71641d, this.f71642e, continuation);
    }

    @Nullable
    public final Object e(@NotNull t0 t0Var, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__ShareKt$launchSharing$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
        return e(t0Var, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0068 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.f71638a
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L25
            if (r1 == r5) goto L21
            if (r1 == r4) goto L1d
            if (r1 == r3) goto L21
            if (r1 != r2) goto L15
            goto L21
        L15:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1d:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5c
        L21:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L8d
        L25:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.flow.s r8 = r7.f71639b
            kotlinx.coroutines.flow.s$a r1 = kotlinx.coroutines.flow.s.f72102a
            kotlinx.coroutines.flow.s r6 = r1.c()
            if (r8 != r6) goto L3f
            kotlinx.coroutines.flow.f<T> r8 = r7.f71640c
            kotlinx.coroutines.flow.j<T> r1 = r7.f71641d
            r7.f71638a = r5
            java.lang.Object r8 = r8.e(r1, r7)
            if (r8 != r0) goto L8d
            return r0
        L3f:
            kotlinx.coroutines.flow.s r8 = r7.f71639b
            kotlinx.coroutines.flow.s r1 = r1.d()
            r5 = 0
            if (r8 != r1) goto L69
            kotlinx.coroutines.flow.j<T> r8 = r7.f71641d
            kotlinx.coroutines.flow.v r8 = r8.d()
            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1 r1 = new kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1
            r1.<init>(r5)
            r7.f71638a = r4
            java.lang.Object r8 = kotlinx.coroutines.flow.h.w0(r8, r1, r7)
            if (r8 != r0) goto L5c
            return r0
        L5c:
            kotlinx.coroutines.flow.f<T> r8 = r7.f71640c
            kotlinx.coroutines.flow.j<T> r1 = r7.f71641d
            r7.f71638a = r3
            java.lang.Object r8 = r8.e(r1, r7)
            if (r8 != r0) goto L8d
            return r0
        L69:
            kotlinx.coroutines.flow.s r8 = r7.f71639b
            kotlinx.coroutines.flow.j<T> r1 = r7.f71641d
            kotlinx.coroutines.flow.v r1 = r1.d()
            kotlinx.coroutines.flow.f r8 = r8.a(r1)
            kotlinx.coroutines.flow.f r8 = kotlinx.coroutines.flow.h.i0(r8)
            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2 r1 = new kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2
            kotlinx.coroutines.flow.f<T> r3 = r7.f71640c
            kotlinx.coroutines.flow.j<T> r4 = r7.f71641d
            T r6 = r7.f71642e
            r1.<init>(r3, r4, r6, r5)
            r7.f71638a = r2
            java.lang.Object r8 = kotlinx.coroutines.flow.h.C(r8, r1, r7)
            if (r8 != r0) goto L8d
            return r0
        L8d:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
