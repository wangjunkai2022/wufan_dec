package com.mob.commons;

import android.os.Process;
import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
import com.mob.tools.network.NetCommunicator;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.FileLocker;
import com.mob.tools.utils.HashonHelper;
import java.net.InetSocketAddress;
import java.nio.channels.ServerSocketChannel;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private static volatile boolean f53099a = true;

    /* renamed from: b  reason: collision with root package name */
    private static volatile int f53100b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static AtomicBoolean f53101c = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicBoolean f53102d = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(boolean z3, boolean z4) {
        if (z3) {
            CountDownLatch f4 = f();
            MobLog.getInstance().d(DeviceHelper.getInstance(MobSDK.getContext()).isInMainProcess() ? "main" : "sub", new Object[0]);
            if (!z4) {
                b(f4);
            } else {
                b.h();
            }
        }
    }

    public static String e() {
        return "jvr<1fgxsowakcet{mpzqnWPKUVCN0dy2iuhFDHQ|GTXERO:43YJ7lZ;/MI>\"@8A?9[)_]5=.(S'6~盺朼L\\-";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(boolean z3) {
        try {
            f(z3);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            try {
                f(z3);
            } catch (Throwable th2) {
                MobLog.getInstance().d(th2);
            }
        }
    }

    private static void f(boolean z3) throws Throwable {
        HashMap<String, Object> f4 = q.f();
        f4.put(o.a("009:defgejffdh.iiNgh9e"), String.valueOf(z3));
        String httpGet = new NetworkHelper().httpGet(c.a(c.f52906c) + o.a("036ge8dhdeXj'dfdgdiYge?eceddedgdi'g-dfdcSdc?ecdhdegcdfJdWdeecdkAgFfgId;dfRd.dcfg"), f4, NetCommunicator.getCommonDefaultHeaders());
        NLog mobLog = MobLog.getInstance();
        mobLog.d("RS sp: " + httpGet, new Object[0]);
        HashMap fromJson = HashonHelper.fromJson(httpGet);
        if (fromJson != null) {
            if ("200".equals(String.valueOf(fromJson.get(o.a("004*dgecXhi"))))) {
                return;
            }
            throw new Throwable("RS code is not 200: " + httpGet);
        }
        throw new Throwable("RS is illegal: " + httpGet);
    }

    private static void h() {
        try {
            com.mob.mgs.impl.b.a();
        } catch (Throwable unused) {
        }
    }

    private static void i() {
        try {
            ServerSocketChannel open = ServerSocketChannel.open();
            open.configureBlocking(false);
            open.socket().bind(new InetSocketAddress(37926));
            m.f53057a = false;
            open.close();
        } catch (Throwable unused) {
        }
    }

    private static void j() {
        i.a().a(new h() { // from class: com.mob.commons.s.3
            @Override // com.mob.commons.h
            public void a(boolean z3, boolean z4, long j4) {
                if (z3) {
                    MobLog.getInstance().d("fg.", new Object[0]);
                    boolean unused = s.f53099a = true;
                    return;
                }
                MobLog.getInstance().d("bg.", new Object[0]);
                boolean unused2 = s.f53099a = false;
            }
        });
    }

    public static int c() {
        NLog mobLog = MobLog.getInstance();
        mobLog.d("get py grtd status: " + f53100b, new Object[0]);
        return f53100b;
    }

    public static int d() {
        NLog mobLog = MobLog.getInstance();
        mobLog.d("get py grtd status mem: " + f53100b, new Object[0]);
        if (f53100b != -1) {
            return f53100b;
        }
        int b4 = w.a().b(w.f53134i, -1);
        NLog mobLog2 = MobLog.getInstance();
        mobLog2.d("get py grtd status cache: " + b4, new Object[0]);
        return b4;
    }

    public static void a(final boolean z3) {
        u.f53114c.execute(new com.mob.tools.utils.c() { // from class: com.mob.commons.s.1
            @Override // com.mob.tools.utils.c
            protected void a() {
                if (!TextUtils.isEmpty("M-")) {
                    Thread currentThread = Thread.currentThread();
                    currentThread.setName("M-" + o.a("0043ghiihigl"));
                }
                boolean a4 = w.a().a(w.f53133h, n.f53086e);
                int b4 = w.a().b(w.f53134i, -1);
                if (b4 != -1) {
                    int unused = s.f53100b = b4;
                }
                if (!a4 || s.f53100b == 1) {
                    s.b(true, z3);
                } else {
                    s.b(false, z3);
                }
                NLog mobLog = MobLog.getInstance();
                StringBuilder sb = new StringBuilder();
                sb.append(z3 ? o.a("002Ydh=i") : "");
                sb.append("init cfg over. py ");
                sb.append(s.f53100b);
                mobLog.d(sb.toString(), new Object[0]);
            }
        });
    }

    public static boolean a() {
        return f53099a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final CountDownLatch countDownLatch) {
        if (f53101c.compareAndSet(false, true)) {
            n.a(MobSDK.getContext());
            i();
            v.a();
            j();
            h();
            new com.mob.tools.utils.d("PY-C") { // from class: com.mob.commons.s.2
                @Override // com.mob.tools.utils.d
                protected void a() {
                    NLog mobLog = MobLog.getInstance();
                    mobLog.d("g lk st: " + Process.myPid(), new Object[0]);
                    boolean a4 = l.a(l.a(l.f53051g), new k() { // from class: com.mob.commons.s.2.1
                        @Override // com.mob.commons.k
                        public boolean a(FileLocker fileLocker) {
                            NLog mobLog2 = MobLog.getInstance();
                            mobLog2.d("g lk pd: " + Process.myPid() + ", proc st", new Object[0]);
                            long currentTimeMillis = System.currentTimeMillis();
                            w.g();
                            b.a(countDownLatch);
                            NLog mobLog3 = MobLog.getInstance();
                            mobLog3.d("g lk pd: " + Process.myPid() + ", proc ed, dur: " + (System.currentTimeMillis() - currentTimeMillis) + ", release: y", new Object[0]);
                            return false;
                        }
                    });
                    NLog mobLog2 = MobLog.getInstance();
                    mobLog2.d("g lk res: " + a4 + Process.myPid(), new Object[0]);
                }
            }.start();
        }
    }

    public static CountDownLatch f() {
        if (!f53102d.getAndSet(true)) {
            com.mob.tools.a.l.a(MobSDK.getContext()).a(com.mob.tools.a.l.a(MobSDK.getContext()).b());
            return com.mob.tools.a.c.a(MobSDK.getContext()).a(com.mob.tools.a.c.a(MobSDK.getContext()).d());
        }
        return new CountDownLatch(0);
    }

    public static boolean b() {
        return !w.a().a(w.f53133h, n.f53086e) || f53100b == 1;
    }

    public static void b(final boolean z3) {
        f53100b = z3 ? 1 : 0;
        NLog mobLog = MobLog.getInstance();
        mobLog.d("submit py: " + z3, new Object[0]);
        new com.mob.tools.utils.d(o.a("004[ghiihigk")) { // from class: com.mob.commons.s.4
            @Override // com.mob.tools.utils.d
            protected void a() {
                w.a().a(w.f53134i, z3 ? 1 : 0);
                if (z3) {
                    CountDownLatch f4 = s.f();
                    MobLog.getInstance().d(DeviceHelper.getInstance(MobSDK.getContext()).isInMainProcess() ? "main" : "sub", new Object[0]);
                    s.b(f4);
                    s.e(z3);
                }
            }
        }.start();
    }
}
