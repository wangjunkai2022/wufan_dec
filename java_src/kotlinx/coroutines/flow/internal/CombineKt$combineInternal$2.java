package kotlinx.coroutines.flow.internal;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Combine.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"R", "T", "Lkotlinx/coroutines/t0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", i = {0, 0, 0, 0}, l = {57, 79, 82}, m = "invokeSuspend", n = {"latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues"}, s = {"L$0", "L$1", "L$2", "I$0"})
/* loaded from: classes5.dex */
public final class CombineKt$combineInternal$2 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    Object f72004a;

    /* renamed from: b  reason: collision with root package name */
    Object f72005b;

    /* renamed from: c  reason: collision with root package name */
    int f72006c;

    /* renamed from: d  reason: collision with root package name */
    int f72007d;

    /* renamed from: e  reason: collision with root package name */
    int f72008e;

    /* renamed from: f  reason: collision with root package name */
    private /* synthetic */ Object f72009f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.f<T>[] f72010g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ Function0<T[]> f72011h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Function3<kotlinx.coroutines.flow.g<? super R>, T[], Continuation<? super Unit>, Object> f72012i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.g<R> f72013j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Combine.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"R", "T", "Lkotlinx/coroutines/t0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", i = {}, l = {147}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f72014a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.f<T>[] f72015b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f72016c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ AtomicInteger f72017d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.channels.k<IndexedValue<Object>> f72018e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(kotlinx.coroutines.flow.f<? extends T>[] fVarArr, int i2, AtomicInteger atomicInteger, kotlinx.coroutines.channels.k<IndexedValue<Object>> kVar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.f72015b = fVarArr;
            this.f72016c = i2;
            this.f72017d = atomicInteger;
            this.f72018e = kVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass1(this.f72015b, this.f72016c, this.f72017d, this.f72018e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: e */
        public final Object invoke(@NotNull t0 t0Var, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object coroutine_suspended;
            AtomicInteger atomicInteger;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = this.f72014a;
            try {
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    kotlinx.coroutines.flow.f[] fVarArr = this.f72015b;
                    int i4 = this.f72016c;
                    kotlinx.coroutines.flow.f fVar = fVarArr[i4];
                    CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1 combineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1 = new CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1(this.f72018e, i4);
                    this.f72014a = 1;
                    if (fVar.e(combineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                if (atomicInteger.decrementAndGet() == 0) {
                    b0.a.a(this.f72018e, null, 1, null);
                }
                return Unit.INSTANCE;
            } finally {
                if (this.f72017d.decrementAndGet() == 0) {
                    b0.a.a(this.f72018e, null, 1, null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CombineKt$combineInternal$2(kotlinx.coroutines.flow.f<? extends T>[] fVarArr, Function0<T[]> function0, Function3<? super kotlinx.coroutines.flow.g<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, kotlinx.coroutines.flow.g<? super R> gVar, Continuation<? super CombineKt$combineInternal$2> continuation) {
        super(2, continuation);
        this.f72010g = fVarArr;
        this.f72011h = function0;
        this.f72012i = function3;
        this.f72013j = gVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(this.f72010g, this.f72011h, this.f72012i, this.f72013j, continuation);
        combineKt$combineInternal$2.f72009f = obj;
        return combineKt$combineInternal$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull t0 t0Var, @Nullable Continuation<? super Unit> continuation) {
        return ((CombineKt$combineInternal$2) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f1 A[LOOP:0: B:32:0x00f1->B:39:0x0115, LOOP_START, PHI: r3 r10 
      PHI: (r3v3 int) = (r3v2 int), (r3v4 int) binds: [B:29:0x00ec, B:39:0x0115] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r10v5 kotlin.collections.IndexedValue) = (r10v4 kotlin.collections.IndexedValue), (r10v18 kotlin.collections.IndexedValue) binds: [B:29:0x00ec, B:39:0x0115] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r2v12, types: [int] */
    /* JADX WARN: Type inference failed for: r2v7, types: [int] */
    /* JADX WARN: Type inference failed for: r2v9, types: [int] */
    /* JADX WARN: Type inference failed for: r7v0, types: [kotlinx.coroutines.flow.f<T>[]] */
    /* JADX WARN: Type inference failed for: r7v4, types: [kotlinx.coroutines.flow.f[], kotlinx.coroutines.flow.f<T>[]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x013a -> B:24:0x00cc). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x016f -> B:50:0x016b). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r24) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
