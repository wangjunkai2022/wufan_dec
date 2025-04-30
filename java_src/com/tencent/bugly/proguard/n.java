package com.tencent.bugly.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public static final long f59761a = System.currentTimeMillis();

    /* renamed from: b  reason: collision with root package name */
    private static n f59762b;

    /* renamed from: c  reason: collision with root package name */
    private Context f59763c;

    /* renamed from: f  reason: collision with root package name */
    private SharedPreferences f59766f;

    /* renamed from: e  reason: collision with root package name */
    private Map<Integer, Map<String, m>> f59765e = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private String f59764d = com.tencent.bugly.crashreport.common.info.a.b().f59364d;

    private n(Context context) {
        this.f59763c = context;
        this.f59766f = context.getSharedPreferences("crashrecord", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
        if (r6 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0046, code lost:
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0052, code lost:
        if (r6 == null) goto L22;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized <T extends java.util.List<?>> T c(int r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            r0 = 0
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            android.content.Context r3 = r5.f59763c     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            java.lang.String r4 = "crashrecord"
            java.io.File r3 = r3.getDir(r4, r1)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            r4.<init>()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            r4.append(r6)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            r2.<init>(r3, r6)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            boolean r6 = r2.exists()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            if (r6 != 0) goto L24
            monitor-exit(r5)
            return r0
        L24:
            java.io.ObjectInputStream r6 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L39 java.lang.ClassNotFoundException -> L3c java.io.IOException -> L4a
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L39 java.lang.ClassNotFoundException -> L3c java.io.IOException -> L4a
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L39 java.lang.ClassNotFoundException -> L3c java.io.IOException -> L4a
            r6.<init>(r3)     // Catch: java.lang.Throwable -> L39 java.lang.ClassNotFoundException -> L3c java.io.IOException -> L4a
            java.lang.Object r2 = r6.readObject()     // Catch: java.lang.ClassNotFoundException -> L3d java.io.IOException -> L4b java.lang.Throwable -> L55
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.ClassNotFoundException -> L3d java.io.IOException -> L4b java.lang.Throwable -> L55
            r6.close()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            monitor-exit(r5)
            return r2
        L39:
            r2 = move-exception
            r6 = r0
            goto L56
        L3c:
            r6 = r0
        L3d:
            java.lang.String r2 = "get object error"
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L55
            com.tencent.bugly.proguard.x.a(r2, r3)     // Catch: java.lang.Throwable -> L55
            if (r6 == 0) goto L65
        L46:
            r6.close()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            goto L65
        L4a:
            r6 = r0
        L4b:
            java.lang.String r2 = "open record file error"
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L55
            com.tencent.bugly.proguard.x.a(r2, r3)     // Catch: java.lang.Throwable -> L55
            if (r6 == 0) goto L65
            goto L46
        L55:
            r2 = move-exception
        L56:
            if (r6 == 0) goto L5b
            r6.close()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
        L5b:
            throw r2     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
        L5c:
            r6 = move-exception
            goto L67
        L5e:
            java.lang.String r6 = "readCrashRecord error"
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L5c
            com.tencent.bugly.proguard.x.e(r6, r1)     // Catch: java.lang.Throwable -> L5c
        L65:
            monitor-exit(r5)
            return r0
        L67:
            monitor-exit(r5)
            goto L6a
        L69:
            throw r6
        L6a:
            goto L69
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.n.c(int):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean b(int i2) {
        try {
            List<m> c4 = c(i2);
            if (c4 == null) {
                return false;
            }
            long currentTimeMillis = System.currentTimeMillis();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (m mVar : c4) {
                String str = mVar.f59755b;
                if (str != null && str.equalsIgnoreCase(this.f59764d) && mVar.f59757d > 0) {
                    arrayList.add(mVar);
                }
                if (mVar.f59756c + 86400000 < currentTimeMillis) {
                    arrayList2.add(mVar);
                }
            }
            Collections.sort(arrayList);
            if (arrayList.size() >= 2) {
                if (arrayList.size() <= 0 || ((m) arrayList.get(arrayList.size() - 1)).f59756c + 86400000 >= currentTimeMillis) {
                    return true;
                }
                c4.clear();
                a(i2, (int) c4);
                return false;
            }
            c4.removeAll(arrayList2);
            a(i2, (int) c4);
            return false;
        } catch (Exception unused) {
            x.e("isFrequentCrash failed", new Object[0]);
            return false;
        }
    }

    public static synchronized n a(Context context) {
        n nVar;
        synchronized (n.class) {
            if (f59762b == null) {
                f59762b = new n(context);
            }
            nVar = f59762b;
        }
        return nVar;
    }

    public static synchronized n a() {
        n nVar;
        synchronized (n.class) {
            nVar = f59762b;
        }
        return nVar;
    }

    public final void a(int i2, final int i4) {
        w.a().a(new Runnable() { // from class: com.tencent.bugly.proguard.n.1
            @Override // java.lang.Runnable
            public final void run() {
                m mVar;
                String str;
                String str2;
                try {
                    if (TextUtils.isEmpty(n.this.f59764d)) {
                        return;
                    }
                    List<m> c4 = n.this.c(r2);
                    if (c4 == null) {
                        c4 = new ArrayList();
                    }
                    if (n.this.f59765e.get(Integer.valueOf(r2)) == null) {
                        n.this.f59765e.put(Integer.valueOf(r2), new HashMap());
                    }
                    if (((Map) n.this.f59765e.get(Integer.valueOf(r2))).get(n.this.f59764d) != null) {
                        mVar = (m) ((Map) n.this.f59765e.get(Integer.valueOf(r2))).get(n.this.f59764d);
                        mVar.f59757d = i4;
                    } else {
                        mVar = new m();
                        mVar.f59754a = r2;
                        mVar.f59760g = n.f59761a;
                        mVar.f59755b = n.this.f59764d;
                        mVar.f59759f = com.tencent.bugly.crashreport.common.info.a.b().f59370j;
                        mVar.f59758e = com.tencent.bugly.crashreport.common.info.a.b().f59366f;
                        mVar.f59756c = System.currentTimeMillis();
                        mVar.f59757d = i4;
                        ((Map) n.this.f59765e.get(Integer.valueOf(r2))).put(n.this.f59764d, mVar);
                    }
                    ArrayList arrayList = new ArrayList();
                    boolean z3 = false;
                    for (m mVar2 : c4) {
                        if (mVar2.f59760g == mVar.f59760g && (str2 = mVar2.f59755b) != null && str2.equalsIgnoreCase(mVar.f59755b)) {
                            z3 = true;
                            mVar2.f59757d = mVar.f59757d;
                        }
                        String str3 = mVar2.f59758e;
                        if ((str3 != null && !str3.equalsIgnoreCase(mVar.f59758e)) || (((str = mVar2.f59759f) != null && !str.equalsIgnoreCase(mVar.f59759f)) || mVar2.f59757d <= 0)) {
                            arrayList.add(mVar2);
                        }
                    }
                    c4.removeAll(arrayList);
                    if (!z3) {
                        c4.add(mVar);
                    }
                    n.this.a(r2, (int) c4);
                } catch (Exception unused) {
                    x.e("saveCrashRecord failed", new Object[0]);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004f A[Catch: all -> 0x0053, Exception -> 0x0055, TRY_ENTER, TryCatch #4 {Exception -> 0x0055, blocks: (B:7:0x0006, B:11:0x002d, B:21:0x0046, B:27:0x004f, B:28:0x0052), top: B:36:0x0006, outer: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized <T extends java.util.List<?>> void a(int r5, T r6) {
        /*
            r4 = this;
            monitor-enter(r4)
            if (r6 != 0) goto L5
            monitor-exit(r4)
            return
        L5:
            r0 = 0
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            android.content.Context r2 = r4.f59763c     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            java.lang.String r3 = "crashrecord"
            java.io.File r2 = r2.getDir(r3, r0)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            r3.<init>()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            r3.append(r5)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            java.lang.String r5 = r3.toString()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            r1.<init>(r2, r5)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            r5 = 0
            java.io.ObjectOutputStream r2 = new java.io.ObjectOutputStream     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L37
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L37
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L37
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L37
            r2.writeObject(r6)     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L4c
            r2.close()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            goto L5c
        L31:
            r5 = move-exception
            goto L3a
        L33:
            r6 = move-exception
            r2 = r5
            r5 = r6
            goto L4d
        L37:
            r6 = move-exception
            r2 = r5
            r5 = r6
        L3a:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L4c
            java.lang.String r5 = "open record file error"
            java.lang.Object[] r6 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L4c
            com.tencent.bugly.proguard.x.a(r5, r6)     // Catch: java.lang.Throwable -> L4c
            if (r2 == 0) goto L4a
            r2.close()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            goto L5c
        L4a:
            monitor-exit(r4)
            return
        L4c:
            r5 = move-exception
        L4d:
            if (r2 == 0) goto L52
            r2.close()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
        L52:
            throw r5     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
        L53:
            r5 = move-exception
            goto L5e
        L55:
            java.lang.String r5 = "writeCrashRecord error"
            java.lang.Object[] r6 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L53
            com.tencent.bugly.proguard.x.e(r5, r6)     // Catch: java.lang.Throwable -> L53
        L5c:
            monitor-exit(r4)
            return
        L5e:
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.n.a(int, java.util.List):void");
    }

    public final synchronized boolean a(final int i2) {
        boolean z3;
        z3 = true;
        try {
            SharedPreferences sharedPreferences = this.f59766f;
            z3 = sharedPreferences.getBoolean(i2 + "_" + this.f59764d, true);
            w.a().a(new Runnable() { // from class: com.tencent.bugly.proguard.n.2
                @Override // java.lang.Runnable
                public final void run() {
                    boolean b4 = n.this.b(i2);
                    SharedPreferences.Editor edit = n.this.f59766f.edit();
                    edit.putBoolean(i2 + "_" + n.this.f59764d, !b4).commit();
                }
            });
        } catch (Exception unused) {
            x.e("canInit error", new Object[0]);
            return z3;
        }
        return z3;
    }
}
