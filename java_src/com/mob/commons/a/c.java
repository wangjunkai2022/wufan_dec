package com.mob.commons.a;

import android.location.Location;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.commons.MobProduct;
import com.mob.commons.u;
import com.mob.commons.v;
import com.mob.tools.MDP;
import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.ReflectHelper;
import com.mob.tools.utils.ResHelper;
import com.mob.tools.utils.UIHandler;
import java.io.File;
import java.util.HashMap;
import java.util.WeakHashMap;
/* loaded from: classes4.dex */
public abstract class c implements Runnable {

    /* renamed from: g  reason: collision with root package name */
    private static final WeakHashMap<String, Object> f52782g = new WeakHashMap<>();

    /* renamed from: a  reason: collision with root package name */
    protected Object f52783a;

    /* renamed from: b  reason: collision with root package name */
    protected int f52784b;

    /* renamed from: c  reason: collision with root package name */
    private final String f52785c;

    /* renamed from: d  reason: collision with root package name */
    private final String f52786d;

    /* renamed from: e  reason: collision with root package name */
    private final long f52787e;

    /* renamed from: f  reason: collision with root package name */
    private final long f52788f;

    /* renamed from: h  reason: collision with root package name */
    private int f52789h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f52790i;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static WeakHashMap<Integer, c> f52793a = new WeakHashMap<>();

