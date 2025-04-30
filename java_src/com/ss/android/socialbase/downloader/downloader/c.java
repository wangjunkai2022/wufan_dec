package com.ss.android.socialbase.downloader.downloader;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.socialbase.downloader.depend.aa;
import com.ss.android.socialbase.downloader.depend.ab;
import com.ss.android.socialbase.downloader.depend.af;
import com.ss.android.socialbase.downloader.depend.ak;
import com.ss.android.socialbase.downloader.downloader.u;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.impls.DownloadHandleService;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import com.ss.android.socialbase.downloader.network.IDownloadHttpService;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.Dispatcher;
import okhttp3.Dns;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import org.cocos2dx.lib.GameControllerDelegate;
import org.json.JSONObject;
/* compiled from: DownloadComponentManager.java */
/* loaded from: classes4.dex */
public class c {
    private static volatile com.ss.android.socialbase.downloader.d.b A;
    private static volatile aa B;
    private static volatile com.ss.android.socialbase.downloader.network.f F;
    private static volatile com.ss.android.socialbase.downloader.network.f G;
    private static volatile u H;
    private static int K;
    private static final int L;
    private static final int M;
    private static final int N;
    private static final int O;
    private static int P;
    private static boolean Q;
    private static final List<com.ss.android.socialbase.downloader.depend.k> R;
    private static final List<ab> S;
    private static int T;
    private static boolean U;
    private static boolean V;
    private static r W;
    private static com.ss.android.socialbase.downloader.d.c X;
    private static volatile boolean Y;

    /* renamed from: a  reason: collision with root package name */
    private static volatile Context f57951a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile j f57952b;

    /* renamed from: c  reason: collision with root package name */
    private static volatile k f57953c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile h f57954d;

    /* renamed from: e  reason: collision with root package name */
    private static volatile af f57955e;

    /* renamed from: f  reason: collision with root package name */
    private static volatile com.ss.android.socialbase.downloader.impls.a f57956f;

    /* renamed from: g  reason: collision with root package name */
    private static volatile o f57957g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile o f57958h;

    /* renamed from: i  reason: collision with root package name */
    private static volatile a f57959i;

    /* renamed from: j  reason: collision with root package name */
    private static volatile IDownloadHttpService f57960j;

    /* renamed from: k  reason: collision with root package name */
    private static volatile com.ss.android.socialbase.downloader.network.h f57961k;

    /* renamed from: l  reason: collision with root package name */
    private static volatile IDownloadHttpService f57962l;

    /* renamed from: m  reason: collision with root package name */
    private static volatile com.ss.android.socialbase.downloader.network.h f57963m;

    /* renamed from: n  reason: collision with root package name */
    private static volatile l f57964n;

    /* renamed from: o  reason: collision with root package name */
    private static volatile ExecutorService f57965o;

    /* renamed from: p  reason: collision with root package name */
    private static volatile ExecutorService f57966p;

    /* renamed from: q  reason: collision with root package name */
    private static volatile ExecutorService f57967q;

    /* renamed from: r  reason: collision with root package name */
    private static volatile ExecutorService f57968r;

    /* renamed from: s  reason: collision with root package name */
    private static volatile ExecutorService f57969s;

    /* renamed from: t  reason: collision with root package name */
    private static volatile ExecutorService f57970t;

    /* renamed from: u  reason: collision with root package name */
    private static volatile ExecutorService f57971u;

    /* renamed from: v  reason: collision with root package name */
    private static volatile ExecutorService f57972v;

    /* renamed from: w  reason: collision with root package name */
    private static volatile g f57973w;

    /* renamed from: x  reason: collision with root package name */
    private static volatile DownloadReceiver f57974x;

    /* renamed from: y  reason: collision with root package name */
    private static volatile s f57975y;

    /* renamed from: z  reason: collision with root package name */
    private static volatile q f57976z;
    private static volatile List<ak> C = new ArrayList();
    private static volatile boolean D = false;
    private static volatile OkHttpClient E = null;
    private static final List<com.ss.android.socialbase.downloader.depend.m> I = new ArrayList();
    private static boolean J = false;

    /* compiled from: DownloadComponentManager.java */
    /* loaded from: classes4.dex */
    public interface a {

