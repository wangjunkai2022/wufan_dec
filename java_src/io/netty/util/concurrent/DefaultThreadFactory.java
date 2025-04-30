package io.netty.util.concurrent;

import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;
import java.util.Locale;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public class DefaultThreadFactory implements ThreadFactory {
    private static final AtomicInteger poolId = new AtomicInteger();
    private final boolean daemon;
    private final AtomicInteger nextId;
    private final String prefix;
    private final int priority;
    protected final ThreadGroup threadGroup;

    public DefaultThreadFactory(Class<?> cls) {
        this(cls, false, 5);
    }

    public static String toPoolName(Class<?> cls) {
        ObjectUtil.checkNotNull(cls, "poolType");
        String simpleClassName = StringUtil.simpleClassName(cls);
        int length = simpleClassName.length();
        if (length != 0) {
            if (length != 1) {
                if (Character.isUpperCase(simpleClassName.charAt(0)) && Character.isLowerCase(simpleClassName.charAt(1))) {
                    return Character.toLowerCase(simpleClassName.charAt(0)) + simpleClassName.substring(1);
                }
                return simpleClassName;
            }
            return simpleClassName.toLowerCase(Locale.US);
        }
        return "unknown";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Runnable wrap = FastThreadLocalRunnable.wrap(runnable);
        Thread newThread = newThread(wrap, this.prefix + this.nextId.incrementAndGet());
        try {
            boolean isDaemon = newThread.isDaemon();
            boolean z3 = this.daemon;
            if (isDaemon != z3) {
                newThread.setDaemon(z3);
            }
            int priority = newThread.getPriority();
            int i2 = this.priority;
            if (priority != i2) {
                newThread.setPriority(i2);
            }
        } catch (Exception unused) {
        }
        return newThread;
    }

    public DefaultThreadFactory(String str) {
        this(str, false, 5);
    }

    public DefaultThreadFactory(Class<?> cls, boolean z3) {
        this(cls, z3, 5);
    }

    public DefaultThreadFactory(String str, boolean z3) {
        this(str, z3, 5);
    }

    public DefaultThreadFactory(Class<?> cls, int i2) {
        this(cls, false, i2);
    }

    public DefaultThreadFactory(String str, int i2) {
        this(str, false, i2);
    }

    protected Thread newThread(Runnable runnable, String str) {
        return new FastThreadLocalThread(this.threadGroup, runnable, str);
    }

    public DefaultThreadFactory(Class<?> cls, boolean z3, int i2) {
        this(toPoolName(cls), z3, i2);
    }

    public DefaultThreadFactory(String str, boolean z3, int i2, ThreadGroup threadGroup) {
        this.nextId = new AtomicInteger();
        ObjectUtil.checkNotNull(str, "poolName");
        if (i2 >= 1 && i2 <= 10) {
            this.prefix = str + '-' + poolId.incrementAndGet() + '-';
            this.daemon = z3;
            this.priority = i2;
            this.threadGroup = threadGroup;
            return;
        }
        throw new IllegalArgumentException("priority: " + i2 + " (expected: Thread.MIN_PRIORITY <= priority <= Thread.MAX_PRIORITY)");
    }

    public DefaultThreadFactory(String str, boolean z3, int i2) {
        this(str, z3, i2, System.getSecurityManager() == null ? Thread.currentThread().getThreadGroup() : System.getSecurityManager().getThreadGroup());
    }
}
