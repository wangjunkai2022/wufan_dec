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
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Zip.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0003\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@¨\u0006\u0004"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/g;", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransformUnsafe$1", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3", f = "Zip.kt", i = {}, l = {273}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3<R> extends SuspendLambda implements Function2<g<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71801a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71802b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f[] f71803c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function5 f71804d;

    /* compiled from: Zip.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@¨\u0006\u0006"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/g;", "", "it", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransformUnsafe$1$1", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3$1", f = "Zip.kt", i = {}, l = {cn.aigestudio.downloader.bizs.d.f8368g}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function3<g<? super R>, Object[], Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f71805a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f71806b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f71807c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function5 f71808d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, Function5 function5) {
            super(3, continuation);
            this.f71808d = function5;
        }

        @Override // kotlin.jvm.functions.Function3
        @Nullable
        /* renamed from: e */
        public final Object invoke(@NotNull g<? super R> gVar, @NotNull Object[] objArr, @Nullable Continuation<? super Unit> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation, this.f71808d);
            anonymousClass1.f71806b = gVar;
            anonymousClass1.f71807c = objArr;
            return anonymousClass1.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = this.f71805a;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                g gVar = (g) this.f71806b;
                Object[] objArr = (Object[]) this.f71807c;
                Function5 function5 = this.f71808d;
                Object obj2 = objArr[0];
                Object obj3 = objArr[1];
                Object obj4 = objArr[2];
                this.f71805a = 1;
                InlineMarker.mark(6);
                Object invoke = function5.invoke(gVar, obj2, obj3, obj4, this);
                InlineMarker.mark(7);
                if (invoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3(f[] fVarArr, Continuation continuation, Function5 function5) {
        super(2, continuation);
        this.f71803c = fVarArr;
        this.f71804d = function5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3 flowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3 = new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3(this.f71803c, continuation, this.f71804d);
        flowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3.f71802b = obj;
        return flowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull g<? super R> gVar, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3) create(gVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71801a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            f[] fVarArr = this.f71803c;
            Function0 a4 = FlowKt__ZipKt.a();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(null, this.f71804d);
            this.f71801a = 1;
            if (CombineKt.a((g) this.f71802b, fVarArr, a4, anonymousClass1, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
