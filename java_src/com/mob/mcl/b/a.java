package com.mob.mcl.b;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.join.mgps.adapter.p3;
import com.mob.MobSDK;
import com.mob.apc.b;
import com.mob.mcl.BusinessMessageListener;
import com.mob.mcl.MobMCL;
import com.mob.mcl.c.h;
import com.mob.mcl.d.d;
import com.mob.mgs.OnIdChangeListener;
import com.mob.tools.network.HttpResponseCallback;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.network.StringPart;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.UIHandler;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.text.Typography;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final ExecutorService f53177a = Executors.newSingleThreadExecutor();

    /* renamed from: b  reason: collision with root package name */
    private static AtomicBoolean f53178b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    private static NetworkHelper f53179c = new NetworkHelper();

    /* renamed from: d  reason: collision with root package name */
    private static CopyOnWriteArraySet<String> f53180d = new CopyOnWriteArraySet<>();

    /* renamed from: com.mob.mcl.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static class C0241a implements b.InterfaceC0237b {
        private C0241a() {
        }

        @Override // com.mob.apc.b.InterfaceC0237b
        public com.mob.apc.a a(String str, com.mob.apc.a aVar, long j4) {
            com.mob.apc.a a4 = com.mob.mcl.a.a.a().a(str, aVar);
            if (a4 != null) {
                try {
                    Object obj = a4.f52722d;
                    if (obj != null && (obj instanceof com.mob.mcl.a.b)) {
                        com.mob.mcl.a.b bVar = (com.mob.mcl.a.b) obj;
                        NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                        networkTimeOut.readTimout = bVar.f53175f;
                        networkTimeOut.connectionTimeout = bVar.f53176g;
                        if ("POST".equals(bVar.f53170a)) {
                            a4.f52722d = null;
                            a.a(true, bVar.f53171b, com.mob.mcl.a.b.a(bVar.f53172c), new StringPart().append(bVar.f53173d), bVar.f53174e, com.mob.mcl.a.a(bVar.f53171b, a4), networkTimeOut);
                        } else if ("GET".equals(bVar.f53170a)) {
                            com.mob.mcl.a.a.a().b(a.a(true, bVar.f53171b, null, com.mob.mcl.a.b.a(bVar.f53172c), networkTimeOut), a4);
                        }
                    } else if (a4.f52719a == 9004) {
                        String string = aVar.f52723e.getString("data");
                        long j5 = aVar.f52723e.getLong("uniqueId");
                        if (!TextUtils.isEmpty(string)) {
                            HashMap fromJson = HashonHelper.fromJson(h.b().a(h.b().j(), string));
                            String str2 = (String) fromJson.get("workId");
                            int a5 = h.a(fromJson, p3.f43234d, 0);
                            boolean z3 = h.a(fromJson, "needRepeat", 0) == 1;
                            int a6 = h.a(fromJson, "type", 0);
                            String str3 = (String) fromJson.get("data");
                            if (a6 != 1 && a6 != 2) {
                                boolean a7 = h.b().a(j5, str2, a5, a6, str3);
                                Bundle bundle = new Bundle();
                                bundle.putBoolean("needRepeat", z3);
                                bundle.putInt("repeat", a7 ? 1 : 0);
                                a4.f52723e = bundle;
                            } else {
                                Bundle bundle2 = new Bundle();
                                bundle2.putString("data", str3);
                                bundle2.putString("workId", str2);
                                bundle2.putLong("uniqueId", aVar.f52723e.getLong("uniqueId"));
                                bundle2.putInt(p3.f43234d, a5);
                                bundle2.putInt(com.alipay.sdk.authjs.a.f9680n, a6);
                                int a8 = h.b().a(bundle2);
                                Bundle bundle3 = new Bundle();
                                bundle3.putBoolean("needRepeat", z3);
                                bundle3.putInt("repeat", a8);
                                a4.f52723e = bundle3;
                            }
                        }
                    }
                } catch (Throwable th) {
                    com.mob.mcl.d.b.a().a(th);
                }
            }
            return a4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(int i2) {
        if (i2 < 6) {
            boolean isInMainProcess = DeviceHelper.getInstance(MobSDK.getContext()).isInMainProcess();
            com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
            a4.b("tp rgs, main p: " + isInMainProcess);
            if ((!isInMainProcess && com.mob.mcl.a.a.a().b()) || e(5000) || h.b().a()) {
                return;
            }
            if (i2 == 0) {
                a(i2 + 1, 10);
            } else if (i2 == 1) {
                a(i2 + 1, 30);
            } else if (i2 == 2) {
                a(i2 + 1, 60);
            } else if (i2 == 3) {
                a(i2 + 1, 180);
            } else if (i2 == 4) {
                a(i2 + 1, 300);
            }
        }
    }

    private static boolean e(int i2) {
        try {
        } finally {
            try {
                return false;
            } finally {
            }
        }
        if (!f53178b.getAndSet(true)) {
            boolean isInMainProcess = DeviceHelper.getInstance(MobSDK.getContext()).isInMainProcess();
            com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
            a4.b("init tp, main p: " + isInMainProcess);
            if (isInMainProcess) {
                h.b().f();
                if (!h.b().f53220f) {
                    f53178b.set(false);
                } else if (h.b().d()) {
                    if (h.b().a(i2)) {
                        com.mob.mcl.c.b.a();
                        if (!h.b().f53222h) {
                            e();
                        }
                        f53178b.set(false);
                        return true;
                    }
                    boolean z3 = h.b().f53226l;
                    com.mob.mcl.d.b.a().a("tp reg failed");
                } else {
                    com.mob.mcl.d.b.a().a("tp reg avail false");
                }
            }
            e();
            return false;
        }
        return false;
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f53180d.add(str);
    }

    public static void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f53180d.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Runnable c(final int i2) {
        return new Runnable() { // from class: com.mob.mcl.b.a.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (h.b().c()) {
                        return;
                    }
                    a.d(i2);
                } catch (Throwable th) {
                    com.mob.mcl.d.b.a().a(th);
                }
            }
        };
    }

    public static void a(Context context, String str, String str2) {
        Context applicationContext;
        com.mob.mcl.d.b.a().a("mcl ini");
        if (context == null) {
            applicationContext = MobSDK.getContext();
        } else {
            applicationContext = context.getApplicationContext();
        }
        h.b().a(applicationContext, str, str2);
        com.mob.mcl.a.a.a().a(applicationContext, new C0241a());
        d.a(false);
        a(0, 0);
    }

    public static long b() {
        h.b().h();
        return h.b().f53225k;
    }

    private static void d() {
        try {
        } finally {
            try {
            } finally {
            }
        }
        if (!f53178b.getAndSet(true)) {
            boolean isInMainProcess = DeviceHelper.getInstance(MobSDK.getContext()).isInMainProcess();
            com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
            a4.b("rgs tp, main p: " + isInMainProcess);
            if (isInMainProcess) {
                if (!h.b().f53220f) {
                    f53178b.set(false);
                } else if (h.b().d()) {
                    if (h.b().a(3000)) {
                        com.mob.mcl.c.b.a();
                        f53178b.set(false);
                    } else {
                        com.mob.mcl.d.b.a().a("tp reg failed");
                    }
                } else {
                    f53177a.execute(new Runnable() { // from class: com.mob.mcl.b.a.3
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (h.b().c()) {
                                    return;
                                }
                                if (!h.b().d()) {
                                    h.b().f();
                                }
                                h.b().g();
                                if (h.b().f53222h) {
                                    return;
                                }
                                a.e();
                            } catch (Throwable unused) {
                            }
                        }
                    });
                }
            }
        }
    }

    private static void a(final int i2, int i4) {
        UIHandler.sendEmptyMessageDelayed(0, i4 * 1000, new Handler.Callback() { // from class: com.mob.mcl.b.a.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                a.f53177a.execute(a.c(i2));
                return false;
            }
        });
    }

    public static String a(boolean z3, String str, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2, NetworkHelper.NetworkTimeOut networkTimeOut) throws Throwable {
        CopyOnWriteArraySet<String> copyOnWriteArraySet;
        if (!z3 && (copyOnWriteArraySet = f53180d) != null) {
            Iterator<String> it2 = copyOnWriteArraySet.iterator();
            while (it2.hasNext()) {
                if (str.equals(it2.next())) {
                    String httpGetNew = f53179c.httpGetNew(str, hashMap, hashMap2, networkTimeOut);
                    com.mob.mcl.d.b.a().a("mcl htp");
                    return httpGetNew;
                }
            }
        }
        if (hashMap != null) {
            String a4 = a(hashMap);
            if (a4.length() > 0) {
                str = str + "?" + a4;
            }
            hashMap = null;
        }
        if (h.b().e()) {
            if (!h.b().c()) {
                d();
            }
            if (h.b().c()) {
                HashMap<String, Object> a5 = h.b().a(1004, networkTimeOut.readTimout, a("GET", str, hashMap2, null));
                if (a5 != null) {
                    com.mob.mcl.d.b.a().a("mcl tp");
                    return HashonHelper.fromHashMap(a5);
                } else if (!z3) {
                    String httpGetNew2 = f53179c.httpGetNew(str, hashMap, hashMap2, networkTimeOut);
                    com.mob.mcl.d.b.a().a("mcl htp");
                    return httpGetNew2;
                }
            }
        }
        if (z3) {
            return null;
        }
        if (!com.mob.mcl.a.a.a().b()) {
            a(5, 0);
        }
        return a(str, hashMap2, networkTimeOut);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e() {
        if (com.mob.mcl.a.a.a().b()) {
            return;
        }
        com.mob.mcl.a.a.a().c();
    }

    public static void a(boolean z3, String str, HashMap<String, String> hashMap, StringPart stringPart, int i2, HttpResponseCallback httpResponseCallback, NetworkHelper.NetworkTimeOut networkTimeOut) throws Throwable {
        CopyOnWriteArraySet<String> copyOnWriteArraySet;
        if (!z3 && (copyOnWriteArraySet = f53180d) != null) {
            Iterator<String> it2 = copyOnWriteArraySet.iterator();
            while (it2.hasNext()) {
                if (str.equals(it2.next())) {
                    f53179c.rawPost(str, hashMap, stringPart, i2, httpResponseCallback, networkTimeOut);
                    return;
                }
            }
        }
        if (h.b().e()) {
            if (!h.b().c()) {
                d();
            }
            if (h.b().c()) {
                HashMap<String, Object> a4 = h.b().a(1004, networkTimeOut.readTimout, a("POST", str, hashMap, stringPart));
                if (a4 != null) {
                    httpResponseCallback.onResponse(com.mob.mcl.a.a(new b(a4)));
                    return;
                } else if (!z3) {
                    f53179c.rawPost(str, hashMap, stringPart, i2, httpResponseCallback, networkTimeOut);
                    return;
                }
            }
        }
        if (z3) {
            httpResponseCallback.onResponse(null);
            return;
        }
        if (!com.mob.mcl.a.a.a().b()) {
            a(5, 0);
        }
        a(str, hashMap, stringPart, i2, httpResponseCallback, networkTimeOut);
    }

    private static String a(String str, String str2, HashMap<String, String> hashMap, StringPart stringPart) {
        HashMap hashMap2 = new HashMap();
        hashMap2.put("type", str);
        hashMap2.put("url", str2);
        HashMap hashMap3 = new HashMap();
        if (hashMap != null) {
            hashMap3.putAll(hashMap);
        }
        hashMap2.put("headers", hashMap3);
        if (stringPart != null) {
            hashMap2.put("body", stringPart.toString());
        }
        return HashonHelper.fromHashMap(hashMap2);
    }

    private static String a(String str, HashMap<String, String> hashMap, NetworkHelper.NetworkTimeOut networkTimeOut) throws Throwable {
        String a4 = com.mob.mcl.a.a.a().a("GET", str, hashMap, null, 0, networkTimeOut);
        if (!TextUtils.isEmpty(a4)) {
            com.mob.mcl.d.b.a().a("mcl apc");
            return a4;
        }
        String httpGetNew = f53179c.httpGetNew(str, null, hashMap, networkTimeOut);
        com.mob.mcl.d.b.a().a("mcl htp");
        return httpGetNew;
    }

    private static void a(String str, HashMap<String, String> hashMap, StringPart stringPart, int i2, HttpResponseCallback httpResponseCallback, NetworkHelper.NetworkTimeOut networkTimeOut) throws Throwable {
        String a4 = com.mob.mcl.a.a.a().a("POST", str, hashMap, stringPart, i2, networkTimeOut);
        if (!TextUtils.isEmpty(a4)) {
            httpResponseCallback.onResponse(com.mob.mcl.a.a(new b(HashonHelper.fromJson(a4), true)));
        } else {
            f53179c.rawPost(str, hashMap, stringPart, i2, httpResponseCallback, networkTimeOut);
        }
    }

    private static String a(HashMap<String, Object> hashMap) throws Throwable {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
            String urlEncode = Data.urlEncode(entry.getKey(), "utf-8");
            String urlEncode2 = entry.getValue() == null ? "" : Data.urlEncode(String.valueOf(entry.getValue()), "utf-8");
            if (sb.length() > 0) {
                sb.append(Typography.amp);
            }
            sb.append(urlEncode);
            sb.append('=');
            sb.append(urlEncode2);
        }
        return sb.toString();
    }

    public static String a() {
        h.b().h();
        return h.b().f53224j;
    }

    public static void a(OnIdChangeListener onIdChangeListener) {
        h.b().a(onIdChangeListener);
        h.b().h();
    }

    public static boolean a(String str, long j4) {
        h.b().a(str, j4);
        try {
            if (h.b().d()) {
                if (!h.b().c()) {
                    e(3000);
                }
                if (h.b().c()) {
                    return h.b().i();
                }
                return false;
            }
            return false;
        } catch (Throwable th) {
            com.mob.mcl.d.b.a().a(th);
            return false;
        }
    }

    public static void a(MobMCL.ELPMessageListener eLPMessageListener) {
        h.b().a(eLPMessageListener);
    }

    public static void a(int i2, BusinessMessageListener businessMessageListener) {
        h.b().a(i2, businessMessageListener);
    }
}
