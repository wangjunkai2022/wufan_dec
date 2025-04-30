package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Timeout.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020\u00000\u0003B\u001b\b\u0000\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000b\u0010\fB\u0011\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\rJ\n\u0010\u0004\u001a\u0004\u0018\u00010\u0000H\u0016R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/TimeoutCancellationException;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "Lkotlinx/coroutines/n0;", "b", "Lkotlinx/coroutines/c2;", "a", "Lkotlinx/coroutines/c2;", "coroutine", "", "message", "<init>", "(Ljava/lang/String;Lkotlinx/coroutines/c2;)V", "(Ljava/lang/String;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class TimeoutCancellationException extends CancellationException implements n0<TimeoutCancellationException> {
    @JvmField
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final c2 f70737a;

    public TimeoutCancellationException(@NotNull String str, @Nullable c2 c2Var) {
        super(str);
        this.f70737a = c2Var;
    }

    @Override // kotlinx.coroutines.n0
    @Nullable
    /* renamed from: b */
    public TimeoutCancellationException a() {
        String message = getMessage();
        if (message == null) {
            message = "";
        }
        TimeoutCancellationException timeoutCancellationException = new TimeoutCancellationException(message, this.f70737a);
        timeoutCancellationException.initCause(this);
        return timeoutCancellationException;
    }

    public TimeoutCancellationException(@NotNull String str) {
        this(str, null);
    }
}
