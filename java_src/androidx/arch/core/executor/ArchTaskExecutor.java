package androidx.arch.core.executor;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.concurrent.Executor;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ArchTaskExecutor extends TaskExecutor {

    /* renamed from: c  reason: collision with root package name */
    private static volatile ArchTaskExecutor f1566c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private static final Executor f1567d = new Executor() { // from class: androidx.arch.core.executor.ArchTaskExecutor.1
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            ArchTaskExecutor.getInstance().postToMainThread(runnable);
        }
    };
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private static final Executor f1568e = new Executor() { // from class: androidx.arch.core.executor.ArchTaskExecutor.2
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            ArchTaskExecutor.getInstance().executeOnDiskIO(runnable);
        }
    };
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private TaskExecutor f1569a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private TaskExecutor f1570b;

    private ArchTaskExecutor() {
        DefaultTaskExecutor defaultTaskExecutor = new DefaultTaskExecutor();
        this.f1570b = defaultTaskExecutor;
        this.f1569a = defaultTaskExecutor;
    }

    @NonNull
    public static Executor getIOThreadExecutor() {
        return f1568e;
    }

    @NonNull
    public static ArchTaskExecutor getInstance() {
        if (f1566c != null) {
            return f1566c;
        }
        synchronized (ArchTaskExecutor.class) {
            if (f1566c == null) {
                f1566c = new ArchTaskExecutor();
            }
        }
        return f1566c;
    }

    @NonNull
    public static Executor getMainThreadExecutor() {
        return f1567d;
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void executeOnDiskIO(Runnable runnable) {
        this.f1569a.executeOnDiskIO(runnable);
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public boolean isMainThread() {
        return this.f1569a.isMainThread();
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void postToMainThread(Runnable runnable) {
        this.f1569a.postToMainThread(runnable);
    }

    public void setDelegate(@Nullable TaskExecutor taskExecutor) {
        if (taskExecutor == null) {
            taskExecutor = this.f1570b;
        }
        this.f1569a = taskExecutor;
    }
}
