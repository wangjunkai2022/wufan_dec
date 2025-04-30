package io.netty.util;

import io.netty.util.internal.StringUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
/* loaded from: classes5.dex */
public final class ReferenceCountUtil {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(ReferenceCountUtil.class);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class ReleasingTask implements Runnable {
        private final int decrement;
        private final ReferenceCounted obj;

        ReleasingTask(ReferenceCounted referenceCounted, int i2) {
            this.obj = referenceCounted;
            this.decrement = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!this.obj.release(this.decrement)) {
                    ReferenceCountUtil.logger.warn("Non-zero refCnt: {}", this);
                } else {
                    ReferenceCountUtil.logger.debug("Released: {}", this);
                }
            } catch (Exception e4) {
                ReferenceCountUtil.logger.warn("Failed to release an object: {}", this.obj, e4);
            }
        }

        public String toString() {
            return StringUtil.simpleClassName(this.obj) + ".release(" + this.decrement + ") refCnt: " + this.obj.refCnt();
        }
    }

    static {
        ResourceLeakDetector.addExclusions(ReferenceCountUtil.class, "touch");
    }

    private ReferenceCountUtil() {
    }

    public static int refCnt(Object obj) {
        if (obj instanceof ReferenceCounted) {
            return ((ReferenceCounted) obj).refCnt();
        }
        return -1;
    }

    public static boolean release(Object obj) {
        if (obj instanceof ReferenceCounted) {
            return ((ReferenceCounted) obj).release();
        }
        return false;
    }

    @Deprecated
    public static <T> T releaseLater(T t3) {
        return (T) releaseLater(t3, 1);
    }

    public static <T> T retain(T t3) {
        return t3 instanceof ReferenceCounted ? (T) ((ReferenceCounted) t3).retain() : t3;
    }

    public static void safeRelease(Object obj) {
        try {
            release(obj);
        } catch (Throwable th) {
            logger.warn("Failed to release a message: {}", obj, th);
        }
    }

    public static <T> T touch(T t3) {
        return t3 instanceof ReferenceCounted ? (T) ((ReferenceCounted) t3).touch() : t3;
    }

    @Deprecated
    public static <T> T releaseLater(T t3, int i2) {
        if (t3 instanceof ReferenceCounted) {
            ThreadDeathWatcher.watch(Thread.currentThread(), new ReleasingTask((ReferenceCounted) t3, i2));
        }
        return t3;
    }

    public static boolean release(Object obj, int i2) {
        if (obj instanceof ReferenceCounted) {
            return ((ReferenceCounted) obj).release(i2);
        }
        return false;
    }

    public static <T> T retain(T t3, int i2) {
        return t3 instanceof ReferenceCounted ? (T) ((ReferenceCounted) t3).retain(i2) : t3;
    }

    public static void safeRelease(Object obj, int i2) {
        try {
            release(obj, i2);
        } catch (Throwable th) {
            if (logger.isWarnEnabled()) {
                logger.warn("Failed to release a message: {} (decrement: {})", obj, Integer.valueOf(i2), th);
            }
        }
    }

    public static <T> T touch(T t3, Object obj) {
        return t3 instanceof ReferenceCounted ? (T) ((ReferenceCounted) t3).touch(obj) : t3;
    }
}
