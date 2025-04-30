package com.mob.commons;

import android.os.Message;
import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.network.NetCommunicator;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.ResHelper;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f53017a = n.a("0041dkXgGchdc");

    /* renamed from: b  reason: collision with root package name */
    private static f f53018b;

    /* renamed from: c  reason: collision with root package name */
    private NetCommunicator f53019c;

    /* renamed from: f  reason: collision with root package name */
    private String f53022f;

    /* renamed from: h  reason: collision with root package name */
    private Runnable f53024h;

    /* renamed from: d  reason: collision with root package name */
    private SimpleDateFormat f53020d = new SimpleDateFormat(n.a("025_chchchchghfhfhghQgg?hbgcgc(ekke_efefdkdgdgdghbfb"));

    /* renamed from: e  reason: collision with root package name */
    private HashMap<String, Object> f53021e = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private int f53023g = -1;

    private f() {
        this.f53022f = null;
        try {
            this.f53022f = UUID.randomUUID().toString();
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        this.f53024h = new com.mob.tools.utils.c() { // from class: com.mob.commons.f.1
            @Override // com.mob.tools.utils.c
            protected void a() {
                if (b.c()) {
                    f.this.c();
                }
            }
        };
    }

    private synchronized int b() {
        return this.f53023g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        boolean z3;
        File[] listFiles;
        if (this.f53021e.size() > 0) {
            z3 = a(this.f53021e);
            if (!z3) {
                c(this.f53021e);
            }
            this.f53021e.clear();
        } else {
            z3 = true;
        }
        if (z3) {
            File f4 = f();
            if (!f4.exists() || !f4.isDirectory() || (listFiles = f4.listFiles()) == null || listFiles.length <= 0) {
                return;
            }
            for (File file : listFiles) {
                if (a((HashMap) ResHelper.readObjectFromFile(file.getAbsolutePath())) && !file.delete()) {
                    file.delete();
                }
            }
        }
    }

    private void d() {
        if (this.f53019c == null) {
            this.f53019c = new NetCommunicator(1024, "ab0a0a6473d1891d388773574764b239d4ad80cb2fd3a83d81d03901c1548c13fee7c9692c326e6682b239d4c5d0021d1b607642c47ec29f10b0602908c3e6c9", "23c3c8cb41c47dd288cc7f4c218fbc7c839a34e0a0d1b2130e87b7914936b120a2d6570ee7ac66282328d50f2acfd82f2259957c89baea32547758db05de9cd7c6822304c8e45742f24bbbe41c1e12f09e18c6fab4d078065f2e5aaed94c900c66e8bbf8a120eefa7bd1fb52114d529250084f5f6f369ed4ce9645978dd30c51");
        }
    }

    private boolean e() {
        String networkType = DeviceHelper.getInstance(MobSDK.getContext()).getNetworkType();
        return (networkType == null || n.a("004LcjdbcjGh").equals(networkType)) ? false : true;
    }

    private File f() {
        return new File(ResHelper.getDataCache(MobSDK.getContext()), f53017a);
    }

    public synchronized void b(int i2, Throwable th) {
        a(i2, th, null, true);
    }

    public static synchronized f a() {
        f fVar;
        synchronized (f.class) {
            if (f53018b == null) {
                f53018b = new f();
            }
            fVar = f53018b;
        }
        return fVar;
    }

    private void d(HashMap<String, Object> hashMap) throws Throwable {
        File[] listFiles;
        File f4 = f();
        if (!f4.exists() || !f4.isDirectory()) {
            f4.delete();
            f4.mkdirs();
        }
        StringBuilder sb = new StringBuilder();
        String str = f53017a;
        sb.append(str);
        sb.append("_");
        int i2 = 0;
        sb.append(0);
        File file = new File(f4, sb.toString());
        if (file.exists() && (listFiles = f4.listFiles()) != null && listFiles.length > 0) {
            file = new File(f4, str + "_0");
            while (file.exists()) {
                i2++;
                file = new File(f4, f53017a + "_" + i2);
            }
        }
        ResHelper.saveObjectToFile(file.getPath(), hashMap);
    }

    private boolean b(HashMap<String, Object> hashMap) throws Throwable {
        if (hashMap == null || hashMap.isEmpty()) {
            return true;
        }
        HashMap<String, Object> g4 = q.g();
        g4.put(n.a("006h!cgcgdbcgef"), hashMap);
        d();
        String str = c.a(c.f52909f) + n.a("004fgKcgdc");
        if ("1".equals(String.valueOf(hashMap.get("saa")))) {
            str = c.a("sdrl") + "/sdrl";
        }
        HashMap hashMap2 = (HashMap) this.f53019c.requestSynchronized(g4, str, false);
        return hashMap2 == null || hashMap2.isEmpty();
    }

    public synchronized void a(int i2) {
        this.f53023g = i2;
        if (i2 != 1 && i2 != 4 && i2 != 17 && i2 != 18 && i2 != 19 && i2 != 20) {
        }
        a(8, null, "ld vr " + i2, false);
    }

    public synchronized void a(int i2, Throwable th) {
        a(i2, th, null, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private synchronized void a(int i2, Throwable th, String str, boolean z3) {
        if (th == null) {
            MobLog.getInstance().d(str, new Object[0]);
        } else {
            MobLog.getInstance().d(th);
        }
        if (e.a()) {
            return;
        }
        final Message message = new Message();
        message.what = 1;
        message.arg1 = z3 ? 1 : 0;
        Object[] objArr = new Object[4];
        objArr[0] = Long.valueOf(System.currentTimeMillis());
        if (th == null) {
            th = str;
        }
        objArr[1] = th;
        objArr[2] = Integer.valueOf(i2);
        objArr[3] = Integer.valueOf(b());
        message.obj = objArr;
        u.f53115d.execute(new com.mob.tools.utils.c() { // from class: com.mob.commons.f.2
            @Override // com.mob.tools.utils.c
            protected void a() {
                f.this.a(message);
            }
        });
    }

    private void c(HashMap<String, Object> hashMap) {
        try {
            d(hashMap);
        } catch (Throwable th) {
            try {
                d(hashMap);
            } catch (Throwable unused) {
                MobLog.getInstance().d(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Message message) {
        String valueOf;
        if (this.f53021e.size() > 10) {
            c(this.f53021e);
            this.f53021e.clear();
        }
        Object[] objArr = (Object[]) message.obj;
        this.f53021e.put("saa", Integer.valueOf(message.arg1));
        this.f53021e.put(n.a("002^efFg"), this.f53022f);
        ArrayList arrayList = (ArrayList) this.f53021e.get(n.a("004Jdccdef6c"));
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        HashMap hashMap = new HashMap();
        hashMap.put(n.a("002-cf1c"), objArr[0]);
        if (objArr[1] instanceof Throwable) {
            valueOf = a((Throwable) objArr[1]);
        } else {
            valueOf = String.valueOf(objArr[1]);
        }
        if (!TextUtils.isEmpty(valueOf)) {
            valueOf = valueOf.replaceAll("\r\n\t", " ").replaceAll("\n\t", " ").replaceAll("\n", " ");
        }
        String a4 = n.a("002k0ee");
        hashMap.put(a4, "[" + this.f53020d.format(objArr[0]) + "][" + objArr[2] + "][" + objArr[3] + "] " + valueOf);
        hashMap.put(n.a("002hc"), objArr[2]);
        hashMap.put(n.a("002dNdb"), objArr[3]);
        arrayList.add(hashMap);
        this.f53021e.put(n.a("0048dccdef>c"), arrayList);
        if (e.a()) {
            return;
        }
        com.mob.commons.a.o.a().b(e() ? 10L : 120L, this.f53024h);
    }

    private boolean a(HashMap<String, Object> hashMap) {
        try {
            return b(hashMap);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            try {
                return b(hashMap);
            } catch (Throwable th2) {
                MobLog.getInstance().d(th2);
                return false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0033 A[Catch: all -> 0x0049, TRY_LEAVE, TryCatch #1 {all -> 0x0049, blocks: (B:18:0x002f, B:20:0x0033, B:24:0x003f), top: B:40:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003f A[Catch: all -> 0x0049, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0049, blocks: (B:18:0x002f, B:20:0x0033, B:24:0x003f), top: B:40:0x002f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(java.lang.Throwable r5) {
        /*
            r4 = this;
            java.lang.String r0 = ""
            if (r5 != 0) goto L5
            return r0
        L5:
            r1 = 0
            r2 = r5
        L7:
            if (r2 == 0) goto L13
            boolean r3 = r2 instanceof java.net.UnknownHostException     // Catch: java.lang.Throwable -> L2e
            if (r3 == 0) goto Le
            return r0
        Le:
            java.lang.Throwable r2 = r2.getCause()     // Catch: java.lang.Throwable -> L2e
            goto L7
        L13:
            java.io.StringWriter r0 = new java.io.StringWriter     // Catch: java.lang.Throwable -> L2e
            r0.<init>()     // Catch: java.lang.Throwable -> L2e
            java.io.PrintWriter r1 = new java.io.PrintWriter     // Catch: java.lang.Throwable -> L2b
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L2b
            r5.printStackTrace(r1)     // Catch: java.lang.Throwable -> L2b
            r1.flush()     // Catch: java.lang.Throwable -> L2b
            java.lang.String r5 = r0.toString()     // Catch: java.lang.Throwable -> L2b
            r0.close()     // Catch: java.lang.Throwable -> L2a
        L2a:
            return r5
        L2b:
            r5 = move-exception
            r1 = r0
            goto L2f
        L2e:
            r5 = move-exception
        L2f:
            boolean r0 = r5 instanceof java.lang.OutOfMemoryError     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L3f
            java.lang.String r5 = "023UeeRhcYdgFcPcecfcidhcgcecf$hRdgEcUcgcdcjeehbdbdb*k"
            java.lang.String r5 = com.mob.commons.n.a(r5)     // Catch: java.lang.Throwable -> L49
            if (r1 == 0) goto L3e
            r1.close()     // Catch: java.lang.Throwable -> L3e
        L3e:
            return r5
        L3f:
            java.lang.String r5 = r5.getMessage()     // Catch: java.lang.Throwable -> L49
            if (r1 == 0) goto L48
            r1.close()     // Catch: java.lang.Throwable -> L48
        L48:
            return r5
        L49:
            r5 = move-exception
            if (r1 == 0) goto L4f
            r1.close()     // Catch: java.lang.Throwable -> L4f
        L4f:
            goto L51
        L50:
            throw r5
        L51:
            goto L50
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.f.a(java.lang.Throwable):java.lang.String");
    }
}
