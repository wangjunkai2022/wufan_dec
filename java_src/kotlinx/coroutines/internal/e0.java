package kotlinx.coroutines.internal;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.c2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Scopes.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004B\u001d\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0007\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006J\u0012\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014J\u0012\u0010\f\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014R\u001b\u0010\u000f\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048F@\u0006¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00188\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006 "}, d2 = {"Lkotlinx/coroutines/internal/e0;", "T", "Lkotlinx/coroutines/a;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "", NoticeTopAnimActivityDialog_.f34402n, "", "c0", "p1", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "", "J0", "()Z", "isScopedCoroutine", "Lkotlinx/coroutines/c2;", "u1", "()Lkotlinx/coroutines/c2;", "parent", "Lkotlin/coroutines/Continuation;", ai.aD, "Lkotlin/coroutines/Continuation;", "uCont", "Lkotlin/coroutines/CoroutineContext;", "context", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class e0<T> extends kotlinx.coroutines.a<T> implements CoroutineStackFrame {
    @JvmField
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final Continuation<T> f72167c;

    /* JADX WARN: Multi-variable type inference failed */
    public e0(@NotNull CoroutineContext coroutineContext, @NotNull Continuation<? super T> continuation) {
        super(coroutineContext, true, true);
        this.f72167c = continuation;
    }

    @Override // kotlinx.coroutines.JobSupport
    protected final boolean J0() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.JobSupport
    public void c0(@Nullable Object obj) {
        Continuation intercepted;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(this.f72167c);
        k.g(intercepted, kotlinx.coroutines.m0.a(obj, this.f72167c), null, 2, null);
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public final CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.f72167c;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.a
    protected void p1(@Nullable Object obj) {
        Continuation<T> continuation = this.f72167c;
        continuation.resumeWith(kotlinx.coroutines.m0.a(obj, continuation));
    }

    @Nullable
    public final c2 u1() {
        kotlinx.coroutines.v C0 = C0();
        if (C0 == null) {
            return null;
        }
        return C0.getParent();
    }
}
