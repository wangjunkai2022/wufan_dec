package com.join.android.app.common.utils;

import android.annotation.TargetApi;
import com.github.snowdream.android.app.downloader.DownloadTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: ThreadPoolManager.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static String f17254a = "k";

    /* renamed from: b  reason: collision with root package name */
    private static final int f17255b = 3;

    /* renamed from: c  reason: collision with root package name */
    private static ThreadPoolExecutor f17256c = new e(3, 3, 500, TimeUnit.SECONDS, new LinkedBlockingQueue());

    public static synchronized void a() {
        synchronized (k.class) {
            f17256c.getQueue().clear();
        }
    }

    static synchronized boolean b() {
        boolean z3;
        synchronized (k.class) {
            if (f17256c.getQueue().size() <= 0) {
                z3 = f17256c.getActiveCount() == 3;
            }
        }
        return z3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
        r1.remove();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized void c(com.github.snowdream.android.app.downloader.DownloadTask r4) {
        /*
            java.lang.Class<com.join.android.app.common.utils.k> r0 = com.join.android.app.common.utils.k.class
            monitor-enter(r0)
            java.util.concurrent.ThreadPoolExecutor r1 = com.join.android.app.common.utils.k.f17256c     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.BlockingQueue r1 = r1.getQueue()     // Catch: java.lang.Throwable -> L2c
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L2c
        Ld:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L2c
            if (r2 == 0) goto L2a
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L2c
            com.github.snowdream.android.app.downloader.a r2 = (com.github.snowdream.android.app.downloader.a) r2     // Catch: java.lang.Throwable -> L2c
            java.lang.String r2 = r2.h()     // Catch: java.lang.Throwable -> L2c
            java.lang.String r3 = r4.getCrc_link_type_val()     // Catch: java.lang.Throwable -> L2c
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L2c
            if (r2 == 0) goto Ld
            r1.remove()     // Catch: java.lang.Throwable -> L2c
        L2a:
            monitor-exit(r0)
            return
        L2c:
            r4 = move-exception
            monitor-exit(r0)
            goto L30
        L2f:
            throw r4
        L30:
            goto L2f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.utils.k.c(com.github.snowdream.android.app.downloader.DownloadTask):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
        r3 = new java.lang.StringBuilder();
        r3.append("stopWaitingTask=");
        r3.append(r2.h());
        r5.setStatus(40);
        r1.remove();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized void d(com.github.snowdream.android.app.downloader.DownloadTask r5) {
        /*
            java.lang.Class<com.join.android.app.common.utils.k> r0 = com.join.android.app.common.utils.k.class
            monitor-enter(r0)
            java.util.concurrent.ThreadPoolExecutor r1 = com.join.android.app.common.utils.k.f17256c     // Catch: java.lang.Throwable -> L42
            java.util.concurrent.BlockingQueue r1 = r1.getQueue()     // Catch: java.lang.Throwable -> L42
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L42
        Ld:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L42
            if (r2 == 0) goto L40
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L42
            com.github.snowdream.android.app.downloader.a r2 = (com.github.snowdream.android.app.downloader.a) r2     // Catch: java.lang.Throwable -> L42
            java.lang.String r3 = r2.h()     // Catch: java.lang.Throwable -> L42
            java.lang.String r4 = r5.getCrc_link_type_val()     // Catch: java.lang.Throwable -> L42
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> L42
            if (r3 == 0) goto Ld
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L42
            r3.<init>()     // Catch: java.lang.Throwable -> L42
            java.lang.String r4 = "stopWaitingTask="
            r3.append(r4)     // Catch: java.lang.Throwable -> L42
            java.lang.String r2 = r2.h()     // Catch: java.lang.Throwable -> L42
            r3.append(r2)     // Catch: java.lang.Throwable -> L42
            r2 = 40
            r5.setStatus(r2)     // Catch: java.lang.Throwable -> L42
            r1.remove()     // Catch: java.lang.Throwable -> L42
        L40:
            monitor-exit(r0)
            return
        L42:
            r5 = move-exception
            monitor-exit(r0)
            goto L46
        L45:
            throw r5
        L46:
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.utils.k.d(com.github.snowdream.android.app.downloader.DownloadTask):void");
    }

    @TargetApi(11)
    public static synchronized void e(DownloadTask downloadTask) {
        synchronized (k.class) {
            StringBuilder sb = new StringBuilder();
            sb.append(downloadTask.getStatus());
            sb.append(";getQueue=");
            sb.append(f17256c.getQueue().size());
            sb.append(";exec.getActiveCount()=");
            sb.append(f17256c.getActiveCount());
            sb.append(";core=");
            sb.append(f17256c.getCorePoolSize());
            sb.append(";getPoolSize()=");
            sb.append(f17256c.getPoolSize());
            sb.append("exec.getTaskCount()=");
            sb.append(f17256c.getTaskCount());
            if (b()) {
                org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.j(downloadTask.getCrc_link_type_val(), 29));
            }
            try {
                f17256c.execute(new com.github.snowdream.android.app.downloader.a(downloadTask.getUrl(), downloadTask.getCrc_link_type_val(), downloadTask));
            } catch (Exception unused) {
            }
        }
    }
}
