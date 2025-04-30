package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlinx.coroutines.o1;
import org.jetbrains.annotations.NotNull;
/* compiled from: EventLoop.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0004J\u0018\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0004R\u0016\u0010\f\u001a\u00020\t8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/p1;", "Lkotlinx/coroutines/n1;", "", "R", "", "now", "Lkotlinx/coroutines/o1$c;", "delayedTask", "P", "Ljava/lang/Thread;", "O", "()Ljava/lang/Thread;", "thread", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class p1 extends n1 {
    @NotNull
    protected abstract Thread O();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void P(long j4, @NotNull o1.c cVar) {
        if (v0.b()) {
            if (!(this != x0.f72534f)) {
                throw new AssertionError();
            }
        }
        x0.f72534f.b0(j4, cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void R() {
        Thread O = O();
        if (Thread.currentThread() != O) {
            b b4 = c.b();
            if (b4 == null) {
                LockSupport.unpark(O);
            } else {
                b4.g(O);
            }
        }
    }
}
