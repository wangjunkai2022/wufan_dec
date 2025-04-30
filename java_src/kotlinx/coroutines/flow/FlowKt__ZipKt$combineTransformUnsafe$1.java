package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Zip.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/g;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransformUnsafe$1", f = "Zip.kt", i = {}, l = {273}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__ZipKt$combineTransformUnsafe$1<R> extends SuspendLambda implements Function2<g<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71865a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71866b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f<T>[] f71867c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function3<g<? super R>, T[], Continuation<? super Unit>, Object> f71868d;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Zip.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/g;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransformUnsafe$1$1", f = "Zip.kt", i = {}, l = {273}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransformUnsafe$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1<T> extends SuspendLambda implements Function3<g<? super R>, T[], Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f71869a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f71870b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f71871c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function3<g<? super R>, T[], Continuation<? super Unit>, Object> f71872d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(Function3<? super g<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super AnonymousClass1> continuation) {
            super(3, continuation);
            this.f71872d = function3;
        }

        @Override // kotlin.jvm.functions.Function3
        @Nullable
        /* renamed from: e */
        public final Object invoke(@NotNull g<? super R> gVar, @NotNull T[] tArr, @Nullable Continuation<? super Unit> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f71872d, continuation);
            anonymousClass1.f71870b = gVar;
            anonymousClass1.f71871c = tArr;
            return anonymousClass1.invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = this.f71869a;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                Function3<g<? super R>, T[], Continuation<? super Unit>, Object> function3 = this.f71872d;
                this.f71870b = null;
                this.f71869a = 1;
                if (function3.invoke((g) this.f71870b, (Object[]) this.f71871c, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Nullable
        public final Object invokeSuspend$$forInline(@NotNull Object obj) {
            this.f71872d.invoke((g) this.f71870b, (Object[]) this.f71871c, this);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ZipKt$combineTransformUnsafe$1(f<? extends T>[] fVarArr, Function3<? super g<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super FlowKt__ZipKt$combineTransformUnsafe$1> continuation) {
        super(2, continuation);
        this.f71867c = fVarArr;
        this.f71868d = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__ZipKt$combineTransformUnsafe$1 flowKt__ZipKt$combineTransformUnsafe$1 = new FlowKt__ZipKt$combineTransformUnsafe$1(this.f71867c, this.f71868d, continuation);
        flowKt__ZipKt$combineTransformUnsafe$1.f71866b = obj;
        return flowKt__ZipKt$combineTransformUnsafe$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull g<? super R> gVar, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__ZipKt$combineTransformUnsafe$1) create(gVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71865a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            f<T>[] fVarArr = this.f71867c;
            Function0 a4 = FlowKt__ZipKt.a();
            Intrinsics.needClassReification();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f71868d, null);
            this.f71865a = 1;
            if (CombineKt.a((g) this.f71866b, fVarArr, a4, anonymousClass1, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    @Nullable
    public final Object invokeSuspend$$forInline(@NotNull Object obj) {
        f<T>[] fVarArr = this.f71867c;
        Function0 a4 = FlowKt__ZipKt.a();
        Intrinsics.needClassReification();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f71868d, null);
        InlineMarker.mark(0);
        CombineKt.a((g) this.f71866b, fVarArr, a4, anonymousClass1, this);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
