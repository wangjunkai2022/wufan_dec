package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
/* compiled from: Executors.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0013\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0007\u001a\n\u0010\b\u001a\u00020\u0004*\u00020\u0005¨\u0006\t"}, d2 = {"Ljava/util/concurrent/ExecutorService;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", ai.aD, "(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Ljava/util/concurrent/Executor;", "Lkotlinx/coroutines/CoroutineDispatcher;", "b", "(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;", "a", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class u1 {
    @NotNull
    public static final Executor a(@NotNull CoroutineDispatcher coroutineDispatcher) {
        ExecutorCoroutineDispatcher executorCoroutineDispatcher = coroutineDispatcher instanceof ExecutorCoroutineDispatcher ? (ExecutorCoroutineDispatcher) coroutineDispatcher : null;
        return executorCoroutineDispatcher == null ? new f1(coroutineDispatcher) : executorCoroutineDispatcher.y();
    }

    @JvmName(name = "from")
    @NotNull
    public static final CoroutineDispatcher b(@NotNull Executor executor) {
        f1 f1Var = executor instanceof f1 ? (f1) executor : null;
        return f1Var == null ? new t1(executor) : f1Var.f71204a;
    }

    @JvmName(name = "from")
    @NotNull
    public static final ExecutorCoroutineDispatcher c(@NotNull ExecutorService executorService) {
        return new t1(executorService);
    }
}
