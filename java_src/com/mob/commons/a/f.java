package com.mob.commons.a;

import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.ReflectHelper;
import com.mob.tools.utils.ResHelper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes4.dex */
public class f extends c {

    /* renamed from: c  reason: collision with root package name */
    private long f52794c;

    public f() {
        super(com.mob.commons.i.a("002:gf;k"), 0L, com.mob.commons.i.a("002:gf;k"), 0L);
        this.f52794c = 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.HashMap<java.lang.String, java.lang.Object> n() {
        /*
            r8 = this;
            android.content.Context r0 = com.mob.MobSDK.getContext()
            java.lang.String r1 = com.mob.commons.j.f53040d
            java.io.File r0 = com.mob.tools.utils.ResHelper.getDataCacheFile(r0, r1)
            if (r0 == 0) goto L18
            boolean r1 = r0.exists()
            if (r1 != 0) goto L18
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            return r0
        L18:
            r1 = 1
            r2 = 0
            r3 = 2
            r4 = 0
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L3c
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L3c
            java.io.ObjectInputStream r0 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L39
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L39
            java.lang.Object r6 = r0.readObject()     // Catch: java.lang.Throwable -> L37
            java.util.HashMap r6 = (java.util.HashMap) r6     // Catch: java.lang.Throwable -> L37
            java.io.Closeable[] r3 = new java.io.Closeable[r3]
            r3[r2] = r0
            r3[r1] = r5
            com.mob.commons.r.a(r3)
            r4 = r6
            goto L4f
        L37:
            r6 = move-exception
            goto L3f
        L39:
            r6 = move-exception
            r0 = r4
            goto L3f
        L3c:
            r6 = move-exception
            r0 = r4
            r5 = r0
        L3f:
            com.mob.tools.log.NLog r7 = com.mob.tools.MobLog.getInstance()     // Catch: java.lang.Throwable -> L57
            r7.d(r6)     // Catch: java.lang.Throwable -> L57
            java.io.Closeable[] r3 = new java.io.Closeable[r3]
            r3[r2] = r0
            r3[r1] = r5
            com.mob.commons.r.a(r3)
        L4f:
            if (r4 != 0) goto L56
            java.util.HashMap r4 = new java.util.HashMap
            r4.<init>()
        L56:
            return r4
        L57:
            r4 = move-exception
            java.io.Closeable[] r3 = new java.io.Closeable[r3]
            r3[r2] = r0
            r3[r1] = r5
            com.mob.commons.r.a(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.a.f.n():java.util.HashMap");
    }

    @Override // com.mob.commons.a.c
    protected void a() {
        if (k() > 0) {
            final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
            DeviceHelper.getInstance(MobSDK.getContext()).getBatteryState(new ReflectHelper.a<HashMap<String, Object>, Void>() { // from class: com.mob.commons.a.f.1
                @Override // com.mob.tools.utils.ReflectHelper.a
                public Void a(HashMap<String, Object> hashMap) {
                    try {
                        linkedBlockingQueue.offer(hashMap);
                        return null;
                    } catch (Throwable unused) {
                        return null;
                    }
                }
            });
            try {
                this.f52794c = a((HashMap) linkedBlockingQueue.take()) / 1000;
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.mob.commons.a.c
    protected void b() {
        if (this.f52794c == 0) {
            this.f52794c = k();
        }
        a(this.f52794c);
    }

    @Override // com.mob.commons.a.c
    protected void j() {
        this.f52794c = 0L;
    }

    private void b(HashMap<String, Object> hashMap) {
        File dataCacheFile = ResHelper.getDataCacheFile(MobSDK.getContext(), com.mob.commons.j.f53040d);
        if (dataCacheFile != null && (hashMap == null || hashMap.isEmpty())) {
            dataCacheFile.delete();
            return;
        }
        ObjectOutputStream objectOutputStream = null;
        try {
            ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new FileOutputStream(dataCacheFile));
            try {
                objectOutputStream2.writeObject(hashMap);
                objectOutputStream2.close();
                com.mob.commons.r.a(objectOutputStream2);
            } catch (Throwable th) {
                th = th;
                objectOutputStream = objectOutputStream2;
                try {
                    MobLog.getInstance().d(th);
                    com.mob.commons.r.a(objectOutputStream);
                } catch (Throwable th2) {
                    com.mob.commons.r.a(objectOutputStream);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x00f1, code lost:
        if (r6.size() == r0) goto L50;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b2 A[Catch: all -> 0x03cf, TryCatch #9 {all -> 0x03cf, blocks: (B:3:0x0006, B:43:0x00b2, B:44:0x00b7, B:52:0x00c9, B:54:0x00cf, B:56:0x00d5, B:58:0x00db, B:60:0x00e1, B:62:0x00e7, B:64:0x00ed, B:67:0x0120, B:69:0x036e, B:71:0x0378, B:72:0x0385, B:76:0x0391, B:79:0x0397, B:80:0x03cb, B:66:0x00f3, B:41:0x00a9), top: B:103:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00bd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x036e A[Catch: all -> 0x03cf, TRY_LEAVE, TryCatch #9 {all -> 0x03cf, blocks: (B:3:0x0006, B:43:0x00b2, B:44:0x00b7, B:52:0x00c9, B:54:0x00cf, B:56:0x00d5, B:58:0x00db, B:60:0x00e1, B:62:0x00e7, B:64:0x00ed, B:67:0x0120, B:69:0x036e, B:71:0x0378, B:72:0x0385, B:76:0x0391, B:79:0x0397, B:80:0x03cb, B:66:0x00f3, B:41:0x00a9), top: B:103:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0397 A[Catch: all -> 0x03cf, TryCatch #9 {all -> 0x03cf, blocks: (B:3:0x0006, B:43:0x00b2, B:44:0x00b7, B:52:0x00c9, B:54:0x00cf, B:56:0x00d5, B:58:0x00db, B:60:0x00e1, B:62:0x00e7, B:64:0x00ed, B:67:0x0120, B:69:0x036e, B:71:0x0378, B:72:0x0385, B:76:0x0391, B:79:0x0397, B:80:0x03cb, B:66:0x00f3, B:41:0x00a9), top: B:103:0x0006 }] */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r16v0, types: [com.mob.commons.a.f, com.mob.commons.a.c] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long a(java.util.HashMap<java.lang.String, java.lang.Object> r17) {
        /*
            Method dump skipped, instructions count: 984
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.a.f.a(java.util.HashMap):long");
    }
}
