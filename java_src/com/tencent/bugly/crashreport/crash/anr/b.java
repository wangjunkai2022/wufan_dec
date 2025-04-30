package com.tencent.bugly.crashreport.crash.anr;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.FileObserver;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.AppInfo;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.anr.TraceFileHelper;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.ac;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import com.tencent.bugly.proguard.z;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class b implements ac {

    /* renamed from: m  reason: collision with root package name */
    private static b f59476m;

    /* renamed from: c  reason: collision with root package name */
    private final Context f59479c;

    /* renamed from: d  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.info.a f59480d;

    /* renamed from: e  reason: collision with root package name */
    private final w f59481e;

    /* renamed from: f  reason: collision with root package name */
    private String f59482f;

    /* renamed from: g  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.crash.b f59483g;

    /* renamed from: h  reason: collision with root package name */
    private FileObserver f59484h;

    /* renamed from: j  reason: collision with root package name */
    private ab f59486j;

    /* renamed from: k  reason: collision with root package name */
    private int f59487k;

    /* renamed from: a  reason: collision with root package name */
    private AtomicInteger f59477a = new AtomicInteger(0);

    /* renamed from: b  reason: collision with root package name */
    private long f59478b = -1;

    /* renamed from: i  reason: collision with root package name */
    private boolean f59485i = true;

    /* renamed from: l  reason: collision with root package name */
    private ActivityManager.ProcessErrorStateInfo f59488l = new ActivityManager.ProcessErrorStateInfo();

    private b(Context context, com.tencent.bugly.crashreport.common.strategy.a aVar, com.tencent.bugly.crashreport.common.info.a aVar2, w wVar, com.tencent.bugly.crashreport.crash.b bVar) {
        this.f59479c = z.a(context);
        this.f59482f = context.getDir("bugly", 0).getAbsolutePath();
        this.f59480d = aVar2;
        this.f59481e = wVar;
        this.f59483g = bVar;
    }

    private synchronized void c(boolean z3) {
        if (this.f59485i != z3) {
            x.a("user change anr %b", Boolean.valueOf(z3));
            this.f59485i = z3;
        }
    }

    private synchronized void d() {
        if (f()) {
            x.d("start when started!", new Object[0]);
            return;
        }
        FileObserver fileObserver = new FileObserver("/data/anr/", 8) { // from class: com.tencent.bugly.crashreport.crash.anr.b.1
            @Override // android.os.FileObserver
            public final void onEvent(int i2, String str) {
                if (str == null) {
                    return;
                }
                final String str2 = "/data/anr/" + str;
                x.d("watching file %s", str2);
                if (str2.contains("trace")) {
                    b.this.f59481e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            b.this.a(str2);
                        }
                    });
                } else {
                    x.d("not anr file %s", str2);
                }
            }
        };
        this.f59484h = fileObserver;
        fileObserver.startWatching();
        x.a("start anr monitor!", new Object[0]);
        this.f59481e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.2
            @Override // java.lang.Runnable
            public final void run() {
                b.this.b();
            }
        });
    }

    private synchronized void e() {
        if (!f()) {
            x.d("close when closed!", new Object[0]);
            return;
        }
        this.f59484h.stopWatching();
        this.f59484h = null;
        x.d("close anr monitor!", new Object[0]);
    }

    private synchronized boolean f() {
        return this.f59484h != null;
    }

    private synchronized boolean g() {
        return this.f59485i;
    }

    private File h() {
        int indexOf;
        long currentTimeMillis = System.currentTimeMillis();
        File file = new File(this.f59482f);
        if (file.exists() && file.isDirectory()) {
            try {
                File[] listFiles = file.listFiles();
                if (listFiles != null && listFiles.length != 0) {
                    int i2 = 24;
                    int length = listFiles.length;
                    int i4 = 0;
                    while (i4 < length) {
                        File file2 = listFiles[i4];
                        String name = file2.getName();
                        if (name.startsWith("jni_mannual_bugly_trace_") && (indexOf = name.indexOf(".txt")) > 0) {
                            long parseLong = Long.parseLong(name.substring(i2, indexOf));
                            long j4 = (currentTimeMillis - parseLong) / 1000;
                            x.c("current time %d trace time is %d s", Long.valueOf(currentTimeMillis), Long.valueOf(parseLong));
                            x.c("current time minus trace time is %d s", Long.valueOf(j4));
                            if (j4 < 30) {
                                return file2;
                            }
                        }
                        i4++;
                        i2 = 24;
                    }
                }
                return null;
            } catch (Throwable th) {
                x.a(th);
                return null;
            }
        }
        return null;
    }

    private synchronized void i() {
        if (f()) {
            x.d("start when started!", new Object[0]);
        } else if (TextUtils.isEmpty(this.f59482f)) {
        } else {
            ab abVar = this.f59486j;
            if (abVar == null || !abVar.isAlive()) {
                ab abVar2 = new ab();
                this.f59486j = abVar2;
                StringBuilder sb = new StringBuilder("Bugly-ThreadMonitor");
                int i2 = this.f59487k;
                this.f59487k = i2 + 1;
                sb.append(i2);
                abVar2.setName(sb.toString());
                this.f59486j.a();
                this.f59486j.a(this);
                this.f59486j.d();
                this.f59481e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.this.b();
                    }
                });
            }
            FileObserver fileObserver = new FileObserver(this.f59482f, 256) { // from class: com.tencent.bugly.crashreport.crash.anr.b.4
                @Override // android.os.FileObserver
                public final void onEvent(int i4, String str) {
                    if (str == null) {
                        return;
                    }
                    x.d("startWatchingPrivateAnrDir %s", str);
                    if (b.a(b.this, str)) {
                        if (b.this.f59486j != null) {
                            b.this.f59486j.a(true);
                            return;
                        }
                        return;
                    }
                    x.c("trace file not caused by sigquit , ignore ", new Object[0]);
                }
            };
            this.f59484h = fileObserver;
            fileObserver.startWatching();
            x.a("startWatchingPrivateAnrDir! dumFilePath is %s", this.f59482f);
            this.f59481e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.5
                @Override // java.lang.Runnable
                public final void run() {
                    b.this.b();
                }
            });
        }
    }

    private synchronized void j() {
        if (!f()) {
            x.d("close when closed!", new Object[0]);
            return;
        }
        ab abVar = this.f59486j;
        if (abVar != null) {
            abVar.c();
            this.f59486j.b();
            this.f59486j.b(this);
            this.f59486j = null;
        }
        x.a("stopWatchingPrivateAnrDir", new Object[0]);
        this.f59484h.stopWatching();
        this.f59484h = null;
        x.d("close anr monitor!", new Object[0]);
    }

    static /* synthetic */ boolean a(b bVar, String str) {
        return str.startsWith("bugly_trace_");
    }

    private synchronized void b(boolean z3) {
        if (Build.VERSION.SDK_INT <= 19) {
            if (z3) {
                d();
            } else {
                e();
            }
        } else if (z3) {
            i();
        } else {
            j();
        }
    }

    public static b a(Context context, com.tencent.bugly.crashreport.common.strategy.a aVar, com.tencent.bugly.crashreport.common.info.a aVar2, w wVar, p pVar, com.tencent.bugly.crashreport.crash.b bVar, BuglyStrategy.a aVar3) {
        if (f59476m == null) {
            f59476m = new b(context, aVar, aVar2, wVar, bVar);
        }
        return f59476m;
    }

    public final synchronized void c() {
        x.d("customer decides whether to open or close.", new Object[0]);
    }

    private ActivityManager.ProcessErrorStateInfo a(Context context, long j4) {
        try {
            x.c("to find!", new Object[0]);
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            int i2 = 0;
            while (true) {
                x.c("waiting!", new Object[0]);
                List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
                if (processesInErrorState != null) {
                    for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                        if (processErrorStateInfo.condition == 2) {
                            x.c("found!", new Object[0]);
                            return processErrorStateInfo;
                        }
                    }
                }
                z.b(500L);
                int i4 = i2 + 1;
                if (i2 >= 40) {
                    x.c("end!", new Object[0]);
                    return null;
                }
                i2 = i4;
            }
        } catch (Exception e4) {
            x.b(e4);
            return null;
        } catch (OutOfMemoryError e5) {
            this.f59488l.pid = Process.myPid();
            ActivityManager.ProcessErrorStateInfo processErrorStateInfo2 = this.f59488l;
            processErrorStateInfo2.shortMsg = "bugly sdk waitForAnrProcessStateChanged encount error:" + e5.getMessage();
            return this.f59488l;
        }
    }

    protected final void b() {
        int indexOf;
        long b4 = z.b() - c.f59511g;
        File file = new File(this.f59482f);
        if (file.exists() && file.isDirectory()) {
            try {
                File[] listFiles = file.listFiles();
                if (listFiles != null && listFiles.length != 0) {
                    int i2 = 0;
                    int i4 = 0;
                    for (File file2 : listFiles) {
                        String name = file2.getName();
                        boolean z3 = true;
                        if (!name.startsWith("bugly_trace_") && !name.startsWith("bugly_trace_")) {
                            z3 = false;
                            x.c("Number Trace file : " + name, new Object[0]);
                            if (z3 && (((indexOf = name.indexOf(".txt")) <= 0 || Long.parseLong(name.substring(i4, indexOf)) < b4) && file2.delete())) {
                                i2++;
                            }
                        }
                        i4 = 12;
                        x.c("Number Trace file : " + name, new Object[0]);
                        if (z3) {
                            i2++;
                        }
                    }
                    x.c("Number of overdue trace files that has deleted: " + i2, new Object[0]);
                }
            } catch (Throwable th) {
                x.a(th);
            }
        }
    }

    private CrashDetailBean a(a aVar) {
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        try {
            crashDetailBean.C = com.tencent.bugly.crashreport.common.info.b.g();
            crashDetailBean.D = com.tencent.bugly.crashreport.common.info.b.e();
            crashDetailBean.E = com.tencent.bugly.crashreport.common.info.b.i();
            crashDetailBean.F = this.f59480d.l();
            crashDetailBean.G = this.f59480d.k();
            crashDetailBean.H = this.f59480d.m();
            if (!com.tencent.bugly.crashreport.common.info.b.m()) {
                crashDetailBean.f59450w = z.a(this.f59479c, c.f59509e, (String) null);
            }
            crashDetailBean.f59429b = 3;
            crashDetailBean.f59432e = this.f59480d.h();
            com.tencent.bugly.crashreport.common.info.a aVar2 = this.f59480d;
            crashDetailBean.f59433f = aVar2.f59370j;
            crashDetailBean.f59434g = aVar2.r();
            crashDetailBean.f59440m = this.f59480d.g();
            crashDetailBean.f59441n = "ANR_EXCEPTION";
            crashDetailBean.f59442o = aVar.f59474f;
            crashDetailBean.f59444q = aVar.f59475g;
            HashMap hashMap = new HashMap();
            crashDetailBean.P = hashMap;
            hashMap.put("BUGLY_CR_01", aVar.f59473e);
            String str = crashDetailBean.f59444q;
            int indexOf = str != null ? str.indexOf("\n") : -1;
            crashDetailBean.f59443p = indexOf > 0 ? crashDetailBean.f59444q.substring(0, indexOf) : "GET_FAIL";
            crashDetailBean.f59445r = aVar.f59471c;
            String str2 = crashDetailBean.f59444q;
            if (str2 != null) {
                crashDetailBean.f59448u = z.a(str2.getBytes());
            }
            crashDetailBean.f59453z = aVar.f59470b;
            crashDetailBean.A = aVar.f59469a;
            crashDetailBean.B = "main(1)";
            crashDetailBean.I = this.f59480d.t();
            crashDetailBean.f59435h = this.f59480d.q();
            crashDetailBean.f59436i = this.f59480d.C();
            crashDetailBean.f59449v = aVar.f59472d;
            com.tencent.bugly.crashreport.common.info.a aVar3 = this.f59480d;
            crashDetailBean.L = aVar3.f59374n;
            crashDetailBean.M = aVar3.f59361a;
            crashDetailBean.N = aVar3.a();
            if (!com.tencent.bugly.crashreport.common.info.b.m()) {
                this.f59483g.d(crashDetailBean);
            }
            crashDetailBean.Q = this.f59480d.A();
            crashDetailBean.R = this.f59480d.B();
            crashDetailBean.S = this.f59480d.u();
            crashDetailBean.T = this.f59480d.z();
            crashDetailBean.f59452y = y.a();
        } catch (Throwable th) {
            if (!x.a(th)) {
                th.printStackTrace();
            }
        }
        return crashDetailBean;
    }

    private static boolean a(String str, String str2, String str3) {
        Map<String, String[]> map;
        Throwable th;
        BufferedWriter bufferedWriter;
        TraceFileHelper.a readTargetDumpInfo = TraceFileHelper.readTargetDumpInfo(str3, str, true);
        if (readTargetDumpInfo != null && (map = readTargetDumpInfo.f59468d) != null && map.size() > 0) {
            File file = new File(str2);
            try {
                if (!file.exists()) {
                    if (!file.getParentFile().exists()) {
                        file.getParentFile().mkdirs();
                    }
                    file.createNewFile();
                }
                if (file.exists() && file.canWrite()) {
                    BufferedWriter bufferedWriter2 = null;
                    try {
                        try {
                            bufferedWriter = new BufferedWriter(new FileWriter(file, false));
                        } catch (IOException e4) {
                            e = e4;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    try {
                        String[] strArr = readTargetDumpInfo.f59468d.get("main");
                        int i2 = 3;
                        if (strArr != null && strArr.length >= 3) {
                            String str4 = strArr[0];
                            String str5 = strArr[1];
                            String str6 = strArr[2];
                            bufferedWriter.write("\"main\" tid=" + str6 + " :\n" + str4 + "\n" + str5 + "\n\n");
                            bufferedWriter.flush();
                        }
                        for (Map.Entry<String, String[]> entry : readTargetDumpInfo.f59468d.entrySet()) {
                            if (!entry.getKey().equals("main")) {
                                if (entry.getValue() != null && entry.getValue().length >= i2) {
                                    String str7 = entry.getValue()[0];
                                    String str8 = entry.getValue()[1];
                                    String str9 = entry.getValue()[2];
                                    bufferedWriter.write(m.a.f72569g + entry.getKey() + "\" tid=" + str9 + " :\n" + str7 + "\n" + str8 + "\n\n");
                                    bufferedWriter.flush();
                                }
                                i2 = 3;
                            }
                        }
                        try {
                            bufferedWriter.close();
                        } catch (IOException e5) {
                            if (!x.a(e5)) {
                                e5.printStackTrace();
                            }
                        }
                        return true;
                    } catch (IOException e6) {
                        e = e6;
                        bufferedWriter2 = bufferedWriter;
                        if (!x.a(e)) {
                            e.printStackTrace();
                        }
                        x.e("dump trace fail %s", e.getClass().getName() + ":" + e.getMessage());
                        if (bufferedWriter2 != null) {
                            try {
                                bufferedWriter2.close();
                            } catch (IOException e7) {
                                if (!x.a(e7)) {
                                    e7.printStackTrace();
                                }
                            }
                        }
                        return false;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedWriter2 = bufferedWriter;
                        if (bufferedWriter2 != null) {
                            try {
                                bufferedWriter2.close();
                            } catch (IOException e8) {
                                if (!x.a(e8)) {
                                    e8.printStackTrace();
                                }
                            }
                        }
                        throw th;
                    }
                }
                x.e("backup file create fail %s", str2);
                return false;
            } catch (Exception e9) {
                if (!x.a(e9)) {
                    e9.printStackTrace();
                }
                x.e("backup file create error! %s  %s", e9.getClass().getName() + ":" + e9.getMessage(), str2);
                return false;
            }
        }
        x.e("not found trace dump for %s", str3);
        return false;
    }

    public final boolean a() {
        return this.f59477a.get() != 0;
    }

    private boolean a(Context context, String str, ActivityManager.ProcessErrorStateInfo processErrorStateInfo, long j4, Map<String, String> map) {
        a aVar = new a();
        aVar.f59471c = j4;
        aVar.f59469a = processErrorStateInfo != null ? processErrorStateInfo.processName : AppInfo.a(Process.myPid());
        aVar.f59474f = processErrorStateInfo != null ? processErrorStateInfo.shortMsg : "";
        aVar.f59473e = processErrorStateInfo != null ? processErrorStateInfo.longMsg : "";
        aVar.f59470b = map;
        Thread thread = Looper.getMainLooper().getThread();
        if (map != null) {
            Iterator<String> it2 = map.keySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                String next = it2.next();
                if (next.startsWith(thread.getName())) {
                    aVar.f59475g = map.get(next);
                    break;
                }
            }
        }
        if (TextUtils.isEmpty(aVar.f59475g)) {
            aVar.f59475g = "main stack is null , some error may be encountered.";
        }
        Object[] objArr = new Object[7];
        objArr[0] = Long.valueOf(aVar.f59471c);
        objArr[1] = aVar.f59472d;
        objArr[2] = aVar.f59469a;
        objArr[3] = aVar.f59475g;
        objArr[4] = aVar.f59474f;
        objArr[5] = aVar.f59473e;
        Map<String, String> map2 = aVar.f59470b;
        objArr[6] = Integer.valueOf(map2 == null ? 0 : map2.size());
        x.c("anr tm:%d\ntr:%s\nproc:%s\nmain stack:%s\nsMsg:%s\n lMsg:%s\n threads:%d", objArr);
        x.a("found visiable anr , start to upload!", new Object[0]);
        CrashDetailBean a4 = a(aVar);
        if (a4 == null) {
            x.e("pack anr fail!", new Object[0]);
            return false;
        }
        c.a().a(a4);
        if (a4.f59428a >= 0) {
            x.a("backup anr record success!", new Object[0]);
        } else {
            x.d("backup anr record fail!", new Object[0]);
        }
        if (str != null && new File(str).exists()) {
            String str2 = this.f59482f;
            aVar.f59472d = new File(str2, "bugly_trace_" + j4 + ".txt").getAbsolutePath();
            this.f59477a.set(3);
            if (a(str, aVar.f59472d, aVar.f59469a)) {
                x.a("backup trace success", new Object[0]);
            }
        } else {
            File h4 = h();
            x.a("traceFile is %s", h4);
            if (h4 != null) {
                a4.f59449v = h4.getAbsolutePath();
            }
        }
        com.tencent.bugly.crashreport.crash.b.a("ANR", z.a(), aVar.f59469a, "main", aVar.f59475g, a4);
        if (!this.f59483g.a(a4)) {
            this.f59483g.a(a4, 3000L, true);
        }
        this.f59483g.c(a4);
        return true;
    }

    public final void a(String str) {
        synchronized (this) {
            if (this.f59477a.get() != 0) {
                x.c("trace started return ", new Object[0]);
                return;
            }
            this.f59477a.set(1);
            try {
                x.c("read trace first dump for create time!", new Object[0]);
                TraceFileHelper.a readFirstDumpInfo = TraceFileHelper.readFirstDumpInfo(str, false);
                long j4 = readFirstDumpInfo != null ? readFirstDumpInfo.f59467c : -1L;
                if (j4 == -1) {
                    x.d("trace dump fail could not get time!", new Object[0]);
                    j4 = System.currentTimeMillis();
                }
                long j5 = j4;
                if (Math.abs(j5 - this.f59478b) < com.join.mgps.data.c.f47286a) {
                    x.d("should not process ANR too Fre in %d", 10000);
                } else {
                    this.f59478b = j5;
                    this.f59477a.set(1);
                    Map<String, String> a4 = z.a(c.f59510f, false);
                    if (a4 != null && a4.size() > 0) {
                        ActivityManager.ProcessErrorStateInfo a5 = a(this.f59479c, 20000L);
                        this.f59488l = a5;
                        if (a5 == null) {
                            x.c("proc state is unvisiable!", new Object[0]);
                        } else if (a5.pid != Process.myPid()) {
                            x.c("not mind proc!", this.f59488l.processName);
                        } else {
                            x.a("found visiable anr , start to process!", new Object[0]);
                            a(this.f59479c, str, this.f59488l, j5, a4);
                        }
                    }
                    x.d("can't get all thread skip this anr", new Object[0]);
                }
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public final void a(boolean z3) {
        c(z3);
        boolean g4 = g();
        com.tencent.bugly.crashreport.common.strategy.a a4 = com.tencent.bugly.crashreport.common.strategy.a.a();
        if (a4 != null) {
            g4 = g4 && a4.c().f59394e;
        }
        if (g4 != f()) {
            x.a("anr changed to %b", Boolean.valueOf(g4));
            b(g4);
        }
    }

    @Override // com.tencent.bugly.proguard.ac
    public final boolean a(aa aaVar) {
        Map<String, String> hashMap = new HashMap<>();
        if (aaVar.e().equals(Looper.getMainLooper())) {
            try {
                hashMap = z.a(200000, false);
            } catch (Throwable th) {
                x.b(th);
                hashMap.put("main", th.getMessage());
            }
            Map<String, String> map = hashMap;
            x.c("onThreadBlock found visiable anr , start to process!", new Object[0]);
            String c4 = com.tencent.bugly.crashreport.common.info.b.c(this.f59479c);
            if (!TextUtils.isEmpty(c4) && (c4.contains("XiaoMi") || c4.contains("samsung"))) {
                this.f59488l = a(this.f59479c, 20000L);
            }
            a(this.f59479c, "", this.f59488l, System.currentTimeMillis(), map);
        } else {
            x.c("anr handler onThreadBlock only care main thread ,current thread is: %s", aaVar.d());
        }
        return true;
    }
}
