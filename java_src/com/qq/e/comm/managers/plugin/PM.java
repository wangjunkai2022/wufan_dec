package com.qq.e.comm.managers.plugin;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.qq.e.comm.constants.Sig;
import com.qq.e.comm.managers.status.SDKStatus;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class PM {

    /* renamed from: q  reason: collision with root package name */
    private static final Map<Class<?>, String> f56439q = new b();

    /* renamed from: b  reason: collision with root package name */
    private final Context f56441b;

    /* renamed from: c  reason: collision with root package name */
    private String f56442c;

    /* renamed from: d  reason: collision with root package name */
    private File f56443d;

    /* renamed from: e  reason: collision with root package name */
    private volatile int f56444e;

    /* renamed from: f  reason: collision with root package name */
    private DexClassLoader f56445f;

    /* renamed from: g  reason: collision with root package name */
    private RandomAccessFile f56446g;

    /* renamed from: h  reason: collision with root package name */
    private FileLock f56447h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f56448i;

    /* renamed from: j  reason: collision with root package name */
    private final f f56449j;

    /* renamed from: k  reason: collision with root package name */
    private volatile POFactory f56450k;

    /* renamed from: l  reason: collision with root package name */
    private int f56451l;

    /* renamed from: m  reason: collision with root package name */
    private Future<Boolean> f56452m;

    /* renamed from: o  reason: collision with root package name */
    private boolean f56454o;

    /* renamed from: p  reason: collision with root package name */
    private String f56455p;

    /* renamed from: a  reason: collision with root package name */
    final ExecutorService f56440a = Executors.newSingleThreadExecutor();

    /* renamed from: n  reason: collision with root package name */
    private boolean f56453n = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements Callable<Boolean> {
        a() {
        }

        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            long currentTimeMillis = System.currentTimeMillis();
            if (!PM.this.f56448i) {
                PM pm = PM.this;
                pm.f56448i = pm.tryLockUpdate();
            }
            if (PM.f(PM.this)) {
                PM.g(PM.this);
            }
            PM.this.f56451l = (int) (System.currentTimeMillis() - currentTimeMillis);
            return Boolean.TRUE;
        }
    }

    /* loaded from: classes4.dex */
    static class b extends HashMap<Class<?>, String> {
        b() {
            put(POFactory.class, "com.qq.e.comm.plugin.POFactoryImpl");
        }
    }

    public PM(Context context, f fVar) {
        this.f56441b = context.getApplicationContext();
        this.f56449j = fVar;
        com.qq.e.comm.managers.plugin.b.a(context);
        i();
    }

    private JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            int pluginVersion = getPluginVersion();
            if (pluginVersion > 10000) {
                jSONObject.put("vas", this.f56455p);
            }
            jSONObject.put("pv", pluginVersion);
            jSONObject.put("sig", this.f56442c);
            jSONObject.put("appId", com.qq.e.comm.managers.b.b().a());
            jSONObject.put("pn", com.qq.e.comm.managers.plugin.b.a(this.f56441b));
            jSONObject.put("ict", this.f56451l);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    private boolean e() {
        if (this.f56448i) {
            try {
                Context context = this.f56441b;
                com.qq.e.comm.managers.plugin.b.b(context, h.g(context), h.h(this.f56441b));
                this.f56442c = Sig.ASSET_PLUGIN_SIG;
                this.f56443d = h.g(this.f56441b);
                this.f56444e = SDKStatus.getBuildInPluginVersion();
                return true;
            } catch (Throwable th) {
                GDTLogger.e("插件初始化失败 ");
                com.qq.e.comm.managers.plugin.a.a(th, th.getMessage());
                return false;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0028, code lost:
        if (r5.e() != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean f(com.qq.e.comm.managers.plugin.PM r5) {
        /*
            java.lang.String r0 = "TimeStap_AFTER_PLUGIN_INIT:"
            java.util.Objects.requireNonNull(r5)
            r1 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L32
            r2.<init>()     // Catch: java.lang.Throwable -> L32
            java.lang.String r3 = "TimeStap_BEFORE_PLUGIN_INIT:"
            r2.append(r3)     // Catch: java.lang.Throwable -> L32
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L32
            r2.append(r3)     // Catch: java.lang.Throwable -> L32
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L32
            com.qq.e.comm.util.GDTLogger.d(r2)     // Catch: java.lang.Throwable -> L32
            boolean r2 = r5.h()     // Catch: java.lang.Throwable -> L32
            if (r2 != 0) goto L2a
            boolean r5 = r5.e()     // Catch: java.lang.Throwable -> L32
            if (r5 == 0) goto L2c
        L2a:
            r5 = 1
            r1 = 1
        L2c:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            goto L44
        L32:
            r5 = move-exception
            java.lang.String r2 = "插件加载出现异常"
            com.qq.e.comm.util.GDTLogger.e(r2, r5)     // Catch: java.lang.Throwable -> L56
            java.lang.String r2 = r5.getMessage()     // Catch: java.lang.Throwable -> L56
            com.qq.e.comm.managers.plugin.a.a(r5, r2)     // Catch: java.lang.Throwable -> L56
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
        L44:
            r5.append(r0)
            long r2 = java.lang.System.currentTimeMillis()
            r5.append(r2)
            java.lang.String r5 = r5.toString()
            com.qq.e.comm.util.GDTLogger.d(r5)
            return r1
        L56:
            r5 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            long r2 = java.lang.System.currentTimeMillis()
            r1.append(r2)
            java.lang.String r0 = r1.toString()
            com.qq.e.comm.util.GDTLogger.d(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qq.e.comm.managers.plugin.PM.f(com.qq.e.comm.managers.plugin.PM):boolean");
    }

    static void g(PM pm) {
        Objects.requireNonNull(pm);
        StringBuilder sb = new StringBuilder();
        sb.append("PluginFile:\t");
        File file = pm.f56443d;
        sb.append(file == null ? "null" : file.getAbsolutePath());
        GDTLogger.d(sb.toString());
        if (pm.f56442c == null || pm.f56443d == null) {
            pm.f56445f = null;
            return;
        }
        try {
            pm.f56445f = new DexClassLoader(pm.f56443d.getAbsolutePath(), h.a(pm.f56441b).getAbsolutePath(), null, pm.getClass().getClassLoader());
            f fVar = pm.f56449j;
            if (fVar != null) {
                fVar.a();
            }
        } catch (Throwable th) {
            GDTLogger.e("插件ClassLoader构造发生异常", th);
            f fVar2 = pm.f56449j;
            if (fVar2 != null) {
                fVar2.b();
            }
            com.qq.e.comm.managers.plugin.a.a(th, th.getMessage());
        }
    }

    private boolean h() {
        if (this.f56454o) {
            return false;
        }
        if (this.f56448i) {
            g gVar = new g(h.e(this.f56441b), h.f(this.f56441b));
            if (gVar.b()) {
                boolean c4 = gVar.c(h.g(this.f56441b), h.h(this.f56441b));
                GDTLogger.d("NextExist,Updated=" + c4);
            }
        }
        g gVar2 = new g(h.g(this.f56441b), h.h(this.f56441b));
        if (gVar2.b()) {
            if (gVar2.f() >= SDKStatus.getBuildInPluginVersion()) {
                this.f56442c = gVar2.e();
                this.f56444e = gVar2.f();
                this.f56443d = h.g(this.f56441b);
                this.f56455p = gVar2.d();
                this.f56453n = true;
                return true;
            }
            GDTLogger.d("last updated plugin version =" + this.f56444e + ";asset plugin version=" + SDKStatus.getBuildInPluginVersion());
            return false;
        }
        return false;
    }

    private void i() {
        this.f56453n = false;
        SharedPreferences sharedPreferences = this.f56441b.getSharedPreferences("start_crash", 0);
        if (sharedPreferences.getInt("crash_count", 0) >= 2) {
            this.f56454o = true;
            sharedPreferences.edit().remove("crash_count").commit();
            GDTLogger.e("加载本地插件");
        }
        this.f56452m = this.f56440a.submit(new a());
    }

    public <T> T getFactory(Class<T> cls) throws e {
        Future<Boolean> future = this.f56452m;
        if (future != null) {
            try {
                future.get();
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        GDTLogger.d("GetFactoryInstaceforInterface:" + cls);
        ClassLoader classLoader = Sig.ASSET_PLUGIN_SIG == null ? PM.class.getClassLoader() : this.f56445f;
        StringBuilder sb = new StringBuilder();
        sb.append("PluginClassLoader is parent");
        sb.append(PM.class.getClassLoader() == classLoader);
        GDTLogger.d(sb.toString());
        if (classLoader == null) {
            throw new e("Fail to init GDTADPLugin,PluginClassLoader == null;while loading factory impl for:" + cls);
        }
        try {
            String str = f56439q.get(cls);
            if (TextUtils.isEmpty(str)) {
                throw new e("factory  implemention name is not specified for interface:" + cls.getName());
            }
            Class<?> loadClass = classLoader.loadClass(str);
            T cast = cls.cast(loadClass.getDeclaredMethod("getInstance", Context.class, JSONObject.class).invoke(loadClass, this.f56441b, b()));
            GDTLogger.d("ServiceDelegateFactory =" + cast);
            return cast;
        } catch (Throwable th) {
            throw new e("Fail to getfactory implement instance for interface:" + cls.getName(), th);
        }
    }

    public POFactory getPOFactory() throws e {
        if (this.f56450k == null) {
            synchronized (this) {
                if (this.f56450k == null) {
                    try {
                        this.f56450k = (POFactory) getFactory(POFactory.class);
                    } catch (e e4) {
                        if (!this.f56453n) {
                            throw e4;
                        }
                        GDTLogger.e("插件加载错误，回退到内置版本");
                        this.f56454o = true;
                        i();
                        this.f56450k = (POFactory) getFactory(POFactory.class);
                    }
                }
            }
        }
        return this.f56450k;
    }

    public int getPluginVersion() {
        Future<Boolean> future = this.f56452m;
        if (future != null) {
            try {
                future.get();
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        return this.f56444e;
    }

    public boolean tryLockUpdate() {
        try {
            File d4 = h.d(this.f56441b);
            if (!d4.exists()) {
                d4.createNewFile();
                h.c("lock", d4);
            }
            if (d4.exists()) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(d4, net.lingala.zip4j.util.e.f73015e0);
                this.f56446g = randomAccessFile;
                FileLock tryLock = randomAccessFile.getChannel().tryLock();
                this.f56447h = tryLock;
                if (tryLock != null) {
                    this.f56446g.writeByte(37);
                    return true;
                }
                return false;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }
}
