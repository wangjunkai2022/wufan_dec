package androidx.arch.core.executor;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class DefaultTaskExecutor extends TaskExecutor {

    /* renamed from: a  reason: collision with root package name */
    private final Object f1571a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f1572b = Executors.newFixedThreadPool(4, new ThreadFactory() { // from class: androidx.arch.core.executor.DefaultTaskExecutor.1

        /* renamed from: c  reason: collision with root package name */
        private static final String f1574c = "arch_disk_io_%d";

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f1575a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format(f1574c, Integer.valueOf(this.f1575a.getAndIncrement())));
            return thread;
        }
    });
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private volatile Handler f1573c;

    private static Handler a(@NonNull Looper looper) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return Handler.createAsync(looper);
        }
        if (i2 >= 16) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
            } catch (InvocationTargetException unused2) {
                return new Handler(looper);
            }
        }
        return new Handler(looper);
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void executeOnDiskIO(Runnable runnable) {
        this.f1572b.execute(runnable);
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void postToMainThread(Runnable runnable) {
        if (this.f1573c == null) {
            synchronized (this.f1571a) {
                if (this.f1573c == null) {
                    this.f1573c = a(Looper.getMainLooper());
                }
            }
        }
        this.f1573c.post(runnable);
    }
}
