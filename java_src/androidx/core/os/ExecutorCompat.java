package androidx.core.os;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes.dex */
public final class ExecutorCompat {

    /* loaded from: classes.dex */
    private static class HandlerExecutor implements Executor {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f4491a;

        HandlerExecutor(@NonNull Handler handler) {
            this.f4491a = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            if (this.f4491a.post((Runnable) Preconditions.checkNotNull(runnable))) {
                return;
            }
            throw new RejectedExecutionException(this.f4491a + " is shutting down");
        }
    }

    private ExecutorCompat() {
    }

    @NonNull
    public static Executor create(@NonNull Handler handler) {
        return new HandlerExecutor(handler);
    }
}