        /* JADX INFO: Access modifiers changed from: private */
        public static synchronized void c(c cVar) {
            synchronized (a.class) {
                f52793a.put(Integer.valueOf(cVar.getClass().getName().hashCode()), cVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static synchronized void d(c cVar) {
            synchronized (a.class) {
                f52793a.remove(Integer.valueOf(cVar.getClass().getName().hashCode()));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static synchronized c b(Class<? extends c> cls) {
            c cVar;
            synchronized (a.class) {
                cVar = f52793a.get(Integer.valueOf(cls.getName().hashCode()));
            }
            return cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(String str, String str2) {
        this(str, 0L, str2, 0L);
    }

    public static c a(Class<? extends c> cls) {
        c b4 = a.b(cls);
        if (b4 == null) {
            try {
                return cls.newInstance();
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
                return b4;
            }
        }
        return b4;
    }

    protected abstract void a();

    protected void b() {
        long k4 = k();
        if (k4 <= 0 || k4 >= 604800) {
            return;
        }
        a(k4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        this.f52790i = true;
    }

    public String d() {
        return this.f52785c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean e() {
        return ((Long) com.mob.commons.b.a(this.f52785c, Long.valueOf(this.f52787e))).longValue() != 0 && m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean f() {
        return this.f52784b == 0;
    }

    public boolean g() {
        return h();
    }

    protected boolean h() {
        if (e()) {
            u.f53114c.execute(this);
            return true;
        }
        return false;
    }

    protected boolean i() {
        boolean a4 = com.mob.commons.b.a();
        boolean b4 = com.mob.commons.b.b();
        if (a4 && b4) {
            boolean e4 = e();
            NLog mobLog = MobLog.getInstance();
            mobLog.d("run clt: " + getClass().getSimpleName() + ", to: " + a4 + ", conn: " + b4 + ", " + this.f52785c + ": " + e4 + ", key: " + a(this.f52785c, (String) 0) + ", gp: " + k(), new Object[0]);
            return e4;
        }
        NLog mobLog2 = MobLog.getInstance();
        mobLog2.d("run clt: " + d() + ", to: " + a4 + ", conn: " + b4, new Object[0]);
        return false;
    }

    protected void j() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long k() {
        try {
            String str = this.f52786d;
            if (str != null) {
                return Long.parseLong(String.valueOf(com.mob.commons.b.a(str, Long.valueOf(this.f52788f))));
            }
            return 0L;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return 0L;
        }
    }

    protected HashMap<String, Object> l() {
        if (((Integer) a(com.mob.commons.o.a("002Teced"), (String) 0)).intValue() == 1) {
            return a(DeviceHelper.getInstance(MobSDK.getContext()).getLocation(0, 0, true), true);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean m() {
        if ("bs,l,ol,wi,wl,ext,aa,".contains(this.f52785c + ",")) {
            return com.mob.commons.g.a().b();
        }
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (i()) {
                if (!com.mob.commons.b.d()) {
                    a(60000L);
                    try {
                        j();
                        return;
                    } catch (Throwable th) {
                        MobLog.getInstance().d(th);
                        return;
                    }
                }
                a();
                if (!this.f52790i) {
                    a.d(this);
                } else {
                    a.c(this);
                }
                b();
            }
            j();
        } catch (Throwable th2) {
            MobLog.getInstance().d(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(String str, long j4, String str2, long j5) {
        this.f52784b = 0;
        this.f52789h = 2;
        this.f52790i = false;
        this.f52785c = str;
        this.f52786d = str2;
        this.f52787e = j4;
        this.f52788f = j5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i2) {
        this.f52789h = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(long j4) {
        a(j4, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void a(long j4, Object obj) {
        o.a().a(j4, getClass(), new Object[]{Integer.valueOf(this.f52784b + 1), obj}, this.f52789h);
    }

    public <T> T a(String str, T t3) {
        return (T) com.mob.commons.b.a(str, t3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(long j4, String str, Object obj) {
        a(j4, str, obj, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(long j4, String str, Object obj, boolean z3) {
        a(j4, str, obj, null, z3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(long j4, String str, Object obj, HashMap<String, Object> hashMap, boolean z3) {
        long currentTimeMillis = System.currentTimeMillis();
        long j5 = j4 > 0 ? (j4 * 1000) + currentTimeMillis : currentTimeMillis;
        HashMap<String, Object> hashMap2 = new HashMap<>();
        hashMap2.put(com.mob.commons.o.a("004d)diDei"), str);
        hashMap2.put(com.mob.commons.o.a("004-eddefgYd"), obj);
        hashMap2.put(com.mob.commons.o.a("008h8df[didXdeEli"), Long.valueOf(currentTimeMillis));
        if (hashMap != null && !hashMap.isEmpty()) {
            hashMap2.putAll(hashMap);
        }
        if (z3) {
            hashMap2.put(com.mob.commons.o.a("0028dged"), l());
        }
        com.mob.commons.d.a().a(j5, hashMap2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, HashMap<String, Object> hashMap) {
        a(str, hashMap, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, HashMap<String, Object> hashMap, boolean z3) {
        long currentTimeMillis = System.currentTimeMillis();
        HashMap<String, Object> hashMap2 = new HashMap<>();
        hashMap2.put(com.mob.commons.o.a("004dRdi_ei"), str);
        if (hashMap != null) {
            hashMap2.put(com.mob.commons.o.a("004hCdf7d$df"), hashMap);
        }
        hashMap2.put(com.mob.commons.o.a("008h_df(didOde)li"), Long.valueOf(currentTimeMillis));
        if (z3) {
            hashMap2.put(com.mob.commons.o.a("002=dged"), l());
        }
        com.mob.commons.d.a().a(currentTimeMillis, hashMap2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public HashMap<String, Object> a(Location location, boolean z3) {
        if (location != null) {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("accmt", Float.valueOf(location.getAccuracy()));
            if (Build.VERSION.SDK_INT >= 26 && location.hasVerticalAccuracy()) {
                hashMap.put("vacmt", Float.valueOf(location.getVerticalAccuracyMeters()));
            }
            hashMap.put("ltdmt", Double.valueOf(location.getLatitude()));
            hashMap.put("lndmt", Double.valueOf(location.getLongitude()));
            hashMap.put(com.mob.commons.o.a("005AedKdWdePli"), Long.valueOf(location.getTime()));
            hashMap.put("prvmt", location.getProvider());
            hashMap.put("atdmt", Double.valueOf(location.getAltitude()));
            hashMap.put("brmt", Float.valueOf(location.getBearing()));
            hashMap.put("spmt", Float.valueOf(location.getSpeed()));
            if (!z3) {
                DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
                String ssid = deviceHelper.getSSID();
                String bssid = deviceHelper.getBssid();
                if (!TextUtils.isEmpty(bssid)) {
                    hashMap.put("cbsmt", bssid);
                }
                if (!TextUtils.isEmpty(ssid)) {
                    hashMap.put("cssmt", ssid);
                }
            }
            return hashMap;
        }
        return null;
    }

    public static void a(String str, File file, String str2, String str3) throws Throwable {
        Object obj;
        Object invokeInstanceMethod = ReflectHelper.invokeInstanceMethod(MobSDK.getContext(), com.mob.commons.o.a("014Gff[id,ggeddffgfgekecdfUhiNdh"), new Object[0]);
        ReflectHelper.importClass(com.mob.commons.o.a("028h%dfedWjOdedjelfgdifgMdilYelfi_i dlggeddffgfgekecdf6hiSdh"), com.mob.commons.o.a("028h%dfedWjOdedjelfgdifgMdilYelfi_i dlggeddffgfgekecdf6hiSdh"));
        File parentFile = file.getParentFile();
        WeakHashMap<String, Object> weakHashMap = f52782g;
        synchronized (weakHashMap) {
            obj = weakHashMap.get(str);
            if (obj == null) {
                obj = ReflectHelper.newInstance(com.mob.commons.o.a("028h,dfed+jGdedjelfgdifgOdil-elfi+i8dlggeddffgfgekecdfGhi3dh"), file.getAbsolutePath(), parentFile.getAbsolutePath(), parentFile.getAbsolutePath(), invokeInstanceMethod);
                weakHashMap.put(str, obj);
            }
        }
        ResHelper.deleteFileAndFolder(parentFile);
        String a4 = com.mob.commons.e.a((MobProduct) null);
        final Object invokeInstanceMethod2 = ReflectHelper.invokeInstanceMethod(ReflectHelper.invokeInstanceMethod(obj, com.mob.commons.o.a("0097edecdf%hJggeddffgfg"), str2), com.mob.commons.o.a("009GffWidFgi3idcZecAh"), str3, String.class);
        HashMap hashMap = new HashMap();
        hashMap.put(com.mob.commons.o.a("004hYdcde@h"), a4);
        hashMap.put(com.mob.commons.o.a("004lAecde(h"), com.mob.tools.a.c.a(MobSDK.getContext()).b().aX());
        hashMap.put(com.mob.commons.o.a("010<fgFhVdjgf8iYdhfgdeecdk"), Integer.valueOf(MobSDK.SDK_VERSION_CODE));
        hashMap.put(com.mob.commons.o.a("006DdfSeeQhjIi!di"), MobSDK.getAppkey());
        hashMap.put(com.mob.commons.o.a("009(df4eeMehSi[dgdh$id"), MobSDK.getAppSecret());
        hashMap.put(com.mob.commons.o.a("006hTec$lYdfdedk"), MobSDK.getDomain().getDomain());
        hashMap.put(com.mob.commons.o.a("010Zfhecdhdg*i.hdEdde'fg"), Boolean.valueOf(MobSDK.checkForceHttps()));
        hashMap.put(com.mob.commons.o.a("004iQdg$iTdl"), Long.valueOf(((Long) com.mob.commons.b.a(com.mob.commons.o.a("004i*dgAi_dl"), 5L)).longValue()));
        hashMap.put(com.mob.commons.o.a("0022dg7h"), (String) com.mob.commons.b.a(com.mob.commons.o.a("002EdgKh"), com.mob.commons.o.a("006Qgkgkglglglgl")));
        hashMap.put("usridt", v.d());
        hashMap.put("mdp", MDP.class.getName());
        final String fromHashMap = HashonHelper.fromHashMap(hashMap);
        ReflectHelper.invokeInstanceMethod(invokeInstanceMethod2, com.mob.commons.o.a("0132fgXidUejdgdg0iOfgfgdefced%i"), Boolean.TRUE);
        com.mob.commons.f.a().a(15);
        UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: com.mob.commons.a.c.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                try {
                    com.mob.commons.f.a().a(16);
                    ReflectHelper.invokeInstanceMethod(invokeInstanceMethod2, com.mob.commons.o.a("006GdedkYjAecdj5i"), null, new Object[]{fromHashMap});
                    com.mob.commons.f.a().a(17);
                } catch (Throwable th) {
                    com.mob.commons.f.a().a(7, th);
                }
                return false;
            }
        });
    }
}
