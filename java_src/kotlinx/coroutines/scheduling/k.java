package kotlinx.coroutines.scheduling;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.w0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Tasks.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B#\u0012\n\u0010\n\u001a\u00060\u0006j\u0002`\u0007\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u001a\u0010\n\u001a\u00060\u0006j\u0002`\u00078\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/scheduling/k;", "Lkotlinx/coroutines/scheduling/i;", "", "run", "", "toString", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", ai.aD, "Ljava/lang/Runnable;", "block", "", "submissionTime", "Lkotlinx/coroutines/scheduling/j;", "taskContext", "<init>", "(Ljava/lang/Runnable;JLkotlinx/coroutines/scheduling/j;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class k extends i {
    @JvmField
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f72380c;

    public k(@NotNull Runnable runnable, long j4, @NotNull j jVar) {
        super(j4, jVar);
        this.f72380c = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f72380c.run();
        } finally {
            this.f72379b.q();
        }
    }

    @NotNull
    public String toString() {
        return "Task[" + w0.a(this.f72380c) + '@' + w0.b(this.f72380c) + ", " + this.f72378a + ", " + this.f72379b + ']';
    }
}
