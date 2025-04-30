package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DebugCoroutineInfoImpl.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlin/sequences/SequenceScope;", "Ljava/lang/StackTraceElement;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$creationStackTrace$1", f = "DebugCoroutineInfoImpl.kt", i = {}, l = {75}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class DebugCoroutineInfoImpl$creationStackTrace$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super StackTraceElement>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71136a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71137b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ DebugCoroutineInfoImpl f71138c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ h f71139d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DebugCoroutineInfoImpl$creationStackTrace$1(DebugCoroutineInfoImpl debugCoroutineInfoImpl, h hVar, Continuation<? super DebugCoroutineInfoImpl$creationStackTrace$1> continuation) {
        super(2, continuation);
        this.f71138c = debugCoroutineInfoImpl;
        this.f71139d = hVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        DebugCoroutineInfoImpl$creationStackTrace$1 debugCoroutineInfoImpl$creationStackTrace$1 = new DebugCoroutineInfoImpl$creationStackTrace$1(this.f71138c, this.f71139d, continuation);
        debugCoroutineInfoImpl$creationStackTrace$1.f71137b = obj;
        return debugCoroutineInfoImpl$creationStackTrace$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull SequenceScope<? super StackTraceElement> sequenceScope, @Nullable Continuation<? super Unit> continuation) {
        return ((DebugCoroutineInfoImpl$creationStackTrace$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Object j4;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71136a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            DebugCoroutineInfoImpl debugCoroutineInfoImpl = this.f71138c;
            CoroutineStackFrame callerFrame = this.f71139d.getCallerFrame();
            this.f71136a = 1;
            j4 = debugCoroutineInfoImpl.j((SequenceScope) this.f71137b, callerFrame, this);
            if (j4 == coroutine_suspended) {
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
