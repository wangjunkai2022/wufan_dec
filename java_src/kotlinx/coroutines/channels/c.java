package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.q0;
import kotlinx.coroutines.s1;
import kotlinx.coroutines.w0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Actor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0012\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B%\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0010\u000f\u001a\u00020\t¢\u0006\u0004\b\u0010\u0010\u0011J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0004H\u0014¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/channels/c;", "E", "Lkotlinx/coroutines/channels/l;", "Lkotlinx/coroutines/channels/e;", "", "cause", "", "W0", "exception", "", "E0", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "Lkotlinx/coroutines/channels/k;", "channel", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/k;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
class c<E> extends l<E> implements e<E> {
    public c(@NotNull CoroutineContext coroutineContext, @NotNull k<E> kVar, boolean z3) {
        super(coroutineContext, kVar, false, z3);
        G0((c2) coroutineContext.get(c2.Q));
    }

    @Override // kotlinx.coroutines.JobSupport
    protected boolean E0(@NotNull Throwable th) {
        q0.b(getContext(), th);
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void W0(@Nullable Throwable th) {
        k<E> u12 = u1();
        if (th != null) {
            r1 = th instanceof CancellationException ? (CancellationException) th : null;
            if (r1 == null) {
                r1 = s1.a(Intrinsics.stringPlus(w0.a(this), " was cancelled"), th);
            }
        }
        u12.b(r1);
    }
}
