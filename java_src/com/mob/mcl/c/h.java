package com.mob.mcl.c;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.facebook.imagepipeline.common.RotationOptions;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.adapter.p3;
import com.mob.MobSDK;
import com.mob.mcl.BusinessCallBack;
import com.mob.mcl.BusinessMessageListener;
import com.mob.mcl.MobMCL;
import com.mob.mcl.a;
import com.mob.mgs.OnIdChangeListener;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetCommunicator;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.ActivityTracker;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.UIHandler;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes4.dex */
public class h implements d {

    /* renamed from: m  reason: collision with root package name */
    private static volatile h f53214m;

    /* renamed from: a  reason: collision with root package name */
    public long f53215a;

    /* renamed from: b  reason: collision with root package name */
    public String f53216b;

    /* renamed from: d  reason: collision with root package name */
    public ArrayList<String> f53218d;

    /* renamed from: f  reason: collision with root package name */
    public boolean f53220f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f53221g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f53222h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f53223i;

    /* renamed from: j  reason: collision with root package name */
    public String f53224j;

    /* renamed from: k  reason: collision with root package name */
    public long f53225k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f53226l;

    /* renamed from: n  reason: collision with root package name */
    private NetworkHelper f53227n;

    /* renamed from: o  reason: collision with root package name */
    private Hashon f53228o;

    /* renamed from: p  reason: collision with root package name */
    private f f53229p;

    /* renamed from: q  reason: collision with root package name */
    private String f53230q;

    /* renamed from: r  reason: collision with root package name */
    private String f53231r;

    /* renamed from: s  reason: collision with root package name */
    private Context f53232s;

    /* renamed from: t  reason: collision with root package name */
    private MobMCL.ELPMessageListener f53233t;

    /* renamed from: u  reason: collision with root package name */
    private HashMap<Integer, HashSet<BusinessMessageListener>> f53234u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f53235v;

    /* renamed from: w  reason: collision with root package name */
    private com.mob.mcl.d.c f53236w;

    /* renamed from: x  reason: collision with root package name */
    private OnIdChangeListener f53237x;

    /* renamed from: c  reason: collision with root package name */
    public AtomicLong f53217c = new AtomicLong(0);

    /* renamed from: e  reason: collision with root package name */
    public int f53219e = RotationOptions.f12538f;

    /* renamed from: y  reason: collision with root package name */
    private int f53238y = 1;

    /* renamed from: z  reason: collision with root package name */
    private AtomicBoolean f53239z = new AtomicBoolean(false);

    private h() {
        com.mob.mcl.d.b.a().b("tpHelper init");
        this.f53229p = new f(this);
        this.f53227n = new NetworkHelper();
        this.f53228o = new Hashon();
        this.f53234u = new HashMap<>();
        this.f53236w = new com.mob.mcl.d.c(MobSDK.getContext());
        this.f53232s = MobSDK.getContext();
    }

    public static h b() {
        if (f53214m == null) {
            synchronized (h.class) {
                if (f53214m == null) {
                    f53214m = new h();
                }
            }
        }
        return f53214m;
    }

    private String k() {
        return this.f53231r + this.f53232s.getPackageName();
    }

