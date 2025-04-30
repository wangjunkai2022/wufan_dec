package org.jboss.netty.util.internal;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* compiled from: ExecutorUtil.java */
/* loaded from: classes5.dex */
public final class e {
    private e() {
    }

    public static boolean a(Executor executor) {
        return (executor instanceof ExecutorService) && ((ExecutorService) executor).isShutdown();
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x006e A[EDGE_INSN: B:30:0x0069->B:50:0x006e ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x005a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(java.lang.ThreadLocal<java.util.concurrent.Executor> r6, java.util.concurrent.Executor... r7) {
        /*
            java.lang.String r0 = "executors"
            java.util.Objects.requireNonNull(r7, r0)
            int r0 = r7.length
            java.util.concurrent.Executor[] r1 = new java.util.concurrent.Executor[r0]
            r2 = 0
            r3 = 0
        La:
            int r4 = r7.length
            if (r3 >= r4) goto L34
            r4 = r7[r3]
            if (r4 == 0) goto L18
            r4 = r7[r3]
            r1[r3] = r4
            int r3 = r3 + 1
            goto La
        L18:
            java.lang.NullPointerException r6 = new java.lang.NullPointerException
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "executors["
            r7.append(r0)
            r7.append(r3)
            r0 = 93
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            r6.<init>(r7)
            throw r6
        L34:
            java.lang.Object r6 = r6.get()
            java.util.concurrent.Executor r6 = (java.util.concurrent.Executor) r6
            if (r6 == 0) goto L4e
            r7 = 0
        L3d:
            if (r7 >= r0) goto L4e
            r3 = r1[r7]
            if (r3 == r6) goto L46
            int r7 = r7 + 1
            goto L3d
        L46:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "An Executor cannot be shut down from the thread acquired from itself.  Please make sure you are not calling releaseExternalResources() from an I/O worker thread."
            r6.<init>(r7)
            throw r6
        L4e:
            r6 = 0
        L4f:
            if (r2 >= r0) goto L71
            r7 = r1[r2]
            boolean r3 = r7 instanceof java.util.concurrent.ExecutorService
            if (r3 != 0) goto L58
            goto L6e
        L58:
            java.util.concurrent.ExecutorService r7 = (java.util.concurrent.ExecutorService) r7
        L5a:
            r7.shutdownNow()     // Catch: java.lang.SecurityException -> L5e java.lang.NullPointerException -> L61
            goto L61
        L5e:
            r7.shutdown()     // Catch: java.lang.NullPointerException -> L61 java.lang.SecurityException -> L6e
        L61:
            r3 = 100
            java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.InterruptedException -> L6c
            boolean r3 = r7.awaitTermination(r3, r5)     // Catch: java.lang.InterruptedException -> L6c
            if (r3 == 0) goto L5a
            goto L6e
        L6c:
            r6 = 1
            goto L5a
        L6e:
            int r2 = r2 + 1
            goto L4f
        L71:
            if (r6 == 0) goto L7a
            java.lang.Thread r6 = java.lang.Thread.currentThread()
            r6.interrupt()
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.internal.e.b(java.lang.ThreadLocal, java.util.concurrent.Executor[]):void");
    }

    public static void c(Executor... executorArr) {
        b(c.f73730a, executorArr);
    }
}
