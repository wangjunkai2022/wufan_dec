package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SharingStarted.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u008a@"}, d2 = {"Lkotlinx/coroutines/flow/g;", "Lkotlinx/coroutines/flow/SharingCommand;", "", "count", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", i = {1, 2, 3}, l = {179, 181, 183, 184, 186}, m = "invokeSuspend", n = {"$this$transformLatest", "$this$transformLatest", "$this$transformLatest"}, s = {"L$0", "L$0", "L$0"})
/* loaded from: classes5.dex */
final class StartedWhileSubscribed$command$1 extends SuspendLambda implements Function3<g<? super SharingCommand>, Integer, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71908a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71909b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ int f71910c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ StartedWhileSubscribed f71911d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartedWhileSubscribed$command$1(StartedWhileSubscribed startedWhileSubscribed, Continuation<? super StartedWhileSubscribed$command$1> continuation) {
        super(3, continuation);
        this.f71911d = startedWhileSubscribed;
    }

    @Nullable
    public final Object e(@NotNull g<? super SharingCommand> gVar, int i2, @Nullable Continuation<? super Unit> continuation) {
        StartedWhileSubscribed$command$1 startedWhileSubscribed$command$1 = new StartedWhileSubscribed$command$1(this.f71911d, continuation);
        startedWhileSubscribed$command$1.f71909b = gVar;
        startedWhileSubscribed$command$1.f71910c = i2;
        return startedWhileSubscribed$command$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(g<? super SharingCommand> gVar, Integer num, Continuation<? super Unit> continuation) {
        return e(gVar, num.intValue(), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009b A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.f71908a
            r2 = 5
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L3c
            if (r1 == r6) goto L38
            if (r1 == r5) goto L30
            if (r1 == r4) goto L28
            if (r1 == r3) goto L20
            if (r1 != r2) goto L18
            goto L38
        L18:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L20:
            java.lang.Object r1 = r9.f71909b
            kotlinx.coroutines.flow.g r1 = (kotlinx.coroutines.flow.g) r1
            kotlin.ResultKt.throwOnFailure(r10)
            goto L8e
        L28:
            java.lang.Object r1 = r9.f71909b
            kotlinx.coroutines.flow.g r1 = (kotlinx.coroutines.flow.g) r1
            kotlin.ResultKt.throwOnFailure(r10)
            goto L7d
        L30:
            java.lang.Object r1 = r9.f71909b
            kotlinx.coroutines.flow.g r1 = (kotlinx.coroutines.flow.g) r1
            kotlin.ResultKt.throwOnFailure(r10)
            goto L64
        L38:
            kotlin.ResultKt.throwOnFailure(r10)
            goto L9c
        L3c:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.f71909b
            r1 = r10
            kotlinx.coroutines.flow.g r1 = (kotlinx.coroutines.flow.g) r1
            int r10 = r9.f71910c
            if (r10 <= 0) goto L53
            kotlinx.coroutines.flow.SharingCommand r10 = kotlinx.coroutines.flow.SharingCommand.START
            r9.f71908a = r6
            java.lang.Object r10 = r1.emit(r10, r9)
            if (r10 != r0) goto L9c
            return r0
        L53:
            kotlinx.coroutines.flow.StartedWhileSubscribed r10 = r9.f71911d
            long r6 = kotlinx.coroutines.flow.StartedWhileSubscribed.c(r10)
            r9.f71909b = r1
            r9.f71908a = r5
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.b(r6, r9)
            if (r10 != r0) goto L64
            return r0
        L64:
            kotlinx.coroutines.flow.StartedWhileSubscribed r10 = r9.f71911d
            long r5 = kotlinx.coroutines.flow.StartedWhileSubscribed.b(r10)
            r7 = 0
            int r10 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r10 <= 0) goto L8e
            kotlinx.coroutines.flow.SharingCommand r10 = kotlinx.coroutines.flow.SharingCommand.STOP
            r9.f71909b = r1
            r9.f71908a = r4
            java.lang.Object r10 = r1.emit(r10, r9)
            if (r10 != r0) goto L7d
            return r0
        L7d:
            kotlinx.coroutines.flow.StartedWhileSubscribed r10 = r9.f71911d
            long r4 = kotlinx.coroutines.flow.StartedWhileSubscribed.b(r10)
            r9.f71909b = r1
            r9.f71908a = r3
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.b(r4, r9)
            if (r10 != r0) goto L8e
            return r0
        L8e:
            kotlinx.coroutines.flow.SharingCommand r10 = kotlinx.coroutines.flow.SharingCommand.STOP_AND_RESET_REPLAY_CACHE
            r3 = 0
            r9.f71909b = r3
            r9.f71908a = r2
            java.lang.Object r10 = r1.emit(r10, r9)
            if (r10 != r0) goto L9c
            return r0
        L9c:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StartedWhileSubscribed$command$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
