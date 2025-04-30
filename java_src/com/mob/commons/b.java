package com.mob.commons;

import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
import com.mob.tools.network.NetCommunicator;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.FileLocker;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.ResHelper;
import com.umeng.analytics.pro.ai;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private static AtomicBoolean f52820c = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicBoolean f52821d = new AtomicBoolean(false);

    /* renamed from: e  reason: collision with root package name */
    private static AtomicBoolean f52822e = new AtomicBoolean(false);

    /* renamed from: f  reason: collision with root package name */
    private static volatile HashMap<String, Object> f52823f = null;

    /* renamed from: a  reason: collision with root package name */
    public static volatile HashSet<Class<? extends com.mob.commons.a.c>> f52818a = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    private static ConcurrentHashMap<String, Object> f52824g = new ConcurrentHashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private static ConcurrentHashMap<String, Object> f52825h = new ConcurrentHashMap<>();

    /* renamed from: i  reason: collision with root package name */
    private static CountDownLatch f52826i = new CountDownLatch(1);

    /* renamed from: j  reason: collision with root package name */
    private static CountDownLatch f52827j = new CountDownLatch(1);

    /* renamed from: b  reason: collision with root package name */
    public static volatile boolean f52819b = false;

    /* renamed from: k  reason: collision with root package name */
    private static volatile boolean f52828k = false;

    public static boolean d() {
        return c();
    }

    public static ConcurrentHashMap<String, Object> e() {
        return f52824g;
    }

    public static ConcurrentHashMap<String, Object> f() {
        return f52825h;
    }

    public static ArrayList<String> g() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(j.a("0048cfcfcedg"));
        arrayList.add(j.a("005Idhcfcfcedg"));
        arrayList.add(j.a("005Ucb1ghgCcb"));
        arrayList.add(j.a("009$dfbfSgi9ba2gBbibebg"));
        arrayList.add(j.a("0107bbbbbbbebabfeecabibi"));
        return (ArrayList) a(j.a("004Vdbbcdebe"), arrayList);
    }

    public static void h() {
        if (a()) {
            d(3);
        }
    }

    public static boolean i() {
        return d("ie");
    }

    public static boolean j() {
        return d(ai.ae);
    }

    private static HashSet<Class<? extends com.mob.commons.a.c>> o() {
        HashSet<Class<? extends com.mob.commons.a.c>> hashSet = new HashSet<>();
        try {
            hashSet.add(com.mob.commons.a.a.class);
        } catch (Throwable unused) {
        }
        try {
            hashSet.add(com.mob.commons.a.b.class);
        } catch (Throwable unused2) {
        }
        try {
            hashSet.add(com.mob.commons.a.d.class);
        } catch (Throwable unused3) {
        }
        try {
            hashSet.add(com.mob.commons.a.e.class);
        } catch (Throwable unused4) {
        }
        try {
            hashSet.add(com.mob.commons.a.f.class);
        } catch (Throwable unused5) {
        }
        try {
            hashSet.add(com.mob.commons.a.g.class);
        } catch (Throwable unused6) {
        }
        try {
            hashSet.add(com.mob.commons.a.h.class);
        } catch (Throwable unused7) {
        }
        try {
            hashSet.add(com.mob.commons.a.m.class);
        } catch (Throwable unused8) {
        }
        try {
            hashSet.add(com.mob.commons.a.i.class);
        } catch (Throwable unused9) {
        }
        try {
            hashSet.add(com.mob.commons.a.j.class);
        } catch (Throwable unused10) {
        }
        try {
            hashSet.add(com.mob.commons.a.k.class);
        } catch (Throwable unused11) {
        }
        try {
            hashSet.add(com.mob.commons.a.l.class);
        } catch (Throwable unused12) {
        }
        try {
            hashSet.add(com.mob.commons.a.n.class);
        } catch (Throwable unused13) {
        }
        try {
            hashSet.add(com.mob.commons.a.p.class);
        } catch (Throwable unused14) {
        }
        try {
            hashSet.add(com.mob.commons.a.q.class);
        } catch (Throwable unused15) {
        }
        try {
            hashSet.add(com.mob.commons.a.r.class);
        } catch (Throwable unused16) {
        }
        return hashSet;
    }

    private static void p() {
        Object obj = l.f53052h;
        synchronized (obj) {
            f.a().a(10);
            obj.notifyAll();
        }
    }

    private static void q() {
        Object obj = l.f53053i;
        synchronized (obj) {
            obj.notifyAll();
        }
    }

    private static HashMap r() {
        HashMap<String, Object> s3 = s();
        long j4 = 2;
        long j5 = 1;
        while (true) {
            if (s3 != null) {
                try {
                    if (!s3.isEmpty()) {
                        break;
                    }
                } catch (Throwable th) {
                    MobLog.getInstance().d(th);
                }
            }
            Thread.sleep(1000 * j5);
            s3 = s();
            if (s3 == null || s3.isEmpty()) {
                boolean checkNetworkAvailable = DeviceHelper.getInstance(MobSDK.getContext()).checkNetworkAvailable();
                if (checkNetworkAvailable) {
                    if (j4 <= 0) {
                        break;
                    }
                    j4--;
                }
                j5 *= 2;
                if (!checkNetworkAvailable && j5 < 8) {
                    j5 = 8;
                }
                if (j5 > 300) {
                    j5 = 8;
                }
            }
        }
        return s3;
    }

    private static HashMap<String, Object> s() {
        try {
            DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
            if (deviceHelper.checkNetworkAvailable()) {
                String packageName = deviceHelper.getPackageName();
                HashMap<String, Object> f4 = q.f();
                String appkey = MobSDK.getAppkey();
                f4.put(j.a("006IbdVcc2bh.gPbg"), appkey);
                f4.put(j.a("006Abd3ccc<bhdd"), packageName);
                int i2 = 1;
                f4.put(j.a("003Ibdddde"), String.valueOf(deviceHelper.isPackageInstalled(j.a("022=beca$j1cjddcacaddcb?g*cjbdbiKfYbfcabc@fDcjddKjLde")) ? 1 : -1));
                f4.put(j.a("002b_de"), String.valueOf(System.currentTimeMillis()));
                int privacyGrantedStatus = MobSDK.getPrivacyGrantedStatus();
                if (privacyGrantedStatus != -1) {
                    f4.put(j.a("009CbcdechddbfDggSefSc"), String.valueOf(privacyGrantedStatus == 1));
                }
                f4.put(j.a("002h5gc"), String.valueOf(MobSDK.checkV6() ? 1 : -1));
                f4.put(j.a("002=babe"), String.valueOf(deviceHelper.checkUA() ? 1 : 0));
                f4.put(j.a("002Nba=f"), String.valueOf(deviceHelper.usbEnable() ? 1 : 0));
                f4.put(j.a("002fh"), String.valueOf(deviceHelper.devEnable() ? 1 : 0));
                f4.put(j.a("002hc"), String.valueOf(deviceHelper.vpn() ? 1 : 0));
                f4.put(j.a("002KdbTc"), String.valueOf(deviceHelper.isWifiProxy() ? 1 : 0));
                f4.put(j.a("002PbfXb"), String.valueOf(deviceHelper.isRooted() ? 1 : 0));
                f4.put(j.a("002Zbj5c"), String.valueOf(deviceHelper.cx() ? 1 : 0));
                String a4 = j.a("002DbdZf");
                if (!deviceHelper.debugable()) {
                    i2 = 0;
                }
                f4.put(a4, String.valueOf(i2));
                String httpGet = new NetworkHelper().httpGet(c.a(c.f52905b) + j.a("007eh]fc=eIddbedf"), f4, NetCommunicator.getCommonDefaultHeaders());
                HashMap fromJson = HashonHelper.fromJson(httpGet);
                if (fromJson == null) {
                    return null;
                }
                if ("200".equals(String.valueOf(fromJson.get(j.a("006<de(bRbdXb(bade"))))) {
                    byte[] rawMD5 = Data.rawMD5((appkey + ":" + packageName + ":" + fromJson.get(j.a("009b1bc3jgHdePbDbd[jc"))).getBytes("utf-8"));
                    String str = (String) ResHelper.forceCast(fromJson.get(j.a("002!debe")));
                    if (str != null) {
                        String str2 = new String(Data.AES128Decode(rawMD5, Base64.decode(str, 2)), "utf-8");
                        NLog mobLog = MobLog.getInstance();
                        mobLog.d("sw: " + str2, new Object[0]);
                        HashMap<String, Object> fromJson2 = HashonHelper.fromJson(str2);
                        if (fromJson2 != null && !fromJson2.isEmpty()) {
                            fromJson2.put(j.a("010fghLbcbeCg]cgbcOjg"), Long.valueOf(SystemClock.elapsedRealtime()));
                            w.a().a(str2);
                            w.a().a(w.f53146u, System.currentTimeMillis());
                            a(fromJson2.remove(j.a("011Wbccbcb<gAddbdcbegbdbede")));
                            return fromJson2;
                        }
                        throw new Throwable("RS is illegal: " + httpGet);
                    }
                    throw new Throwable("RS is illegal: " + httpGet);
                }
                throw new Throwable("RS is illegal: " + httpGet);
            }
            return null;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            try {
                w.a().a((String) null);
            } catch (Throwable unused) {
            }
            return null;
        }
    }

    public static boolean c() {
        return (((Integer) a(j.a("002>bibf"), 0)).intValue() == 1) || s.a();
    }

    private static boolean d(String str) {
        List list = (List) a(j.a("003a+bcDf"), (Object) null);
        return (list == null || list.isEmpty() || !list.contains(str)) ? false : true;
    }

    private static boolean e(String str) {
        List list = (List) a(j.a("002Vbecb"), (Object) null);
        return (list == null || list.size() == 0 || !list.contains(str)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v22, types: [com.mob.tools.network.NetworkHelper] */
    /* JADX WARN: Type inference failed for: r13v24, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.io.OutputStream, java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.io.OutputStream, com.mob.commons.b$5] */
    /* JADX WARN: Type inference failed for: r8v7, types: [com.mob.tools.network.NetworkHelper] */
    public static void f(String str) {
        String b4;
        File file;
        File file2 = null;
        try {
            f.a().a(0);
            b4 = r.b(str);
            file = new File(MobSDK.getContext().getFilesDir(), j.a("003Ddebebe"));
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (!g.a().b()) {
                f.a().a(18);
                ResHelper.deleteFileAndFolder(file);
            } else if (TextUtils.isEmpty(b4)) {
                f.a().a(1);
                ResHelper.deleteFileAndFolder(file);
            } else if (!c()) {
                p();
            } else {
                f.a().a(2);
                HashMap hashMap = (HashMap) new NetCommunicator(1024, "9e87e8d4b8f52f2916d0fb4342aa6b54a81a05666d0bdb23cc5ebf3a07440bc3976adff1ce11c64ddcdbfc017920648217196d51e3165e780e58b5460c525ee9", "13bda4b87eb42ab9e64e6b4f3d17cf8005a4ae94af37bc9fd76ebd91a828f017c81bd63cbe2924e361e20003b9e5f47cdac1f5fba5fca05730a32c5c65869590287207e79a604a2aac429e55f0d35c211367bd226dd5e57df7810f036071854aa1061a0f34b418b9178895a531107c652a428cfa6ecfa65333580ae7e0edf0e1").requestSynchronized(q.g(), b4, false);
                f.a().a(3);
                String str2 = (String) hashMap.get(j.a("002Ydfcb"));
                String str3 = (String) hashMap.get("m");
                Boolean bool = (Boolean) hashMap.get(j.a("002'bdde"));
                boolean booleanValue = bool != null ? bool.booleanValue() : false;
                String str4 = (String) hashMap.get(j.a("002+bdbh"));
                String str5 = (String) hashMap.get(j.a("002Ubebi"));
                String str6 = (String) hashMap.get(j.a("0025dfbi"));
                if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str4)) {
                    synchronized (l.f53052h) {
                        f52824g.clear();
                        f52824g.put("h", str3);
                        f52824g.put("k", str4);
                        f52824g.put(j.a("002Kbebi"), str5);
                        f52824g.put(j.a("002Gdfbi"), str6);
                        if (booleanValue) {
                            f.a().a(5);
                            File file3 = new File(file, j.a("008=becabidfcjdebebe"));
                            if (!file3.exists() || !str3.equals(Data.MD5(file3))) {
                                f.a().a(6);
                                ResHelper.deleteFileAndFolder(file);
                                file.mkdirs();
                                try {
                                    ?? fileOutputStream = new FileOutputStream(file3);
                                    try {
                                        new NetworkHelper().download(str2, fileOutputStream, null);
                                        f.a().a(7);
                                        r.a((Closeable[]) new Closeable[]{fileOutputStream});
                                    } catch (Throwable th2) {
                                        th = th2;
                                        file2 = fileOutputStream;
                                        r.a((Closeable[]) new Closeable[]{file2});
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            }
                        } else {
                            f.a().a(8);
                            ResHelper.deleteFileAndFolder(file);
                            final byte[][] bArr = new byte[1];
                            final int[] iArr = new int[1];
                            try {
                                ?? r7 = new ByteArrayOutputStream() { // from class: com.mob.commons.b.5
                                    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                                    public void close() throws IOException {
                                        super.close();
                                        bArr[0] = ((ByteArrayOutputStream) this).buf;
                                        iArr[0] = ((ByteArrayOutputStream) this).count;
                                    }
                                };
                                try {
                                    new NetworkHelper().download(str2, r7, null);
                                    f.a().a(9);
                                    r.a((Closeable[]) new Closeable[]{r7});
                                    f52824g.put(j.a("001Ida"), bArr[0]);
                                    f52824g.put(ai.az, Integer.valueOf(iArr[0]));
                                } catch (Throwable th4) {
                                    th = th4;
                                    file2 = r7;
                                    r.a((Closeable[]) new Closeable[]{file2});
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                            }
                        }
                    }
                    p();
                }
                f.a().a(4);
                ResHelper.deleteFileAndFolder(file);
                p();
            }
        } catch (Throwable th6) {
            th = th6;
            file2 = file;
            if (file2 != null) {
                try {
                    ResHelper.deleteFileAndFolder(file2);
                } catch (Throwable unused) {
                }
            }
            f.a().a(2, th);
        }
    }

    public static void a(CountDownLatch countDownLatch) {
        b(countDownLatch);
    }

    public static <T> T a(String str, T t3) {
        if (TextUtils.isEmpty(str) || f52823f == null) {
            return t3;
        }
        if (b(f52823f)) {
            f52823f.clear();
            f52823f = new HashMap<>();
            d(2);
        }
        return (T) ResHelper.forceCast(f52823f.get(str), t3);
    }

    public static <T> T b(String str, T t3) {
        if (TextUtils.isEmpty(str)) {
            return t3;
        }
        if (f52823f != null) {
            return (T) a(f52823f, str, t3);
        }
        return (T) a(HashonHelper.fromJson(w.a().b()), str, t3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(boolean z3) {
        if (b()) {
            MobLog.getInstance().d("b db st", new Object[0]);
            e.a((MobProduct) null);
            m.a().b();
            d(z3);
        }
    }

    private static synchronized void d(boolean z3) {
        synchronized (b.class) {
            HashSet<Class<? extends com.mob.commons.a.c>> o3 = o();
            Iterator<Class<? extends com.mob.commons.a.c>> it2 = o3.iterator();
            while (it2.hasNext()) {
                Class<? extends com.mob.commons.a.c> next = it2.next();
                try {
                    if (!f52818a.contains(next)) {
                        com.mob.commons.a.c newInstance = next.newInstance();
                        if (z3 || e(newInstance.d())) {
                            if (newInstance.g()) {
                                f52818a.add(next);
                            }
                        }
                    }
                } catch (Throwable th) {
                    MobLog.getInstance().d(th);
                }
            }
            o3.clear();
            NLog mobLog = MobLog.getInstance();
            mobLog.d("clt(" + z3 + ") over", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(int i2) {
        a((HashMap<String, Object>) r(), true);
        CountDownLatch a4 = com.mob.tools.a.d.a(MobSDK.getContext()).a();
        if (a4 != null) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                NLog mobLog = MobLog.getInstance();
                mobLog.d("ge dhs_w cdl: " + a4, new Object[0]);
                a4.await(3500L, TimeUnit.MILLISECONDS);
                NLog mobLog2 = MobLog.getInstance();
                mobLog2.d("ge dhs_w end, dur: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
            }
        }
        a(false, true, true, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g(String str) {
        File file = null;
        try {
            String b4 = r.b(str);
            File file2 = new File(MobSDK.getContext().getFilesDir(), j.a("003@dedacb"));
            try {
                if (!g.a().b()) {
                    ResHelper.deleteFileAndFolder(file2);
                } else if (TextUtils.isEmpty(b4)) {
                    ResHelper.deleteFileAndFolder(file2);
                } else if (!c()) {
                    q();
                    return;
                } else {
                    HashMap<String, Object> g4 = q.g();
                    g4.put(j.a("007hg9bfdebccabi"), String.valueOf(com.mob.commons.cc.a.a()));
                    ArrayList arrayList = (ArrayList) ((HashMap) new NetCommunicator(1024, "9e87e8d4b8f52f2916d0fb4342aa6b54a81a05666d0bdb23cc5ebf3a07440bc3976adff1ce11c64ddcdbfc017920648217196d51e3165e780e58b5460c525ee9", "13bda4b87eb42ab9e64e6b4f3d17cf8005a4ae94af37bc9fd76ebd91a828f017c81bd63cbe2924e361e20003b9e5f47cdac1f5fba5fca05730a32c5c65869590287207e79a604a2aac429e55f0d35c211367bd226dd5e57df7810f036071854aa1061a0f34b418b9178895a531107c652a428cfa6ecfa65333580ae7e0edf0e1").requestSynchronized(g4, b4, false)).get(j.a("0048cbbcde<b"));
                    synchronized (l.f53053i) {
                        f52825h.clear();
                        f52825h.put(j.a("0026cbCb"), arrayList);
                    }
                }
            } catch (Throwable unused) {
                file = file2;
                if (file != null) {
                    try {
                        ResHelper.deleteFileAndFolder(file);
                    } catch (Throwable unused2) {
                    }
                }
                q();
            }
        } catch (Throwable unused3) {
        }
        q();
    }

    public static boolean b() {
        return ((Integer) a(j.a("004Jbecabibi"), 0)).intValue() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(int i2) {
        MobLog.getInstance().d("b ob st", new Object[0]);
        if (a() && b()) {
            final String str = (String) a(j.a("003Ldfbibe"), (Object) null);
            if (TextUtils.isEmpty(str)) {
                if (i2 == 3 || s.b()) {
                    p();
                }
            } else if (i2 == 3 || f52820c.compareAndSet(false, true)) {
                new com.mob.tools.utils.d(j.a("003Adgggfg") + i2) { // from class: com.mob.commons.b.1
                    @Override // com.mob.tools.utils.d
                    protected void a() {
                        l.a(l.a(l.f53048d), false, new k() { // from class: com.mob.commons.b.1.1
                            @Override // com.mob.commons.k
                            public boolean a(FileLocker fileLocker) {
                                try {
                                    synchronized (b.f52824g) {
                                        b.f(str);
                                    }
                                    return false;
                                } catch (Throwable th) {
                                    f.a().a(1, th);
                                    return false;
                                }
                            }
                        });
                    }
                }.start();
            }
            if (a() && b()) {
                final String str2 = (String) a("sbr", (Object) null);
                if (TextUtils.isEmpty(str2)) {
                    q();
                } else if (i2 == 3 || f52821d.compareAndSet(false, true)) {
                    new com.mob.tools.utils.d("DS-" + i2) { // from class: com.mob.commons.b.2
                        @Override // com.mob.tools.utils.d
                        protected void a() {
                            l.a(l.a(l.f53049e), false, new k() { // from class: com.mob.commons.b.2.1
                                @Override // com.mob.commons.k
                                public boolean a(FileLocker fileLocker) {
                                    try {
                                        synchronized (b.f52825h) {
                                            b.g(str2);
                                        }
                                        return false;
                                    } catch (Throwable th) {
                                        MobLog.getInstance().d(th);
                                        return false;
                                    }
                                }
                            });
                        }
                    }.start();
                }
                if (MobSDK.getDomain() != InternationalDomain.DEFAULT || MobSDK.checkV6()) {
                    return;
                }
                c.a();
                return;
            }
            q();
        } else if (i2 == 3 || s.b()) {
            p();
        }
    }

    private static <T> T a(HashMap<String, Object> hashMap, String str, T t3) {
        return (TextUtils.isEmpty(str) || b(hashMap) || !a(hashMap)) ? t3 : (T) ResHelper.forceCast(hashMap.get(str), t3);
    }

    private static void b(CountDownLatch countDownLatch) {
        HashMap fromJson = HashonHelper.fromJson(w.a().b());
        if (b(fromJson)) {
            w.a().a((String) null);
            fromJson = null;
        }
        if (a()) {
            a((HashMap<String, Object>) fromJson, false);
            if (fromJson != null && !fromJson.isEmpty()) {
                MobLog.getInstance().d("g ch: y", new Object[0]);
                boolean z3 = System.currentTimeMillis() - w.a().b(w.f53146u, 0L) < 5000;
                MobLog.getInstance().d("g ch fre: " + z3, new Object[0]);
                if (!z3) {
                    d(2);
                }
                if (countDownLatch != null) {
                    try {
                        long currentTimeMillis = System.currentTimeMillis();
                        MobLog.getInstance().d("g dhs_w cdl: " + countDownLatch, new Object[0]);
                        countDownLatch.await(3500L, TimeUnit.MILLISECONDS);
                        MobLog.getInstance().d("g dhs_w end, dur: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
                    } catch (Throwable th) {
                        MobLog.getInstance().d(th);
                    }
                }
                a(true, false, z3, 2);
                return;
            }
            MobLog.getInstance().d("g ch: n", new Object[0]);
            d(1);
        }
    }

    public static <T> T a(String str, T t3, long j4) {
        try {
            if ((f52823f == null || f52823f.isEmpty()) && f52826i.getCount() > 0) {
                if (j4 > 0) {
                    f52826i.await(j4, TimeUnit.MILLISECONDS);
                } else {
                    f52826i.await();
                }
            }
            if (!e(str) && f52827j.getCount() > 0) {
                if (j4 > 0) {
                    f52827j.await(j4, TimeUnit.MILLISECONDS);
                } else {
                    f52827j.await();
                }
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        return (T) a(str, t3);
    }

    private static void d(final int i2) {
        if (f52822e.compareAndSet(false, true)) {
            final String format = String.format(j.a("005Jeedifghfde"), Integer.valueOf(i2));
            if (i2 == 2) {
                u.f53114c.execute(new com.mob.tools.utils.c() { // from class: com.mob.commons.b.4
                    @Override // com.mob.tools.utils.c
                    protected void a() {
                        if (!TextUtils.isEmpty("M-")) {
                            Thread currentThread = Thread.currentThread();
                            currentThread.setName("M-" + format);
                        }
                        try {
                            b.e(i2);
                        } finally {
                            b.f52822e.set(false);
                        }
                    }
                });
                return;
            }
            if (!TextUtils.isEmpty("M-")) {
                Thread currentThread = Thread.currentThread();
                currentThread.setName("M-" + format);
            }
            try {
                e(i2);
            } finally {
                f52822e.set(false);
            }
        }
    }

    private static boolean a(HashMap<String, Object> hashMap) {
        return hashMap == null || ((Integer) ResHelper.forceCast(hashMap.get(j.a("002bPca")), 0)).intValue() == 0;
    }

    public static boolean a() {
        return ((Integer) a(j.a("002b-ca"), 0)).intValue() == 0;
    }

    public static boolean a(String str) {
        return !TextUtils.isEmpty(str) && a() && b() && ((Integer) a(str, 0)).intValue() != 0;
    }

    private static void a(HashMap<String, Object> hashMap, boolean z3) {
        f52823f = new HashMap<>();
        if (hashMap != null) {
            f52823f.putAll(hashMap);
        }
        try {
            if (z3) {
                f52826i.countDown();
                f52827j.countDown();
            } else {
                f52826i.countDown();
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean b(HashMap<String, Object> hashMap) {
        if (hashMap != null) {
            long longValue = ((Long) ResHelper.forceCast(hashMap.get(j.a("010fgh=bcbeEg1cgbc5jg")), 0L)).longValue();
            return longValue != 0 && SystemClock.elapsedRealtime() - longValue >= 86400000;
        }
        return false;
    }

    private static void a(final boolean z3, final boolean z4, final boolean z5, final int i2) {
        new com.mob.tools.utils.d("PY-B" + i2) { // from class: com.mob.commons.b.3
            @Override // com.mob.tools.utils.d
            protected void a() {
                NLog mobLog = MobLog.getInstance();
                mobLog.d("b enter:" + Process.myPid() + ", lbms: " + b.f52828k + ", fc" + z3 + ", ol: " + z4 + ", gf: " + z5 + ", in: " + i2, new Object[0]);
                if (!b.f52828k) {
                    NLog mobLog2 = MobLog.getInstance();
                    mobLog2.d("b lk st: " + Process.myPid(), new Object[0]);
                    l.a(l.a(l.f53050f), new k() { // from class: com.mob.commons.b.3.1
                        @Override // com.mob.commons.k
                        public boolean a(FileLocker fileLocker) {
                            boolean unused = b.f52828k = true;
                            NLog mobLog3 = MobLog.getInstance();
                            mobLog3.d("b lk: " + Process.myPid() + ", proc st", new Object[0]);
                            long currentTimeMillis = System.currentTimeMillis();
                            b.c(z4);
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            if (!z3 || z5) {
                                b.c(i2);
                            }
                            NLog mobLog4 = MobLog.getInstance();
                            mobLog4.d("b lk: " + Process.myPid() + ", proc ed, dur: " + (System.currentTimeMillis() - currentTimeMillis) + ", release: n", new Object[0]);
                            Looper.prepare();
                            Looper.loop();
                            return true;
                        }
                    });
                    return;
                }
                NLog mobLog3 = MobLog.getInstance();
                mobLog3.d("b lked already: " + Process.myPid(), new Object[0]);
                b.c(z4);
                if (!z3 || z5) {
                    b.c(i2);
                }
            }
        }.start();
    }

    private static void a(Object obj) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put(j.a("004HcbbcdePb"), obj);
            File dataCacheFile = ResHelper.getDataCacheFile(MobSDK.getContext(), j.a("0056cjMj;becbbc"));
            ResHelper.saveObjectToFile(dataCacheFile.getPath(), Data.AES128Encode(j.a("016-ejeihahgfcgcgfehffdcbddabeRf+dfbc"), HashonHelper.fromHashMap(hashMap)));
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }
}
