package org.jboss.netty.util;

import java.util.Objects;
/* compiled from: ThreadRenamingRunnable.java */
/* loaded from: classes5.dex */
public class e implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    private static volatile d f73647d = d.f73645a;

    /* renamed from: a  reason: collision with root package name */
    private final d f73648a;

    /* renamed from: b  reason: collision with root package name */
    private final Runnable f73649b;

    /* renamed from: c  reason: collision with root package name */
    private final String f73650c;

    public e(Runnable runnable, String str, d dVar) {
        Objects.requireNonNull(runnable, "runnable");
        Objects.requireNonNull(str, "proposedThreadName");
        this.f73649b = runnable;
        this.f73648a = dVar;
        this.f73650c = str;
    }

    private String a(String str) {
        String str2;
        try {
            d dVar = this.f73648a;
            if (dVar == null) {
                dVar = b();
            }
            str2 = dVar.a(str, this.f73650c);
        } catch (Throwable th) {
            th.printStackTrace();
            str2 = null;
        }
        return str2 == null ? str : str2;
    }

    public static d b() {
        return f73647d;
    }

    public static void c(d dVar) {
        Objects.requireNonNull(dVar, "threadNameDeterminer");
        f73647d = dVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0023 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r4 = this;
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.String r1 = r0.getName()
            java.lang.String r2 = r4.a(r1)
            boolean r3 = r1.equals(r2)
            if (r3 != 0) goto L1b
            r0.setName(r2)     // Catch: java.lang.SecurityException -> L17
            r2 = 1
            goto L1c
        L17:
            r2 = move-exception
            r2.printStackTrace()
        L1b:
            r2 = 0
        L1c:
            java.lang.Runnable r3 = r4.f73649b     // Catch: java.lang.Throwable -> L27
            r3.run()     // Catch: java.lang.Throwable -> L27
            if (r2 == 0) goto L26
            r0.setName(r1)
        L26:
            return
        L27:
            r3 = move-exception
            if (r2 == 0) goto L2d
            r0.setName(r1)
        L2d:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.e.run():void");
    }

    public e(Runnable runnable, String str) {
        this(runnable, str, null);
    }
}
