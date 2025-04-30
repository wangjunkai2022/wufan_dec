package kotlinx.coroutines.flow;

import com.android.dx.io.Opcodes;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Delay.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/t0;", "Lkotlinx/coroutines/flow/g;", "downstream", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1", f = "Delay.kt", i = {}, l = {Opcodes.SHL_INT_LIT8, 358}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__DelayKt$debounceInternal$1<T> extends SuspendLambda implements Function3<t0, g<? super T>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    Object f71335a;

    /* renamed from: b  reason: collision with root package name */
    Object f71336b;

    /* renamed from: c  reason: collision with root package name */
    int f71337c;

    /* renamed from: d  reason: collision with root package name */
    private /* synthetic */ Object f71338d;

    /* renamed from: e  reason: collision with root package name */
    /* synthetic */ Object f71339e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ Function1<T, Long> f71340f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ f<T> f71341g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__DelayKt$debounceInternal$1(Function1<? super T, Long> function1, f<? extends T> fVar, Continuation<? super FlowKt__DelayKt$debounceInternal$1> continuation) {
        super(3, continuation);
        this.f71340f = function1;
        this.f71341g = fVar;
    }

    @Override // kotlin.jvm.functions.Function3
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull t0 t0Var, @NotNull g<? super T> gVar, @Nullable Continuation<? super Unit> continuation) {
        FlowKt__DelayKt$debounceInternal$1 flowKt__DelayKt$debounceInternal$1 = new FlowKt__DelayKt$debounceInternal$1(this.f71340f, this.f71341g, continuation);
        flowKt__DelayKt$debounceInternal$1.f71338d = t0Var;
        flowKt__DelayKt$debounceInternal$1.f71339e = gVar;
        return flowKt__DelayKt$debounceInternal$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:62|26|30|31|(4:33|(1:42)(1:37)|38|(2:40|41))|43|44|45|(1:47)|48|49|(1:51)|(1:53)(1:54)) */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x011f, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0120, code lost:
        r13.m0(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0108 A[Catch: all -> 0x011f, TryCatch #0 {all -> 0x011f, blocks: (B:50:0x0104, B:52:0x0108, B:53:0x0112), top: B:65:0x0104 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0132 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0133  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0133 -> B:11:0x0072). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
