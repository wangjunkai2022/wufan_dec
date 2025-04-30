package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.channels.ReceiveChannel;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Combine.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@"}, d2 = {"T1", "T2", "R", "", "it", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1", f = "Combine.kt", i = {}, l = {132, 135, 135}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class CombineKt$zipImpl$1$1$2$1$1 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    Object f72034a;

    /* renamed from: b  reason: collision with root package name */
    int f72035b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<Object> f72036c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.g<R> f72037d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f72038e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ T1 f72039f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CombineKt$zipImpl$1$1$2$1$1(ReceiveChannel<? extends Object> receiveChannel, kotlinx.coroutines.flow.g<? super R> gVar, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, T1 t12, Continuation<? super CombineKt$zipImpl$1$1$2$1$1> continuation) {
        super(2, continuation);
        this.f72036c = receiveChannel;
        this.f72037d = gVar;
        this.f72038e = function3;
        this.f72039f = t12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new CombineKt$zipImpl$1$1$2$1$1(this.f72036c, this.f72037d, this.f72038e, this.f72039f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull Unit unit, @Nullable Continuation<? super Unit> continuation) {
        return ((CombineKt$zipImpl$1$1$2$1$1) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x006e A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.f72035b
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L30
            if (r1 == r5) goto L26
            if (r1 == r4) goto L1e
            if (r1 != r3) goto L16
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6f
        L16:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1e:
            java.lang.Object r1 = r8.f72034a
            kotlinx.coroutines.flow.g r1 = (kotlinx.coroutines.flow.g) r1
            kotlin.ResultKt.throwOnFailure(r9)
            goto L64
        L26:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.channels.n r9 = (kotlinx.coroutines.channels.n) r9
            java.lang.Object r9 = r9.o()
            goto L3e
        L30:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.channels.ReceiveChannel<java.lang.Object> r9 = r8.f72036c
            r8.f72035b = r5
            java.lang.Object r9 = r9.K(r8)
            if (r9 != r0) goto L3e
            return r0
        L3e:
            kotlinx.coroutines.flow.g<R> r1 = r8.f72037d
            boolean r5 = r9 instanceof kotlinx.coroutines.channels.n.c
            if (r5 == 0) goto L50
            java.lang.Throwable r9 = kotlinx.coroutines.channels.n.f(r9)
            if (r9 != 0) goto L4f
            kotlinx.coroutines.flow.internal.AbortFlowException r9 = new kotlinx.coroutines.flow.internal.AbortFlowException
            r9.<init>(r1)
        L4f:
            throw r9
        L50:
            kotlin.jvm.functions.Function3<T1, T2, kotlin.coroutines.Continuation<? super R>, java.lang.Object> r5 = r8.f72038e
            T1 r6 = r8.f72039f
            kotlinx.coroutines.internal.i0 r7 = kotlinx.coroutines.flow.internal.m.f72084a
            if (r9 != r7) goto L59
            r9 = r2
        L59:
            r8.f72034a = r1
            r8.f72035b = r4
            java.lang.Object r9 = r5.invoke(r6, r9, r8)
            if (r9 != r0) goto L64
            return r0
        L64:
            r8.f72034a = r2
            r8.f72035b = r3
            java.lang.Object r9 = r1.emit(r9, r8)
            if (r9 != r0) goto L6f
            return r0
        L6f:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
