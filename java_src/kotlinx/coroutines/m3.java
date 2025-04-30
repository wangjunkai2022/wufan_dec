package kotlinx.coroutines;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineContext.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\n\u001a\u00020\tJ\u0012\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0014R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/m3;", "T", "Lkotlinx/coroutines/internal/e0;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "oldValue", "", "w1", "", "v1", NoticeTopAnimActivityDialog_.f34402n, "p1", "e", "Ljava/lang/Object;", "savedOldValue", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlin/coroutines/CoroutineContext;", "savedContext", "Lkotlin/coroutines/Continuation;", "uCont", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class m3<T> extends kotlinx.coroutines.internal.e0<T> {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private CoroutineContext f72282d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Object f72283e;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public m3(@org.jetbrains.annotations.NotNull kotlin.coroutines.CoroutineContext r3, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super T> r4) {
        /*
            r2 = this;
            kotlinx.coroutines.n3 r0 = kotlinx.coroutines.n3.f72287a
            kotlin.coroutines.CoroutineContext$Element r1 = r3.get(r0)
            if (r1 != 0) goto Lc
            kotlin.coroutines.CoroutineContext r3 = r3.plus(r0)
        Lc:
            r2.<init>(r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.m3.<init>(kotlin.coroutines.CoroutineContext, kotlin.coroutines.Continuation):void");
    }

    @Override // kotlinx.coroutines.internal.e0, kotlinx.coroutines.a
    protected void p1(@Nullable Object obj) {
        CoroutineContext coroutineContext = this.f72282d;
        if (coroutineContext != null) {
            ThreadContextKt.a(coroutineContext, this.f72283e);
            this.f72282d = null;
            this.f72283e = null;
        }
        Object a4 = m0.a(obj, this.f72167c);
        Continuation<T> continuation = this.f72167c;
        CoroutineContext context = continuation.getContext();
        Object c4 = ThreadContextKt.c(context, null);
        m3<?> f4 = c4 != ThreadContextKt.f72150a ? o0.f(continuation, context, c4) : null;
        try {
            this.f72167c.resumeWith(a4);
            Unit unit = Unit.INSTANCE;
        } finally {
            if (f4 == null || f4.v1()) {
                ThreadContextKt.a(context, c4);
            }
        }
    }

    public final boolean v1() {
        if (this.f72282d == null) {
            return false;
        }
        this.f72282d = null;
        this.f72283e = null;
        return true;
    }

    public final void w1(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        this.f72282d = coroutineContext;
        this.f72283e = obj;
    }
}
