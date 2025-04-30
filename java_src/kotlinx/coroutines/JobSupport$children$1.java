package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobSupport.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlin/sequences/SequenceScope;", "Lkotlinx/coroutines/x;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", i = {1, 1}, l = {952, 954}, m = "invokeSuspend", n = {"this_$iv", "cur$iv"}, s = {"L$1", "L$2"})
/* loaded from: classes5.dex */
final class JobSupport$children$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super x>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    Object f70729a;

    /* renamed from: b  reason: collision with root package name */
    Object f70730b;

    /* renamed from: c  reason: collision with root package name */
    int f70731c;

    /* renamed from: d  reason: collision with root package name */
    private /* synthetic */ Object f70732d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ JobSupport f70733e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JobSupport$children$1(JobSupport jobSupport, Continuation<? super JobSupport$children$1> continuation) {
        super(2, continuation);
        this.f70733e = jobSupport;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        JobSupport$children$1 jobSupport$children$1 = new JobSupport$children$1(this.f70733e, continuation);
        jobSupport$children$1.f70732d = obj;
        return jobSupport$children$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull SequenceScope<? super x> sequenceScope, @Nullable Continuation<? super Unit> continuation) {
        return ((JobSupport$children$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0067  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0069 -> B:28:0x007f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x007c -> B:28:0x007f). Please submit an issue!!! */
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
            int r1 = r7.f70731c
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L2b
            if (r1 == r3) goto L27
            if (r1 != r2) goto L1f
            java.lang.Object r1 = r7.f70730b
            kotlinx.coroutines.internal.s r1 = (kotlinx.coroutines.internal.s) r1
            java.lang.Object r3 = r7.f70729a
            kotlinx.coroutines.internal.q r3 = (kotlinx.coroutines.internal.q) r3
            java.lang.Object r4 = r7.f70732d
            kotlin.sequences.SequenceScope r4 = (kotlin.sequences.SequenceScope) r4
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r7
            goto L7f
        L1f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L27:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L84
        L2b:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r8 = r7.f70732d
            kotlin.sequences.SequenceScope r8 = (kotlin.sequences.SequenceScope) r8
            kotlinx.coroutines.JobSupport r1 = r7.f70733e
            java.lang.Object r1 = r1.D0()
            boolean r4 = r1 instanceof kotlinx.coroutines.w
            if (r4 == 0) goto L49
            kotlinx.coroutines.w r1 = (kotlinx.coroutines.w) r1
            kotlinx.coroutines.x r1 = r1.f72531e
            r7.f70731c = r3
            java.lang.Object r8 = r8.yield(r1, r7)
            if (r8 != r0) goto L84
            return r0
        L49:
            boolean r3 = r1 instanceof kotlinx.coroutines.x1
            if (r3 == 0) goto L84
            kotlinx.coroutines.x1 r1 = (kotlinx.coroutines.x1) r1
            kotlinx.coroutines.n2 r1 = r1.e()
            if (r1 != 0) goto L56
            goto L84
        L56:
            java.lang.Object r3 = r1.O()
            kotlinx.coroutines.internal.s r3 = (kotlinx.coroutines.internal.s) r3
            r4 = r8
            r8 = r7
            r6 = r3
            r3 = r1
            r1 = r6
        L61:
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r5 != 0) goto L84
            boolean r5 = r1 instanceof kotlinx.coroutines.w
            if (r5 == 0) goto L7f
            r5 = r1
            kotlinx.coroutines.w r5 = (kotlinx.coroutines.w) r5
            kotlinx.coroutines.x r5 = r5.f72531e
            r8.f70732d = r4
            r8.f70729a = r3
            r8.f70730b = r1
            r8.f70731c = r2
            java.lang.Object r5 = r4.yield(r5, r8)
            if (r5 != r0) goto L7f
            return r0
        L7f:
            kotlinx.coroutines.internal.s r1 = r1.P()
            goto L61
        L84:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport$children$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
