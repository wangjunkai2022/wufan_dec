package com.psk.eventmodule.net;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StatCore.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.psk.eventmodule.net.StatCore$offlineAll$1", f = "StatCore.kt", i = {1}, l = {117, 200}, m = "invokeSuspend", n = {"tableList"}, s = {"L$0"})
/* loaded from: classes4.dex */
public final class StatCore$offlineAll$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StatCore$offlineAll$1(Continuation continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new StatCore$offlineAll$1(completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
        return ((StatCore$offlineAll$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ab, code lost:
        if ((r8 == null || r8.length() == 0) != false) goto L57;
     */
    /* JADX WARN: Removed duplicated region for block: B:63:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.psk.eventmodule.net.modle.ResponseModel, T] */
    /* JADX WARN: Type inference failed for: r6v2, types: [T, java.util.Collection, java.util.ArrayList] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r33) {
        /*
            Method dump skipped, instructions count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.psk.eventmodule.net.StatCore$offlineAll$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