    private String l() {
        Object obj;
        HashMap hashMap = new HashMap();
        hashMap.put("appkey", this.f53230q);
        hashMap.put("apppkg", this.f53232s.getPackageName());
        hashMap.put("plat", 1);
        hashMap.put("pushId", k());
        hashMap.put("guardId", this.f53224j);
        try {
            Bundle bundle = DeviceHelper.getInstance(this.f53232s).getPInfo(this.f53232s.getPackageName(), 128).applicationInfo.metaData;
            if (bundle != null && !bundle.isEmpty() && (obj = bundle.get("mob_id_ver")) != null) {
                hashMap.put("version", String.valueOf(obj));
            }
        } catch (Throwable th) {
            com.mob.mcl.d.b.a().a(th);
        }
        return this.f53228o.fromHashMap(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (c()) {
            return;
        }
        n();
    }

    private void n() {
        com.mob.mcl.b.a.f53177a.execute(new Runnable() { // from class: com.mob.mcl.c.h.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (h.this.c()) {
                        return;
                    }
                    if (!h.this.d()) {
                        h.this.f();
                    }
                    h.this.g();
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void o() {
        if (com.mob.mgs.impl.f.a().d() && this.f53239z.compareAndSet(false, true)) {
            b().b(com.mob.mgs.impl.f.a().c(), com.mob.mgs.impl.f.a().e());
        }
    }

    public boolean c() {
        f fVar = this.f53229p;
        return (fVar == null || !fVar.b() || this.f53217c.get() == 0) ? false : true;
    }

    public boolean d() {
        ArrayList<String> arrayList;
        return this.f53220f && this.f53221g && !this.f53235v && (arrayList = this.f53218d) != null && arrayList.size() > 0 && !TextUtils.isEmpty(this.f53216b);
    }

    public boolean e() {
        return d() && this.f53222h;
    }

    public void f() {
        boolean isInMainProcess = DeviceHelper.getInstance(this.f53232s).isInMainProcess();
        com.mob.mcl.d.b.a().b("tp cf, main p: " + isInMainProcess);
        if (isInMainProcess) {
            if (!TextUtils.isEmpty(this.f53231r) && this.f53232s != null) {
                try {
                    String a4 = com.mob.mcl.d.d.a();
                    if (!TextUtils.isEmpty(a4)) {
                        HashMap<String, Object> fromJson = this.f53228o.fromJson(a4);
                        if (fromJson.containsKey("requestTimes")) {
                            long j4 = 0;
                            Object obj = fromJson.get("requestTimes");
                            if (obj != null && (obj instanceof Long)) {
                                j4 = ((Long) obj).longValue();
                            } else if (obj != null && (obj instanceof Integer)) {
                                j4 = ((Integer) obj).intValue();
                            }
                            if (j4 + 86400000 > System.currentTimeMillis() && b().a(fromJson) && com.mob.mcl.d.d.b()) {
                                com.mob.mcl.d.b.a().b(" cf cc : " + a4);
                                return;
                            }
                        }
                    }
                } catch (Throwable th) {
                    com.mob.mcl.d.b.a().b(th.getMessage());
                }
                ArrayList<KVPair<String>> arrayList = new ArrayList<>();
                NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                networkTimeOut.readTimout = 10000;
                networkTimeOut.connectionTimeout = 5000;
                try {
                    ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
                    arrayList2.add(new KVPair<>("appkey", this.f53230q));
                    arrayList2.add(new KVPair<>("pushId", k()));
                    String dynamicModifyUrl = NetCommunicator.dynamicModifyUrl("m.mpl.dutils.com/tcp/config/init");
                    String httpPost = this.f53227n.httpPost(dynamicModifyUrl, arrayList2, (KVPair<String>) null, arrayList, networkTimeOut);
                    com.mob.mcl.d.b.a().b("tp cf url : " + dynamicModifyUrl + " -> rp : " + httpPost);
                    HashMap<String, Object> fromJson2 = this.f53228o.fromJson(httpPost);
                    fromJson2.put("requestTimes", Long.valueOf(System.currentTimeMillis()));
                    if (b().a(fromJson2)) {
                        com.mob.mcl.d.d.a(true);
                        com.mob.mcl.d.d.a(this.f53228o.fromHashMap(fromJson2));
                        return;
                    }
                    return;
                } catch (Throwable th2) {
                    com.mob.mcl.d.b.a().b(th2.getMessage());
                    return;
                }
            }
            com.mob.mcl.d.b.a().b("mcl has not been initialized");
        }
    }

    public boolean g() {
        return a(5000);
    }

    public void h() {
        if (TextUtils.isEmpty(this.f53224j) || this.f53225k <= 0) {
            String c4 = com.mob.mcl.d.d.c();
            long d4 = com.mob.mcl.d.d.d();
            if (TextUtils.isEmpty(c4)) {
                c4 = UUID.randomUUID().toString();
            }
            if (d4 <= 0) {
                d4 = System.currentTimeMillis();
            }
            a(c4, d4);
        }
    }

    public boolean i() {
        return a(1003, l()) != null;
    }

    public String j() {
        return String.format("%16s", Integer.valueOf(Math.abs(Arrays.hashCode(new Object[]{this.f53230q, k()})))).replaceAll(" ", "0").substring(0, 16);
    }

    public boolean a() {
        return (this.f53220f && this.f53221g && !this.f53235v) ? false : true;
    }

    private String c(String str, String str2) throws Throwable {
        return Base64.encodeToString(Data.AES128Encode(str, str2), 2);
    }

    public void a(OnIdChangeListener onIdChangeListener) {
        this.f53237x = onIdChangeListener;
    }

    public void a(String str) {
        this.f53236w.b(str);
    }

    public void a(MobMCL.ELPMessageListener eLPMessageListener) {
        this.f53233t = eLPMessageListener;
    }

    public void a(int i2, BusinessMessageListener businessMessageListener) {
        HashSet<BusinessMessageListener> hashSet;
        try {
            com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
            a4.b("tpHelper addBMListener: bisType = " + i2 + ", listener = " + businessMessageListener);
            Integer valueOf = Integer.valueOf(i2);
            if (businessMessageListener == null) {
                com.mob.mcl.d.b a5 = com.mob.mcl.d.b.a();
                a5.b("tpHelper addBMListener: remove key = " + valueOf);
                this.f53234u.remove(valueOf);
                return;
            }
            if (this.f53234u.containsKey(valueOf)) {
                hashSet = this.f53234u.get(valueOf);
            } else {
                hashSet = new HashSet<>();
                this.f53234u.put(valueOf, hashSet);
            }
            HashSet<BusinessMessageListener> hashSet2 = hashSet;
            hashSet2.add(businessMessageListener);
            if (g.a().b()) {
                com.mob.mcl.d.b.a().b("tpHelper addBMListener: has cached msg");
                List<Map<String, Object>> c4 = g.a().c();
                ArrayList<Map<String, Object>> arrayList = new ArrayList();
                for (Map<String, Object> map : c4) {
                    Object obj = map.get("bisType");
                    int intValue = obj != null ? ((Integer) obj).intValue() : 0;
                    final String str = (String) map.get("workId");
                    final String str2 = (String) map.get("json");
                    com.mob.mcl.d.b a6 = com.mob.mcl.d.b.a();
                    a6.b("tpHelper addBMListener: cachedBisType = " + intValue + ", target bisType = " + valueOf);
                    if (intValue == valueOf.intValue()) {
                        Iterator<BusinessMessageListener> it2 = hashSet2.iterator();
                        while (it2.hasNext()) {
                            final BusinessMessageListener next = it2.next();
                            final int i4 = intValue;
                            UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: com.mob.mcl.c.h.1
                                @Override // android.os.Handler.Callback
                                public boolean handleMessage(Message message) {
                                    if (next != null) {
                                        com.mob.mcl.d.b a7 = com.mob.mcl.d.b.a();
                                        a7.b("tpHelper addBMListener: callback to messageReceived. bisType: " + i4 + ", workId: " + str + ", msg: " + str2);
                                        next.messageReceived(i4, str, str2);
                                        return false;
                                    }
                                    return false;
                                }
                            });
                        }
                        com.mob.mcl.d.b a7 = com.mob.mcl.d.b.a();
                        a7.b("tpHelper addBMListener: mark msg to rm. msg = " + map);
                        arrayList.add(map);
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                for (Map<String, Object> map2 : arrayList) {
                    com.mob.mcl.d.b a8 = com.mob.mcl.d.b.a();
                    a8.b("tpHelper addBMListener: rm msg = " + map2);
                    g.a().b(map2);
                }
                return;
            }
            com.mob.mcl.d.b.a().b("tpHelper addBMListener: no cached msg");
        } catch (Throwable th) {
            com.mob.mcl.d.b.a().b("tpHelper addBMListener: error");
            com.mob.mcl.d.b.a().a(th);
        }
    }

    private void b(long j4, boolean z3) {
        if (this.f53229p != null) {
            try {
                String b4 = b(this.f53217c.get());
                HashMap hashMap = new HashMap();
                hashMap.put("repeat", Boolean.valueOf(z3));
                String fromHashMap = this.f53228o.fromHashMap(hashMap);
                e eVar = new e(1007, c(b4, fromHashMap));
                eVar.f53207c = j4;
                this.f53229p.a(eVar);
                com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
                a4.b("tp sd ty = " + eVar.f53206b + " , u = " + j4 + " bo : " + fromHashMap);
            } catch (Throwable th) {
                com.mob.mcl.d.b.a().a(th);
            }
        }
    }

    public void b(final BusinessCallBack<Boolean> businessCallBack) {
        com.mob.mcl.b.a.f53177a.execute(new Runnable() { // from class: com.mob.mcl.c.h.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    final boolean a4 = h.this.c() ? h.b().a(3000, 3) : false;
                    UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: com.mob.mcl.c.h.4.1
                        @Override // android.os.Handler.Callback
                        public boolean handleMessage(Message message) {
                            try {
                                BusinessCallBack businessCallBack2 = businessCallBack;
                                if (businessCallBack2 != null) {
                                    businessCallBack2.callback(Boolean.valueOf(a4));
                                    return false;
                                }
                                return false;
                            } catch (Throwable unused) {
                                return false;
                            }
                        }
                    });
                    if (a4) {
                        return;
                    }
                    if (!h.b().d()) {
                        h.b().f();
                    }
                    h.this.g();
                } catch (Throwable unused) {
                }
            }
        });
    }

    private String b(long j4) {
        return String.format("%16s", Integer.valueOf(Math.abs(Arrays.hashCode(new long[]{j4})))).replaceAll(" ", "0").substring(0, 16);
    }

    private HashMap<String, Object> b(HashMap<String, Object> hashMap) {
        return (a(hashMap, "code", 0) == 200 && hashMap.containsKey("data")) ? (HashMap) hashMap.get("data") : new HashMap<>();
    }

    private HashMap<String, Object> b(String str) {
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("{")) {
                com.mob.mcl.d.b.a().b(str);
                return b(this.f53228o.fromJson(str));
            }
        } catch (Throwable th) {
            com.mob.mcl.d.b.a().a(th);
        }
        return hashMap;
    }

    public void b(String str, String str2) {
        int i2;
        try {
            DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
            NetworkHelper networkHelper = new NetworkHelper();
            NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
            networkTimeOut.connectionTimeout = 2000;
            networkTimeOut.readTimout = 5000;
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("appkey", MobSDK.getAppkey());
            hashMap.put("pkg", deviceHelper.getPackageName());
            hashMap.put("duidOld", str2);
            hashMap.put("duidNew", str);
            hashMap.put("appVer", deviceHelper.getAppVersionName());
            hashMap.put("plat", Integer.valueOf(deviceHelper.getPlatformCode()));
            String dynamicModifyUrl = NetCommunicator.dynamicModifyUrl("m.mpl.dutils.com/tcp/push/pbsd");
            com.mob.mcl.d.b.a().b("[Request] url = " + dynamicModifyUrl + "\nheaders = " + ((Object) null) + "\nvalues = " + hashMap);
            String httpPostNew = networkHelper.httpPostNew(dynamicModifyUrl, hashMap, null, networkTimeOut);
            com.mob.mcl.d.b.a().b("[Response] url = " + dynamicModifyUrl + "\nresp = " + httpPostNew);
            HashMap fromJson = HashonHelper.fromJson(httpPostNew);
            if (fromJson != null && !fromJson.isEmpty() && !"200".equals(String.valueOf(fromJson.get("code")))) {
                throw new Throwable("Req failed: " + httpPostNew);
            }
            this.f53238y = 1;
        } catch (Throwable th) {
            com.mob.mcl.d.b.a().a(th);
            if (this.f53238y < 3) {
                try {
                    Thread.sleep(i2 * 1000);
                } catch (InterruptedException unused) {
                    com.mob.mcl.d.b.a().a(th);
                }
                this.f53238y++;
                b(str, str2);
                return;
            }
            this.f53238y = 1;
        }
    }

    public void a(Context context, String str, String str2) {
        this.f53232s = context;
        this.f53230q = str;
        if (!TextUtils.isEmpty(str2)) {
            this.f53231r = str2;
        }
        h();
        ActivityTracker.getInstance(context).addTracker(com.mob.mcl.a.a(new a.C0240a() { // from class: com.mob.mcl.c.h.2
            @Override // com.mob.mcl.a.C0240a
            public void a() {
                h.this.m();
            }

            @Override // com.mob.mcl.a.C0240a
            public void b() {
                h.this.m();
            }
        }));
        this.f53236w.a();
    }

    public HashMap<String, Object> a(String str, String str2, int i2) throws Throwable {
        if (this.f53229p != null) {
            com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
            a4.b("tp rg main = " + str + " , bo = " + str2 + " , out = " + i2);
            String[] split = str.split(":");
            this.f53229p.a(new InetSocketAddress(split[0], Integer.parseInt(split[1])), true, true, 5000);
            this.f53217c.set(0L);
            e eVar = new e(1001, c(this.f53216b, str2));
            eVar.f53207c = this.f53215a;
            e eVar2 = this.f53229p.a(eVar).get((long) i2, TimeUnit.MILLISECONDS);
            if (eVar2 != null && eVar2.f53206b == 1000) {
                String a5 = a(this.f53216b, eVar2.f53208d);
                eVar2.f53208d = a5;
                return b(a5);
            }
            com.mob.mcl.d.b a6 = com.mob.mcl.d.b.a();
            a6.b("tp rp : " + eVar2);
            return null;
        }
        return null;
    }

    public HashMap<String, Object> a(int i2, String str) {
        return a(i2, 10000, str);
    }

    public HashMap<String, Object> a(int i2, int i4, String str) {
        e eVar;
        if (this.f53229p != null) {
            try {
                String b4 = b(this.f53217c.get());
                com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
                a4.b("tp sd ty = " + i2 + " , bo = " + str + " , out = " + i4);
                if (TextUtils.isEmpty(str)) {
                    eVar = new e(i2);
                } else {
                    eVar = new e(i2, c(b4, str));
                }
                e eVar2 = this.f53229p.a(eVar).get(i4, TimeUnit.MILLISECONDS);
                if (eVar2 != null && eVar2.f53206b == 1000) {
                    String a5 = a(b4, eVar2.f53208d);
                    eVar2.f53208d = a5;
                    return b(a5);
                }
                com.mob.mcl.d.b a6 = com.mob.mcl.d.b.a();
                a6.b(" tp rp : " + eVar2);
                return null;
            } catch (Throwable th) {
                com.mob.mcl.d.b.a().a(th);
                return null;
            }
        }
        return null;
    }

    private void a(long j4, boolean z3) {
        if (this.f53229p != null) {
            try {
                String b4 = b(this.f53217c.get());
                HashMap hashMap = new HashMap();
                hashMap.put(NoticeTopAnimActivityDialog_.f34402n, Boolean.valueOf(z3));
                String fromHashMap = this.f53228o.fromHashMap(hashMap);
                e eVar = new e(1006, c(b4, fromHashMap));
                com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
                a4.b("tp sd ty = " + eVar.f53206b + " , u = " + j4 + " bo : " + fromHashMap);
                eVar.f53207c = j4;
                this.f53229p.a(eVar);
            } catch (Throwable th) {
                com.mob.mcl.d.b.a().a(th);
            }
        }
    }

    private void a(long j4) {
        if (this.f53229p != null) {
            try {
                e eVar = new e(1005);
                eVar.f53207c = j4;
                this.f53229p.a(eVar);
                com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
                a4.b("tp sd ty = " + eVar.f53206b + " , u = " + j4 + " bo : " + eVar.f53208d);
            } catch (Throwable th) {
                com.mob.mcl.d.b.a().a(th);
            }
        }
    }

    public boolean a(int i2, int i4) {
        if (i4 < 4) {
            if (a(1002, i2, (String) null) == null) {
                if (i4 != 0 && i4 != 1) {
                    a(3000, i4 + 1);
                    return false;
                }
                a(1000, i4 + 1);
                return false;
            }
            return true;
        }
        return false;
    }

    public void a(BusinessCallBack<Boolean> businessCallBack) {
        boolean c4 = c();
        if (businessCallBack != null) {
            businessCallBack.callback(Boolean.valueOf(c4));
        }
        if (c4) {
            return;
        }
        com.mob.mcl.b.a.f53177a.execute(new Runnable() { // from class: com.mob.mcl.c.h.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!h.b().d()) {
                        h.b().f();
                    }
                    h.this.g();
                } catch (Throwable unused) {
                }
            }
        });
    }

    private boolean a(HashMap<String, Object> hashMap) {
        try {
            this.f53226l = false;
            HashMap<String, Object> b4 = b(hashMap);
            if (b4.containsKey("domains") && b4.containsKey("uniqueId") && b4.containsKey("uniqueKey")) {
                this.f53218d = (ArrayList) b4.get("domains");
                this.f53215a = ((Long) b4.get("uniqueId")).longValue();
                this.f53216b = (String) b4.get("uniqueKey");
                this.f53219e = a(b4, "tick", this.f53219e);
                this.f53220f = a(b4, "globalSwitch", 0) == 1;
                this.f53221g = a(b4, "connectSwitch", 0) == 1;
                this.f53222h = a(b4, "forwardSwitch", 0) == 1;
                this.f53223i = a(b4, "bindRequestSwitch", 0) == 1;
                if (b4.containsKey("determineDomain")) {
                    String str = (String) b4.get("determineDomain");
                    if (!TextUtils.isEmpty(str)) {
                        if (this.f53218d == null) {
                            this.f53218d = new ArrayList<>();
                        }
                        this.f53218d.remove(str);
                        this.f53218d.add(0, str);
                    }
                }
                ArrayList<String> arrayList = this.f53218d;
                if (arrayList != null && arrayList.size() > 0) {
                    if (!TextUtils.isEmpty(this.f53216b)) {
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
            com.mob.mcl.d.b.a().a(th);
        }
        return false;
    }

    public synchronized boolean a(int i2) {
        if (d()) {
            return a(this.f53226l, this.f53218d.get(0), 0, l(), i2);
        }
        return false;
    }

    private synchronized boolean a(boolean z3, String str, int i2, String str2, int i4) {
        try {
            if (i2 < this.f53218d.size() && i2 < 3) {
                com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
                a4.b("tp rg domain : " + str + " count : " + i2);
                try {
                    HashMap<String, Object> a5 = a(str, str2, i4);
                    if (a5 != null && a5.containsKey("type")) {
                        int intValue = ((Integer) a5.get("type")).intValue();
                        if (intValue == 1 && a5.containsKey("token")) {
                            this.f53217c.set(((Long) a5.get("token")).longValue());
                            b.a().b();
                            com.mob.mcl.d.b.a().a("tcp register success");
                            o();
                            return true;
                        } else if (intValue == 2 && a5.containsKey("domain")) {
                            String str3 = (String) a5.get("domain");
                            if (!TextUtils.isEmpty(str3)) {
                                return a(true, str3, 2, str2, i4);
                            }
                        } else if (intValue == 3) {
                            this.f53235v = true;
                            this.f53229p.a();
                            o();
                            return false;
                        }
                    }
                } catch (Throwable th) {
                    com.mob.mcl.d.b a6 = com.mob.mcl.d.b.a();
                    a6.b("tcp register exp : " + th.getMessage());
                }
                int i5 = i2 + 1;
                if (i5 < this.f53218d.size() && !z3) {
                    return a(false, this.f53218d.get(i5), i5, str2, i4);
                }
            }
            com.mob.mcl.d.d.a((String) null);
            this.f53218d = null;
            o();
            return false;
        }
    }

    public synchronized void a(String str, long j4) {
        if (this.f53237x != null && !String.valueOf(this.f53224j).equals(str)) {
            this.f53237x.onChanged(this.f53224j, str);
        }
        this.f53224j = str;
        this.f53225k = j4;
        com.mob.mcl.d.d.b(str);
        com.mob.mcl.d.d.a(this.f53225k);
    }

    @Override // com.mob.mcl.c.d
    public void a(a aVar, e eVar) {
        try {
            if (TextUtils.isEmpty(eVar.f53208d)) {
                return;
            }
            if (this.f53217c.get() == 0) {
                com.mob.mcl.d.b.a().b("tcp received push msg, but send token is 0");
                return;
            }
            String a4 = a(b(this.f53217c.get()), eVar.f53208d);
            eVar.f53208d = a4;
            int i2 = eVar.f53206b;
            if (i2 == 9001) {
                com.mob.mcl.d.b a5 = com.mob.mcl.d.b.a();
                a5.b(" tcp msg push msgType: " + eVar.f53206b + " body = " + eVar.f53208d);
                a(eVar.f53207c);
                HashMap<String, Object> b4 = b(eVar.f53208d);
                if (b4.containsKey("data")) {
                    int a6 = a(b4, p3.f43234d, 0);
                    String str = (String) b4.get("workId");
                    String str2 = (String) b4.get("data");
                    boolean z3 = a(b4, "needRepeat", 0) == 1;
                    int a7 = a(b4, "type", 0);
                    if (a7 != 1 && a7 != 2) {
                        boolean a8 = a(eVar.f53207c, str, a6, a7, str2);
                        if (z3) {
                            b(eVar.f53207c, a8);
                            return;
                        }
                        return;
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("data", str2);
                    bundle.putInt(p3.f43234d, a6);
                    bundle.putString("workId", str);
                    bundle.putLong("uniqueId", eVar.f53207c);
                    bundle.putInt(com.alipay.sdk.authjs.a.f9680n, a7);
                    boolean z4 = a(bundle) == 1;
                    if (z3) {
                        b(eVar.f53207c, z4);
                    }
                }
            } else if (i2 == 9002) {
                String str3 = (String) b(a4).get("domain");
                if (TextUtils.isEmpty(str3)) {
                    return;
                }
                this.f53226l = true;
                a(true, str3, 2, l(), 5000);
            } else if (i2 == 9004) {
                com.mob.mcl.d.b a9 = com.mob.mcl.d.b.a();
                a9.b(" tp mg ty: " + eVar.f53206b + " bo = " + eVar.f53208d);
                a(eVar.f53207c);
                HashMap<String, Object> b5 = b(eVar.f53208d);
                if (b5.containsKey("data") && b5.containsKey("targetPackage")) {
                    String str4 = (String) b5.get("targetPackage");
                    String str5 = (String) b5.get("data");
                    int a10 = a(b5, "logicTimeout", 1000);
                    if (TextUtils.isEmpty(str5) || TextUtils.isEmpty(str4)) {
                        return;
                    }
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("data", str5);
                    bundle2.putLong("uniqueId", eVar.f53207c);
                    com.mob.apc.a a11 = com.mob.mcl.a.a.a().a(com.join.mgps.data.c.f47310y, bundle2, str4, a10);
                    if (a11 != null && a11.f52723e != null) {
                        a(eVar.f53207c, true);
                        return;
                    }
                    com.mob.mcl.d.b.a().b("apc fw rp mg is null");
                    a(eVar.f53207c, false);
                }
            }
        } catch (Throwable th) {
            com.mob.mcl.d.b.a().a(th);
        }
    }

    public int a(Bundle bundle) {
        if (this.f53233t != null) {
            if (a(bundle.getString("workId"), bundle.getInt(p3.f43234d))) {
                return 1;
            }
            return this.f53233t.messageReceived(bundle) ? 1 : 0;
        }
        return -1;
    }

    private synchronized boolean a(String str, int i2) {
        if (i2 != 0) {
            if (!TextUtils.isEmpty(str)) {
                if (System.currentTimeMillis() <= this.f53236w.a(str)) {
                    return true;
                }
                this.f53236w.a(str, System.currentTimeMillis() + (i2 * 1000));
            }
        }
        return false;
    }

    public boolean a(long j4, final String str, int i2, int i4, String str2) {
        try {
        } catch (Throwable th) {
            com.mob.mcl.d.b.a().a(th);
        }
        if (a(str, i2)) {
            return true;
        }
        HashMap fromJson = this.f53228o.fromJson(str2);
        fromJson.put("uniqueId", Long.valueOf(j4));
        final String fromHashMap = this.f53228o.fromHashMap(fromJson);
        final Integer valueOf = Integer.valueOf(i4);
        if (this.f53234u.containsKey(valueOf)) {
            com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
            a4.b("[dealBusinessMsg]Biz msg listener detected, callback directly. bisType: " + valueOf);
            Iterator<BusinessMessageListener> it2 = this.f53234u.get(valueOf).iterator();
            while (it2.hasNext()) {
                final BusinessMessageListener next = it2.next();
                UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: com.mob.mcl.c.h.5
                    @Override // android.os.Handler.Callback
                    public boolean handleMessage(Message message) {
                        if (next != null) {
                            com.mob.mcl.d.b a5 = com.mob.mcl.d.b.a();
                            a5.b("[dealBusinessMsg]callback to messageReceived. bisType: " + valueOf + ", workId: " + str + ", msg: " + fromHashMap);
                            next.messageReceived(valueOf.intValue(), str, fromHashMap);
                            return false;
                        }
                        return false;
                    }
                });
            }
        } else {
            com.mob.mcl.d.b a5 = com.mob.mcl.d.b.a();
            a5.b("[dealBusinessMsg]No biz msg listener detected, cache msg. bisType: " + valueOf);
            HashMap hashMap = new HashMap();
            hashMap.put("bisType", valueOf);
            hashMap.put("workId", str);
            hashMap.put("json", fromHashMap);
            g.a().a(hashMap);
        }
        return false;
    }

    @Override // com.mob.mcl.c.d
    public void a(a aVar, Throwable th) {
        com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
        StringBuilder sb = new StringBuilder();
        sb.append("exceptionCaught : ");
        sb.append(th != null ? th.getMessage() : "");
        a4.b(sb.toString());
    }

    @Override // com.mob.mcl.c.d
    public void a(a aVar) {
        com.mob.mcl.d.b.a().b("sessionOpened");
    }

    @Override // com.mob.mcl.c.d
    public void a(a aVar, boolean z3) {
        com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
        a4.b("sc " + z3);
        if (z3) {
            n();
        }
    }

    public String a(String str, String str2) throws Throwable {
        return Data.AES128Decode(str, Base64.decode(str2, 2));
    }

    public static int a(HashMap<String, Object> hashMap, String str, int i2) {
        if (hashMap != null && hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
        }
        return i2;
    }
}
