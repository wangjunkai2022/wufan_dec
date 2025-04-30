package app.mgsim.arena;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public class ExecutorServiceFactory {
    private static ExecutorService mExecutors = Executors.newCachedThreadPool();

    public static ExecutorService getThreadPool() {
        return mExecutors;
    }
}
