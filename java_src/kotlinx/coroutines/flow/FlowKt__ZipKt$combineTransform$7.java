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
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Zip.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/g;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7", f = "Zip.kt", i = {}, l = {308}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__ZipKt$combineTransform$7<R> extends SuspendLambda implements Function2<g<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71856a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71857b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f<T>[] f71858c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function3<g<? super R>, T[], Continuation<? super Unit>, Object> f71859d;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Zip.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\u0010\u0003\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0002\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001H\n"}, d2 = {"T", "R", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1<T> extends Lambda implements Function0<T[]> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f<T>[] f71860a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(f<T>[] fVarArr) {
            super(0);
            this.f71860a = fVarArr;
        }

        @Override // kotlin.jvm.functions.Function0
        @Nullable
        /* renamed from: a */
        public final T[] invoke() {
            int length = this.f71860a.length;
            Intrinsics.reifiedOperationMarker(0, "T?");
            return (T[]) new Object[length];
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Zip.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/g;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7$2", f = "Zip.kt", i = {}, l = {308}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7$2  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass2<T> extends SuspendLambda implements Function3<g<? super R>, T[], Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f71861a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f71862b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f71863c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function3<g<? super R>, T[], Continuation<? super Unit>, Object> f71864d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Function3<? super g<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.f71864d = function3;
        }

        @Override // kotlin.jvm.functions.Function3
        @Nullable
        /* renamed from: e */
        public final Object invoke(@NotNull g<? super R> gVar, @NotNull T[] tArr, @Nullable Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f71864d, continuation);
            anonymousClass2.f71862b = gVar;
            anonymousClass2.f71863c = tArr;
            return anonymousClass2.invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = this.f71861a;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                Function3<g<? super R>, T[], Continuation<? super Unit>, Object> function3 = this.f71864d;
                this.f71862b = null;
                this.f71861a = 1;
                if (function3.invoke((g) this.f71862b, (Object[]) this.f71863c, this) == coroutine_suspended) {
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
            this.f71864d.invoke((g) this.f71862b, (Object[]) this.f71863c, this);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ZipKt$combineTransform$7(f<T>[] fVarArr, Function3<? super g<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super FlowKt__ZipKt$combineTransform$7> continuation) {
        super(2, continuation);
        this.f71858c = fVarArr;
        this.f71859d = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__ZipKt$combineTransform$7 flowKt__ZipKt$combineTransform$7 = new FlowKt__ZipKt$combineTransform$7(this.f71858c, this.f71859d, continuation);
        flowKt__ZipKt$combineTransform$7.f71857b = obj;
        return flowKt__ZipKt$combineTransform$7;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull g<? super R> gVar, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__ZipKt$combineTransform$7) create(gVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71856a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            f<T>[] fVarArr = this.f71858c;
            Intrinsics.needClassReification();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f71858c);
            Intrinsics.needClassReification();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f71859d, null);
            this.f71856a = 1;
            if (CombineKt.a((g) this.f71857b, fVarArr, anonymousClass1, anonymousClass2, this) == coroutine_suspended) {
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
        f<T>[] fVarArr = this.f71858c;
        Intrinsics.needClassReification();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f71858c);
        Intrinsics.needClassReification();
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f71859d, null);
        InlineMarker.mark(0);
        CombineKt.a((g) this.f71857b, fVarArr, anonymousClass1, anonymousClass2, this);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
