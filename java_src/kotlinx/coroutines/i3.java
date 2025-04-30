package kotlinx.coroutines;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ThreadPoolDispatcher.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0018\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u0000H\u0007¨\u0006\u0007"}, d2 = {"", "name", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", com.xinzhu.overmind.utils.helpers.d.f64708a, "", "nThreads", "b", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class i3 {
    @ObsoleteCoroutinesApi
    @NotNull
    public static final ExecutorCoroutineDispatcher b(final int i2, @NotNull final String str) {
        if (i2 >= 1) {
            final AtomicInteger atomicInteger = new AtomicInteger();
            return u1.c(Executors.newScheduledThreadPool(i2, new ThreadFactory() { // from class: kotlinx.coroutines.h3
                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    Thread c4;
                    c4 = i3.c(i2, str, atomicInteger, runnable);
                    return c4;
                }
            }));
        }
        throw new IllegalArgumentException(("Expected at least one thread, but " + i2 + " specified").toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread c(int i2, String str, AtomicInteger atomicInteger, Runnable runnable) {
        if (i2 != 1) {
            str = str + '-' + atomicInteger.incrementAndGet();
        }
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(true);
        return thread;
    }

    @ObsoleteCoroutinesApi
    @NotNull
    public static final ExecutorCoroutineDispatcher d(@NotNull String str) {
        return b(1, str);
    }
}