        /* compiled from: DownloadComponentManager.java */
        /* renamed from: com.ss.android.socialbase.downloader.downloader.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public interface InterfaceC0327a {
            void a();
        }

        o a();

        t a(InterfaceC0327a interfaceC0327a);

        m b();
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors() + 1;
        L = availableProcessors;
        M = (Runtime.getRuntime().availableProcessors() * 2) + 1;
        N = availableProcessors;
        O = availableProcessors;
        P = 8192;
        R = new ArrayList();
        S = new ArrayList();
        U = true;
        V = false;
        Y = false;
    }

    private c() {
    }

    public static List<com.ss.android.socialbase.downloader.depend.m> A() {
        return I;
    }

    public static k B() {
        if (f57953c == null) {
            synchronized (c.class) {
                if (f57953c == null) {
                    f57953c = new com.ss.android.socialbase.downloader.impls.i();
                }
            }
        }
        return f57953c;
    }

    public static com.ss.android.socialbase.downloader.impls.a C() {
        if (f57956f == null) {
            synchronized (c.class) {
                if (f57956f == null) {
                    f57956f = new com.ss.android.socialbase.downloader.impls.e();
                }
            }
        }
        return f57956f;
    }

    public static int D() {
        return T;
    }

    @NonNull
    public static JSONObject E() {
        return (B == null || B.a() == null) ? com.ss.android.socialbase.downloader.constants.e.f57879i : B.a();
    }

    public static void F() {
        if (TextUtils.isEmpty(com.ss.android.socialbase.downloader.constants.e.f57873c)) {
            com.ss.android.socialbase.downloader.constants.e.f57873c = "oppo";
            com.ss.android.socialbase.downloader.constants.e.f57872b = com.ss.android.socialbase.downloader.constants.e.f57873c.toUpperCase();
        }
    }

    public static boolean G() {
        return U;
    }

    public static synchronized int H() {
        int i2;
        synchronized (c.class) {
            i2 = P;
        }
        return i2;
    }

    public static h I() {
        if (f57954d == null) {
            synchronized (c.class) {
                if (f57954d == null) {
                    f57954d = new com.ss.android.socialbase.downloader.impls.c();
                }
            }
        }
        return f57954d;
    }

    public static af J() {
        return f57955e;
    }

    public static g K() {
        if (f57973w == null) {
            synchronized (c.class) {
                if (f57973w == null) {
                    f57973w = new com.ss.android.socialbase.downloader.impls.b();
                }
            }
        }
        return f57973w;
    }

    public static s L() {
        if (f57975y == null) {
            synchronized (c.class) {
                if (f57975y == null) {
                    f57975y = new com.ss.android.socialbase.downloader.impls.j();
                }
            }
        }
        return f57975y;
    }

    public static u M() {
        if (H == null) {
            synchronized (c.class) {
                if (H == null) {
                    H = new u.a();
                }
            }
        }
        return H;
    }

    public static synchronized Context N() {
        Context context;
        synchronized (c.class) {
            context = f57951a;
        }
        return context;
    }

    public static synchronized boolean O() {
        boolean z3;
        synchronized (c.class) {
            z3 = Q;
        }
        return z3;
    }

    @NonNull
    public static com.ss.android.socialbase.downloader.d.c P() {
        if (X == null) {
            X = new com.ss.android.socialbase.downloader.d.c() { // from class: com.ss.android.socialbase.downloader.downloader.c.3
                @Override // com.ss.android.socialbase.downloader.d.c
                public void a(int i2, String str, JSONObject jSONObject) {
                }

                @Override // com.ss.android.socialbase.downloader.d.c
                public void b(int i2, String str, JSONObject jSONObject) {
                }
            };
        }
        return X;
    }

    public static r Q() {
        return W;
    }

    public static boolean R() {
        return Y;
    }

    public static boolean S() {
        StringBuilder sb = new StringBuilder();
        sb.append("supportMultiProc::=");
        sb.append(f57959i != null);
        com.ss.android.socialbase.downloader.c.a.a("wjd", sb.toString());
        return f57959i != null;
    }

    public static a T() {
        return f57959i;
    }

    private static void U() {
        if (f57974x == null) {
            f57974x = new DownloadReceiver();
        }
        if (J) {
            return;
        }
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            f57951a.registerReceiver(f57974x, intentFilter);
            J = true;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static int a(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return 0;
        }
        return a(downloadInfo.getUrl(), downloadInfo.getSavePath());
    }

    public static int a(String str, String str2) {
        k B2 = B();
        if (B2 == null) {
            return 0;
        }
        return B2.a(str, str2);
    }

    public static com.ss.android.socialbase.downloader.network.g a(String str, List<com.ss.android.socialbase.downloader.model.c> list) throws Exception {
        return a(str, list, 0, false, null);
    }

    public static com.ss.android.socialbase.downloader.network.g a(String str, List<com.ss.android.socialbase.downloader.model.c> list, int i2, boolean z3, DownloadInfo downloadInfo) throws Exception {
        com.ss.android.socialbase.downloader.network.g b4;
        Exception e4 = null;
        for (int i4 : a(i2)) {
            try {
                b4 = b(str, list, i4, z3, downloadInfo);
            } catch (Exception e5) {
                e4 = e5;
            }
            if (b4 != null) {
                return b4;
            }
        }
        if (e4 == null) {
            return null;
        }
        throw e4;
    }

    private static com.ss.android.socialbase.downloader.network.i a(int i2, String str, String str2, List<com.ss.android.socialbase.downloader.model.c> list, int i4, boolean z3, DownloadInfo downloadInfo) throws BaseException, IOException {
        IDownloadHttpService d4 = i4 == 1 ? d() : h();
        if (d4 == null) {
            throw new BaseException((int) GameControllerDelegate.BUTTON_SELECT, new IOException("httpService not exist, netLib = " + i4));
        }
        long j4 = 0;
        try {
            if (z3) {
                try {
                    j4 = System.currentTimeMillis();
                } catch (IOException e4) {
                    e = e4;
                    throw e;
                } catch (Throwable th) {
                    th = th;
                    if (z3) {
                        com.ss.android.socialbase.downloader.d.a.a(null, str, str2, System.currentTimeMillis() - 0, "get", i4, null, downloadInfo);
                    }
                    throw th;
                }
            }
            try {
                com.ss.android.socialbase.downloader.network.i downloadWithConnection = d4.downloadWithConnection(i2, str, list);
                if (z3) {
                    com.ss.android.socialbase.downloader.d.a.a(downloadWithConnection, str, str2, System.currentTimeMillis() - j4, "get", i4, null, downloadInfo);
                }
                return downloadWithConnection;
            } catch (IOException e5) {
                e = e5;
                throw e;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static com.ss.android.socialbase.downloader.network.i a(boolean z3, int i2, String str, String str2, List<com.ss.android.socialbase.downloader.model.c> list, int i4, boolean z4, DownloadInfo downloadInfo) throws Exception {
        List<com.ss.android.socialbase.downloader.model.c> list2;
        int i5;
        com.ss.android.socialbase.downloader.network.i a4;
        if (!TextUtils.isEmpty(str2)) {
            List<com.ss.android.socialbase.downloader.model.c> arrayList = list == null ? new ArrayList<>() : list;
            arrayList.add(new com.ss.android.socialbase.downloader.model.c("ss_d_request_host_ip_114", str2));
            list2 = arrayList;
            i5 = 1;
        } else if (z3) {
            list2 = list;
            i5 = i4;
        } else {
            i5 = 2;
            list2 = list;
        }
        int[] a5 = a(i5);
        Exception exc = null;
        for (int i6 : a5) {
            try {
                a4 = a(i2, str, str2, list2, i6, z4, downloadInfo);
            } catch (Exception e4) {
                if (downloadInfo.isExpiredRedownload() && com.ss.android.socialbase.downloader.i.f.g(e4) && com.ss.android.socialbase.downloader.i.f.c(list2)) {
                    com.ss.android.socialbase.downloader.c.a.a("dcach::http exception 304, throw excepiton, not retry " + e4);
                    throw e4;
                }
                exc = e4;
            }
            if (a4 != null) {
                return a4;
            }
        }
        if (exc == null) {
            return null;
        }
        throw exc;
    }

    public static com.ss.android.socialbase.downloader.network.i a(boolean z3, int i2, String str, List<com.ss.android.socialbase.downloader.model.c> list) throws Exception {
        return a(z3, i2, str, null, list, 0, false, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void a() {
        synchronized (c.class) {
            try {
                if (J && f57974x != null && f57951a != null) {
                    f57951a.unregisterReceiver(f57974x);
                    J = false;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public static synchronized void a(Context context) {
        synchronized (c.class) {
            if (context != null) {
                if (f57951a == null) {
                    f57951a = context.getApplicationContext();
                    com.ss.android.socialbase.downloader.a.a.a().a(f57951a);
                }
            }
        }
    }

    public static void a(com.ss.android.socialbase.downloader.constants.d dVar) {
        List<com.ss.android.socialbase.downloader.depend.k> list = R;
        synchronized (list) {
            for (com.ss.android.socialbase.downloader.depend.k kVar : list) {
                if (kVar != null) {
                    if (dVar == com.ss.android.socialbase.downloader.constants.d.SYNC_START) {
                        kVar.a();
                    } else if (dVar == com.ss.android.socialbase.downloader.constants.d.SYNC_SUCCESS) {
                        kVar.b();
                    }
                }
            }
            if (dVar == com.ss.android.socialbase.downloader.constants.d.SYNC_SUCCESS) {
                R.clear();
            }
        }
    }

    private static void a(com.ss.android.socialbase.downloader.d.b bVar) {
        if (bVar != null) {
            A = bVar;
        }
    }

    public static void a(com.ss.android.socialbase.downloader.d.c cVar) {
        X = cVar;
    }

    public static void a(aa aaVar) {
        B = aaVar;
        com.ss.android.socialbase.downloader.g.a.a();
    }

    public static void a(af afVar) {
        if (afVar != null) {
            f57955e = afVar;
        }
    }

    public static void a(ak akVar) {
        if (akVar == null) {
            return;
        }
        synchronized (C) {
            C.add(akVar);
        }
    }

    public static void a(com.ss.android.socialbase.downloader.depend.k kVar) {
        List<com.ss.android.socialbase.downloader.depend.k> list = R;
        synchronized (list) {
            if (kVar != null) {
                if (!list.contains(kVar)) {
                    list.add(kVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void a(DownloaderBuilder downloaderBuilder) {
        synchronized (c.class) {
            if (Y) {
                com.ss.android.socialbase.downloader.c.a.e("DownloadComponentManager", "component has init");
                return;
            }
            boolean z3 = D;
            c(downloaderBuilder);
            if (f57952b == null) {
                f57952b = new com.ss.android.socialbase.downloader.impls.d();
            }
            if (f57957g == null) {
                f57957g = new com.ss.android.socialbase.downloader.impls.h();
            }
            if (f57958h == null && f57959i != null) {
                f57958h = f57959i.a();
            }
            if (f57953c == null) {
                f57953c = new com.ss.android.socialbase.downloader.impls.i();
            }
            if (f57956f == null) {
                f57956f = new com.ss.android.socialbase.downloader.impls.e();
            }
            if (f57954d == null) {
                f57954d = new com.ss.android.socialbase.downloader.impls.c();
            }
            if (f57973w == null) {
                f57973w = new com.ss.android.socialbase.downloader.impls.b();
            }
            if (f57975y == null) {
                f57975y = new com.ss.android.socialbase.downloader.impls.j();
            }
            int i2 = K;
            if (i2 <= 0 || i2 > L) {
                K = L;
            }
            U();
            if (D && !z3 && !com.ss.android.socialbase.downloader.i.f.c()) {
                com.ss.android.socialbase.downloader.impls.l.a(true).startService();
            } else if (com.ss.android.socialbase.downloader.i.f.d()) {
                ExecutorService m4 = m();
                if (m4 != null) {
                    m4.execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.c.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Context N2 = c.N();
                            if (N2 != null) {
                                com.ss.android.socialbase.downloader.i.f.d(N2);
                            }
                        }
                    });
                }
            } else {
                Context N2 = N();
                if (N2 != null) {
                    com.ss.android.socialbase.downloader.i.f.d(N2);
                }
            }
            F();
            Y = true;
        }
    }

    public static void a(a aVar) {
        com.ss.android.socialbase.downloader.c.a.a("wjd", "setIndependentServiceCreator::creator=" + aVar);
        f57959i = aVar;
    }

    private static void a(g gVar) {
        if (gVar != null) {
            f57973w = gVar;
        }
    }

    private static void a(h hVar) {
        if (hVar != null) {
            f57954d = hVar;
        }
    }

    private static void a(j jVar) {
        if (jVar != null) {
            f57952b = jVar;
        }
    }

    private static void a(k kVar) {
        if (kVar != null) {
            f57953c = kVar;
        }
    }

    public static synchronized void a(l lVar) {
        synchronized (c.class) {
            if (lVar != null) {
                f57964n = lVar;
                if (f57952b instanceof com.ss.android.socialbase.downloader.impls.d) {
                    ((com.ss.android.socialbase.downloader.impls.d) f57952b).h();
                }
            }
        }
    }

    public static void a(r rVar) {
    }

    public static void a(DownloadTask downloadTask, int i2) {
        List<ab> list = S;
        synchronized (list) {
            for (ab abVar : list) {
                if (abVar != null) {
                    abVar.a(downloadTask, i2);
                }
            }
        }
    }

    public static void a(IDownloadHttpService iDownloadHttpService) {
        if (iDownloadHttpService != null) {
            f57960j = iDownloadHttpService;
        }
        Q = f57960j != null;
    }

    public static void a(com.ss.android.socialbase.downloader.network.h hVar) {
        if (hVar != null) {
            f57961k = hVar;
        }
    }

    public static void a(Runnable runnable) {
        b(runnable, false);
    }

    public static void a(Runnable runnable, boolean z3) {
        if (runnable == null) {
            return;
        }
        if (!z3 || com.ss.android.socialbase.downloader.i.f.d()) {
            l().execute(runnable);
        } else {
            runnable.run();
        }
    }

    private static void a(List<com.ss.android.socialbase.downloader.depend.m> list) {
        List<com.ss.android.socialbase.downloader.depend.m> list2 = I;
        if (list2.isEmpty()) {
            synchronized (list2) {
                list2.addAll(list);
            }
        }
    }

    public static void a(ExecutorService executorService) {
        if (executorService != null) {
            f57971u = executorService;
        }
    }

    public static void a(boolean z3) {
        V = z3;
    }

    private static int[] a(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? new int[]{1, 0} : new int[]{0, 1} : new int[]{1} : new int[]{0};
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.ss.android.socialbase.downloader.network.g b(java.lang.String r12, java.util.List<com.ss.android.socialbase.downloader.model.c> r13, int r14, boolean r15, com.ss.android.socialbase.downloader.model.DownloadInfo r16) throws com.ss.android.socialbase.downloader.exception.BaseException, java.io.IOException {
        /*
            r7 = r14
            r0 = 1
            if (r7 != r0) goto L9
            com.ss.android.socialbase.downloader.network.h r0 = f()
            goto Ld
        L9:
            com.ss.android.socialbase.downloader.network.h r0 = i()
        Ld:
            if (r0 == 0) goto L5a
            r1 = 0
            r2 = 0
            r3 = 0
            if (r15 == 0) goto L20
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L1a java.io.IOException -> L1d
            goto L20
        L1a:
            r0 = move-exception
            r5 = r12
            goto L40
        L1d:
            r0 = move-exception
            r5 = r12
            goto L43
        L20:
            r5 = r12
            r6 = r13
            com.ss.android.socialbase.downloader.network.g r0 = r0.a(r12, r13)     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L42
            if (r15 == 0) goto L3e
            r6 = 0
            long r1 = java.lang.System.currentTimeMillis()
            long r8 = r1 - r3
            r10 = 0
            java.lang.String r11 = "head"
            r1 = r0
            r2 = r12
            r3 = r6
            r4 = r8
            r6 = r11
            r7 = r14
            r8 = r10
            r9 = r16
            com.ss.android.socialbase.downloader.d.a.a(r1, r2, r3, r4, r6, r7, r8, r9)
        L3e:
            return r0
        L3f:
            r0 = move-exception
        L40:
            r8 = r2
            goto L45
        L42:
            r0 = move-exception
        L43:
            r2 = r0
            throw r2     // Catch: java.lang.Throwable -> L3f
        L45:
            if (r15 == 0) goto L59
            r6 = 0
            long r9 = java.lang.System.currentTimeMillis()
            long r9 = r9 - r3
            java.lang.String r11 = "head"
            r2 = r12
            r3 = r6
            r4 = r9
            r6 = r11
            r7 = r14
            r9 = r16
            com.ss.android.socialbase.downloader.d.a.a(r1, r2, r3, r4, r6, r7, r8, r9)
        L59:
            throw r0
        L5a:
            com.ss.android.socialbase.downloader.exception.BaseException r0 = new com.ss.android.socialbase.downloader.exception.BaseException
            r1 = 1022(0x3fe, float:1.432E-42)
            java.io.IOException r2 = new java.io.IOException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "httpService not exist, netLib = "
            r3.append(r4)
            r3.append(r14)
            java.lang.String r3 = r3.toString()
            r2.<init>(r3)
            r0.<init>(r1, r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.downloader.c.b(java.lang.String, java.util.List, int, boolean, com.ss.android.socialbase.downloader.model.DownloadInfo):com.ss.android.socialbase.downloader.network.g");
    }

    public static synchronized void b() {
        synchronized (c.class) {
            if (D) {
                return;
            }
            D = true;
            Intent intent = new Intent(N(), DownloadHandleService.class);
            intent.setAction("com.ss.android.downloader.action.MULTI_PROCESS_NOTIFY");
            N().startService(intent);
            if (!com.ss.android.socialbase.downloader.i.f.c()) {
                com.ss.android.socialbase.downloader.impls.l.a(true).startService();
            }
        }
    }

    private static void b(int i2) {
        if (i2 > 0) {
            K = i2;
        }
    }

    public static void b(com.ss.android.socialbase.downloader.depend.k kVar) {
        List<com.ss.android.socialbase.downloader.depend.k> list = R;
        synchronized (list) {
            if (kVar != null) {
                if (list.contains(kVar)) {
                    list.remove(kVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void b(DownloaderBuilder downloaderBuilder) {
        synchronized (c.class) {
            c(downloaderBuilder);
        }
    }

    public static void b(DownloadTask downloadTask, int i2) {
        List<ab> list = S;
        synchronized (list) {
            for (ab abVar : list) {
                if (abVar != null) {
                    abVar.b(downloadTask, i2);
                }
            }
        }
    }

    public static void b(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (com.ss.android.socialbase.downloader.i.f.d()) {
            r().execute(runnable);
        } else {
            runnable.run();
        }
    }

    public static void b(Runnable runnable, boolean z3) {
        if (runnable == null) {
            return;
        }
        if (!z3 || com.ss.android.socialbase.downloader.i.f.d()) {
            m().execute(runnable);
        } else {
            runnable.run();
        }
    }

    public static void b(ExecutorService executorService) {
        if (executorService != null) {
            f57972v = executorService;
        }
    }

    private static void b(boolean z3) {
        U = z3;
    }

    private static void c(DownloaderBuilder downloaderBuilder) {
        com.ss.android.socialbase.downloader.network.h i2;
        if (downloaderBuilder != null) {
            if (downloaderBuilder.getContext() != null) {
                a(downloaderBuilder.getContext());
            }
            if (downloaderBuilder.getDownloadCache() != null) {
                a(downloaderBuilder.getDownloadCache());
            }
            if (downloaderBuilder.getIdGenerator() != null) {
                a(downloaderBuilder.getIdGenerator());
            }
            if (downloaderBuilder.getChunkCntCalculator() != null) {
                a(downloaderBuilder.getChunkCntCalculator());
            }
            if (downloaderBuilder.getNotificationClickCallback() != null) {
                a(downloaderBuilder.getNotificationClickCallback());
            }
            if (downloaderBuilder.getMaxDownloadPoolSize() != 0) {
                b(downloaderBuilder.getMaxDownloadPoolSize());
            }
            if (downloaderBuilder.getHttpService() != null) {
                a(downloaderBuilder.getHttpService());
            }
            if (downloaderBuilder.getHeadHttpService() != null) {
                a(downloaderBuilder.getHeadHttpService());
            }
            if (downloaderBuilder.getDownloadLaunchHandler() != null) {
                a(downloaderBuilder.getDownloadLaunchHandler());
            }
            if (downloaderBuilder.getCPUThreadExecutor() != null) {
                c(downloaderBuilder.getCPUThreadExecutor());
            }
            if (downloaderBuilder.getIOThreadExecutor() != null) {
                d(downloaderBuilder.getIOThreadExecutor());
            }
            if (downloaderBuilder.getMixDefaultDownloadExecutor() != null) {
                e(downloaderBuilder.getMixDefaultDownloadExecutor());
            }
            if (downloaderBuilder.getMixFrequentDownloadExecutor() != null) {
                f(downloaderBuilder.getMixFrequentDownloadExecutor());
            }
            if (downloaderBuilder.getMixApkDownloadExecutor() != null) {
                g(downloaderBuilder.getMixApkDownloadExecutor());
            }
            if (downloaderBuilder.getDBThreadExecutor() != null) {
                h(downloaderBuilder.getDBThreadExecutor());
            }
            if (downloaderBuilder.getChunkThreadExecutor() != null) {
                a(downloaderBuilder.getChunkThreadExecutor());
            }
            if (downloaderBuilder.getOkHttpDispatcherExecutor() != null) {
                b(downloaderBuilder.getOkHttpDispatcherExecutor());
            }
            if (!downloaderBuilder.getDownloadCompleteHandlers().isEmpty()) {
                a(downloaderBuilder.getDownloadCompleteHandlers());
            }
            if (downloaderBuilder.getMonitorConfig() != null) {
                f57976z = downloaderBuilder.getMonitorConfig();
            }
            if (downloaderBuilder.getWriteBufferSize() > 1024) {
                P = downloaderBuilder.getWriteBufferSize();
            }
            if (downloaderBuilder.getChunkAdjustCalculator() != null) {
                a(downloaderBuilder.getChunkAdjustCalculator());
            }
            if (downloaderBuilder.isDownloadInMultiProcess()) {
                D = true;
            }
            if (downloaderBuilder.getDownloadExpSwitch() != 0) {
                T = downloaderBuilder.getDownloadExpSwitch();
            }
            if (downloaderBuilder.getDownloadSetting() != null) {
                a(downloaderBuilder.getDownloadSetting());
            }
            if (downloaderBuilder.getDownloadDns() != null) {
                F = downloaderBuilder.getDownloadDns();
            }
            if (downloaderBuilder.getTTNetHandler() != null) {
                H = downloaderBuilder.getTTNetHandler();
                if (H.a()) {
                    a(H.b());
                    i2 = H.c();
                } else {
                    a(h());
                    i2 = i();
                }
                a(i2);
            }
            b(downloaderBuilder.needAutoRefreshUnSuccessTask());
            if (downloaderBuilder.getDownloadMonitorListener() != null) {
                a(downloaderBuilder.getDownloadMonitorListener());
            }
        }
    }

    private static void c(ExecutorService executorService) {
        if (executorService != null) {
            f57965o = executorService;
        }
    }

    public static synchronized boolean c() {
        boolean z3;
        synchronized (c.class) {
            z3 = D;
        }
        return z3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0000, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String c1655219899538dc(java.lang.String r2) {
        /*
        L0:
            r0 = 73
            r1 = 96
        L4:
            switch(r0) {
                case 72: goto L26;
                case 73: goto L8;
                case 74: goto Lb;
                default: goto L7;
            }
        L7:
            goto L2b
        L8:
            switch(r1) {
                case 94: goto L0;
                case 95: goto L26;
                case 96: goto L26;
                default: goto Lb;
            }
        Lb:
            switch(r1) {
                case 55: goto Lf;
                case 56: goto L26;
                case 57: goto L26;
                default: goto Le;
            }
        Le:
            goto L0
        Lf:
            char[] r2 = r2.toCharArray()
            r0 = 0
        L14:
            int r1 = r2.length
            if (r0 >= r1) goto L20
            char r1 = r2[r0]
            r1 = r1 ^ r0
            char r1 = (char) r1
            r2[r0] = r1
            int r0 = r0 + 1
            goto L14
        L20:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r2)
            return r0
        L26:
            r0 = 74
            r1 = 55
            goto L4
        L2b:
            r0 = 72
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.downloader.c.c1655219899538dc(java.lang.String):java.lang.String");
    }

    public static IDownloadHttpService d() {
        return f57960j;
    }

    private static void d(ExecutorService executorService) {
        if (executorService != null) {
            f57966p = executorService;
        }
    }

    public static List<ak> e() {
        List<ak> list;
        synchronized (C) {
            list = C;
        }
        return list;
    }

    private static void e(ExecutorService executorService) {
        if (executorService != null) {
            f57967q = executorService;
        }
    }

    public static com.ss.android.socialbase.downloader.network.h f() {
        return f57961k;
    }

    private static void f(ExecutorService executorService) {
        if (executorService != null) {
            f57968r = executorService;
        }
    }

    public static com.ss.android.socialbase.downloader.d.b g() {
        return A;
    }

    private static void g(ExecutorService executorService) {
        if (executorService != null) {
            f57969s = executorService;
        }
    }

    public static IDownloadHttpService h() {
        if (f57962l == null) {
            synchronized (c.class) {
                if (f57962l == null) {
                    f57962l = new com.ss.android.socialbase.downloader.impls.g();
                }
            }
        }
        return f57962l;
    }

    private static void h(ExecutorService executorService) {
        if (executorService != null) {
            f57970t = executorService;
        }
    }

    public static com.ss.android.socialbase.downloader.network.h i() {
        if (f57963m == null) {
            synchronized (c.class) {
                if (f57963m == null) {
                    f57963m = new com.ss.android.socialbase.downloader.impls.f();
                }
            }
        }
        return f57963m;
    }

    public static boolean j() {
        return com.ss.android.socialbase.downloader.g.a.c().a("switch_not_auto_boot_service", V ? 1 : 0) > 0;
    }

    public static synchronized q k() {
        q qVar;
        synchronized (c.class) {
            qVar = f57976z;
        }
        return qVar;
    }

    public static ExecutorService l() {
        if (f57965o == null) {
            synchronized (c.class) {
                if (f57965o == null) {
                    int i2 = L;
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i2, i2, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.ss.android.socialbase.downloader.h.a("DownloadThreadPool-cpu-fixed", true));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    f57965o = threadPoolExecutor;
                }
            }
        }
        return f57965o;
    }

    public static ExecutorService m() {
        return f57966p != null ? f57966p : l();
    }

    public static ExecutorService n() {
        return f57968r != null ? f57968r : p();
    }

    public static ExecutorService o() {
        return f57969s != null ? f57969s : p();
    }

    public static ExecutorService p() {
        if (f57967q == null) {
            synchronized (c.class) {
                if (f57967q == null) {
                    int i2 = N;
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i2, i2, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.ss.android.socialbase.downloader.h.a("DownloadThreadPool-mix-fixed", true));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    f57967q = threadPoolExecutor;
                }
            }
        }
        return f57967q;
    }

    public static ExecutorService q() {
        if (f57971u == null) {
            synchronized (c.class) {
                if (f57971u == null) {
                    int i2 = M;
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i2, i2, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.ss.android.socialbase.downloader.h.a("DownloadThreadPool-chunk-fixed", true));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    f57971u = threadPoolExecutor;
                }
            }
        }
        return f57971u;
    }

    public static ExecutorService r() {
        if (f57970t == null) {
            synchronized (c.class) {
                if (f57970t == null) {
                    int i2 = O;
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i2, i2, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.ss.android.socialbase.downloader.h.a("DownloadThreadPool-db-fixed", true));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    f57970t = threadPoolExecutor;
                }
            }
        }
        return f57970t;
    }

    public static OkHttpClient s() {
        if (E == null) {
            synchronized (c.class) {
                if (E == null) {
                    E = t().build();
                }
            }
        }
        return E;
    }

    public static OkHttpClient.Builder t() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.connectTimeout(30000L, timeUnit).readTimeout(30000L, timeUnit).writeTimeout(30000L, timeUnit).retryOnConnectionFailure(true).followRedirects(true).protocols(Collections.singletonList(Protocol.HTTP_1_1));
        if (f57972v != null) {
            builder.dispatcher(new Dispatcher(f57972v));
        }
        return builder;
    }

    public static com.ss.android.socialbase.downloader.network.f u() {
        return F;
    }

    public static com.ss.android.socialbase.downloader.network.f v() {
        if (G == null) {
            synchronized (c.class) {
                if (G == null) {
                    G = new com.ss.android.socialbase.downloader.network.f() { // from class: com.ss.android.socialbase.downloader.downloader.c.2
                        @Override // com.ss.android.socialbase.downloader.network.f
                        public List<InetAddress> a(String str) throws UnknownHostException {
                            return Dns.SYSTEM.lookup(str);
                        }
                    };
                }
            }
        }
        return G;
    }

    public static synchronized l w() {
        l lVar;
        synchronized (c.class) {
            lVar = f57964n;
        }
        return lVar;
    }

    public static j x() {
        if (f57952b == null) {
            synchronized (c.class) {
                if (f57952b == null) {
                    f57952b = new com.ss.android.socialbase.downloader.impls.d();
                }
            }
        }
        return f57952b;
    }

    public static o y() {
        if (f57957g == null) {
            synchronized (c.class) {
                if (f57957g == null) {
                    f57957g = new com.ss.android.socialbase.downloader.impls.h();
                }
            }
        }
        return f57957g;
    }

    public static o z() {
        if (f57958h == null) {
            synchronized (c.class) {
                if (f57958h == null) {
                    f57958h = f57959i.a();
                }
            }
        }
        return f57958h;
    }
}
