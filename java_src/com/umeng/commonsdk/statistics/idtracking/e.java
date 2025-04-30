package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.au;
import com.umeng.analytics.pro.ba;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import io.netty.util.internal.StringUtil;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: IdTracker.java */
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static final long f61353a = 86400000;

    /* renamed from: b  reason: collision with root package name */
    public static e f61354b = null;

    /* renamed from: c  reason: collision with root package name */
    private static final String f61355c = "umeng_it.cache";

    /* renamed from: j  reason: collision with root package name */
    private static Object f61356j = new Object();

    /* renamed from: d  reason: collision with root package name */
    private File f61357d;

    /* renamed from: f  reason: collision with root package name */
    private long f61359f;

    /* renamed from: i  reason: collision with root package name */
    private a f61362i;

    /* renamed from: e  reason: collision with root package name */
    private com.umeng.commonsdk.statistics.proto.c f61358e = null;

    /* renamed from: h  reason: collision with root package name */
    private Set<com.umeng.commonsdk.statistics.idtracking.a> f61361h = new HashSet();

    /* renamed from: g  reason: collision with root package name */
    private long f61360g = 86400000;

    /* compiled from: IdTracker.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Context f61363a;

        /* renamed from: b  reason: collision with root package name */
        private Set<String> f61364b = new HashSet();

        public a(Context context) {
            this.f61363a = context;
        }

        public synchronized boolean a(String str) {
            return !this.f61364b.contains(str);
        }

        public synchronized void b(String str) {
            this.f61364b.add(str);
        }

        public void c(String str) {
            this.f61364b.remove(str);
        }

        public synchronized void a() {
            if (!this.f61364b.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                for (String str : this.f61364b) {
                    sb.append(str);
                    sb.append(StringUtil.COMMA);
                }
                sb.deleteCharAt(sb.length() - 1);
                PreferenceWrapper.getDefault(this.f61363a).edit().putString("invld_id", sb.toString()).commit();
            }
        }

        public synchronized void b() {
            String[] split;
            String string = PreferenceWrapper.getDefault(this.f61363a).getString("invld_id", null);
            if (!TextUtils.isEmpty(string) && (split = string.split(",")) != null) {
                for (String str : split) {
                    if (!TextUtils.isEmpty(str)) {
                        this.f61364b.add(str);
                    }
                }
            }
        }
    }

    e(Context context) {
        this.f61362i = null;
        this.f61357d = new File(context.getFilesDir(), f61355c);
        a aVar = new a(context);
        this.f61362i = aVar;
        aVar.b();
    }

    public static synchronized void a() {
        synchronized (e.class) {
            e eVar = f61354b;
            if (eVar != null) {
                eVar.e();
                f61354b = null;
            }
        }
    }

    private synchronized void h() {
        com.umeng.commonsdk.statistics.proto.c cVar = new com.umeng.commonsdk.statistics.proto.c();
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f61361h) {
            if (aVar.c()) {
                if (aVar.d() != null) {
                    hashMap.put(aVar.b(), aVar.d());
                }
                if (aVar.e() != null && !aVar.e().isEmpty()) {
                    arrayList.addAll(aVar.e());
                }
            }
        }
        cVar.a(arrayList);
        cVar.a(hashMap);
        synchronized (this) {
            this.f61358e = cVar;
        }
    }

    private com.umeng.commonsdk.statistics.proto.c i() {
        Throwable th;
        FileInputStream fileInputStream;
        synchronized (f61356j) {
            if (!this.f61357d.exists()) {
                return null;
            }
            try {
                fileInputStream = new FileInputStream(this.f61357d);
                try {
                    try {
                        byte[] readStreamToByteArray = HelperUtils.readStreamToByteArray(fileInputStream);
                        com.umeng.commonsdk.statistics.proto.c cVar = new com.umeng.commonsdk.statistics.proto.c();
                        new au().a(cVar, readStreamToByteArray);
                        HelperUtils.safeClose(fileInputStream);
                        return cVar;
                    } catch (Exception e4) {
                        e = e4;
                        e.printStackTrace();
                        HelperUtils.safeClose(fileInputStream);
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    HelperUtils.safeClose(fileInputStream);
                    throw th;
                }
            } catch (Exception e5) {
                e = e5;
                fileInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
                HelperUtils.safeClose(fileInputStream);
                throw th;
            }
        }
    }

    public synchronized void b() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f61359f >= this.f61360g) {
            boolean z3 = false;
            for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f61361h) {
                if (aVar.c() && aVar.a()) {
                    z3 = true;
                    if (!aVar.c()) {
                        this.f61362i.b(aVar.b());
                    }
                }
            }
            if (z3) {
                h();
                this.f61362i.a();
                g();
            }
            this.f61359f = currentTimeMillis;
        }
    }

    public synchronized com.umeng.commonsdk.statistics.proto.c c() {
        return this.f61358e;
    }

    public String d() {
        return null;
    }

    public synchronized void e() {
        if (f61354b == null) {
            return;
        }
        boolean z3 = false;
        for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f61361h) {
            if (aVar.c() && aVar.e() != null && !aVar.e().isEmpty()) {
                aVar.a((List<com.umeng.commonsdk.statistics.proto.a>) null);
                z3 = true;
            }
        }
        if (z3) {
            this.f61358e.b(false);
            g();
        }
    }

    public synchronized void f() {
        com.umeng.commonsdk.statistics.proto.c i2 = i();
        if (i2 == null) {
            return;
        }
        a(i2);
        ArrayList<com.umeng.commonsdk.statistics.idtracking.a> arrayList = new ArrayList(this.f61361h.size());
        synchronized (this) {
            this.f61358e = i2;
            for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f61361h) {
                aVar.a(this.f61358e);
                if (!aVar.c()) {
                    arrayList.add(aVar);
                }
            }
            for (com.umeng.commonsdk.statistics.idtracking.a aVar2 : arrayList) {
                this.f61361h.remove(aVar2);
            }
            h();
        }
    }

    public synchronized void g() {
        com.umeng.commonsdk.statistics.proto.c cVar = this.f61358e;
        if (cVar != null) {
            b(cVar);
        }
    }

    public static synchronized e a(Context context) {
        e eVar;
        synchronized (e.class) {
            if (f61354b == null) {
                e eVar2 = new e(context);
                f61354b = eVar2;
                eVar2.a(new f(context));
                f61354b.a(new b(context));
                f61354b.a(new l(context));
                f61354b.a(new d(context));
                f61354b.a(new c(context));
                f61354b.a(new g(context));
                f61354b.a(new k());
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.G)) {
                    f61354b.a(new i(context));
                }
                j jVar = new j(context);
                if (jVar.g()) {
                    f61354b.a(jVar);
                    f61354b.a(new h(context));
                    jVar.i();
                }
                f61354b.f();
            }
            eVar = f61354b;
        }
        return eVar;
    }

    private void b(com.umeng.commonsdk.statistics.proto.c cVar) {
        byte[] a4;
        synchronized (f61356j) {
            if (cVar != null) {
                try {
                    synchronized (this) {
                        a(cVar);
                        a4 = new ba().a(cVar);
                    }
                    if (a4 != null) {
                        HelperUtils.writeFile(this.f61357d, a4);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    private boolean a(com.umeng.commonsdk.statistics.idtracking.a aVar) {
        if (this.f61362i.a(aVar.b())) {
            return this.f61361h.add(aVar);
        }
        if (AnalyticsConstants.UM_DEBUG) {
            MLog.w("invalid domain: " + aVar.b());
            return false;
        }
        return false;
    }

    public void a(long j4) {
        this.f61360g = j4;
    }

    private void a(com.umeng.commonsdk.statistics.proto.c cVar) {
        Map<String, com.umeng.commonsdk.statistics.proto.b> map;
        if (cVar == null || (map = cVar.f61455a) == null) {
            return;
        }
        if (map.containsKey("mac") && !FieldManager.allow(com.umeng.commonsdk.utils.b.f61521h)) {
            cVar.f61455a.remove("mac");
        }
        if (cVar.f61455a.containsKey("imei") && !FieldManager.allow(com.umeng.commonsdk.utils.b.f61520g)) {
            cVar.f61455a.remove("imei");
        }
        if (cVar.f61455a.containsKey("android_id") && !FieldManager.allow(com.umeng.commonsdk.utils.b.f61522i)) {
            cVar.f61455a.remove("android_id");
        }
        if (cVar.f61455a.containsKey("serial") && !FieldManager.allow(com.umeng.commonsdk.utils.b.f61523j)) {
            cVar.f61455a.remove("serial");
        }
        if (cVar.f61455a.containsKey("idfa") && !FieldManager.allow(com.umeng.commonsdk.utils.b.f61536w)) {
            cVar.f61455a.remove("idfa");
        }
        if (!cVar.f61455a.containsKey("oaid") || FieldManager.allow(com.umeng.commonsdk.utils.b.G)) {
            return;
        }
        cVar.f61455a.remove("oaid");
    }
}
