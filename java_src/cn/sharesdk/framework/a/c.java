package cn.sharesdk.framework.a;

import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.a.a.e;
import cn.sharesdk.framework.utils.SSDKLog;
import com.facebook.common.util.f;
import com.facebook.imagepipeline.producers.s;
import com.mob.MobCommunicator;
import com.mob.MobSDK;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import com.umeng.analytics.pro.ai;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
/* compiled from: Protocols.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: i  reason: collision with root package name */
    private static MobCommunicator f8781i;

    /* renamed from: a  reason: collision with root package name */
    private e f8782a = e.a();

    /* renamed from: b  reason: collision with root package name */
    private DeviceHelper f8783b = DeviceHelper.getInstance(MobSDK.getContext());

    /* renamed from: c  reason: collision with root package name */
    private NetworkHelper f8784c = new NetworkHelper();

    /* renamed from: d  reason: collision with root package name */
    private Hashon f8785d = new Hashon();

    /* renamed from: e  reason: collision with root package name */
    private String f8786e;

    /* renamed from: f  reason: collision with root package name */
    private String f8787f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f8788g;

    /* renamed from: h  reason: collision with root package name */
    private HashMap<String, String> f8789h;

    public c() {
        try {
            this.f8789h = (HashMap) this.f8782a.k("buffered_server_paths");
        } catch (Throwable unused) {
            this.f8789h = new HashMap<>();
        }
        i();
    }

    private String e(String str) throws Throwable {
        boolean c4 = this.f8782a.c();
        boolean d4 = this.f8782a.d();
        StringBuilder sb = new StringBuilder();
        sb.append(Data.urlEncode(this.f8783b.getPackageName(), "utf-8"));
        sb.append("|");
        sb.append(Data.urlEncode(this.f8783b.getAppVersionName(), "utf-8"));
        sb.append("|");
        sb.append(Data.urlEncode(String.valueOf(ShareSDK.SDK_VERSION_CODE), "utf-8"));
        sb.append("|");
        sb.append(Data.urlEncode(String.valueOf(this.f8783b.getPlatformCode()), "utf-8"));
        sb.append("|");
        sb.append(Data.urlEncode(this.f8783b.getDetailNetworkTypeForStatic(), "utf-8"));
        sb.append("|");
        if (c4) {
            sb.append(Data.urlEncode(String.valueOf(this.f8783b.getOSVersionInt()), "utf-8"));
            sb.append("|");
            sb.append(Data.urlEncode(this.f8783b.getScreenSize(), "utf-8"));
            sb.append("|");
            sb.append(Data.urlEncode(this.f8783b.getManufacturer(), "utf-8"));
            sb.append("|");
            sb.append(Data.urlEncode(this.f8783b.getModel(), "utf-8"));
            sb.append("|");
            sb.append(Data.urlEncode(this.f8783b.getCarrier(), "utf-8"));
            sb.append("|");
        } else {
            sb.append("|||||");
        }
        if (d4) {
            sb.append(str);
        } else {
            sb.append(str.split("\\|")[0]);
            sb.append("|||||");
        }
        String sb2 = sb.toString();
        SSDKLog.b().c("shorLinkMsg ===>>>>", sb2);
        return Base64.encodeToString(Data.AES128Encode(Data.rawMD5(String.format("%s:%s", this.f8783b.getDeviceKey(), MobSDK.getAppkey())), sb2), 2);
    }

    private static synchronized MobCommunicator g() {
        MobCommunicator mobCommunicator;
        synchronized (c.class) {
            if (f8781i == null) {
                f8781i = new MobCommunicator(1024, "bb7addd7e33383b74e82aba9b1d274c73aea6c0c71fcc88730270f630dbe490e1d162004f74e9532f98e17004630fbea9b346de63c23e83a7dfad70dd47cebfd", "288e7c44e01569a905386e6341baabfcde63ec37d0f0835cc662c299a5d0072970808a7fa434f0a51fa581d09d5ec4350ba5d548eafbe1fd956fb3afd678c1fb6134c904668652ec5cceb5d85da337a0f2f13ea457cca74a01b3ba0f4c809ad30d382bba2562ec9b996ae44c3700731c1b914997ef826331759e4084a019a03f");
            }
            mobCommunicator = f8781i;
        }
        return mobCommunicator;
    }

    private static synchronized MobCommunicator h() {
        MobCommunicator mobCommunicator;
        synchronized (c.class) {
            if (f8781i == null) {
                f8781i = new MobCommunicator(1024, "009cbd92ccef123be840deec0c6ed0547194c1e471d11b6f375e56038458fb18833e5bab2e1206b261495d7e2d1d9e5aa859e6d4b671a8ca5d78efede48e291a3f", "1dfd1d615cb891ce9a76f42d036af7fce5f8b8efaa11b2f42590ecc4ea4cff28f5f6b0726aeb76254ab5b02a58c1d5b486c39d9da1a58fa6ba2f22196493b3a4cbc283dcf749bf63679ee24d185de70c8dfe05605886c9b53e9f569082eabdf98c4fb0dcf07eb9bb3e647903489ff0b5d933bd004af5be4a1022fdda41f347f1");
            }
            mobCommunicator = f8781i;
        }
        return mobCommunicator;
    }

    private void i() {
        this.f8786e = (this.f8783b.getPackageName() + net.lingala.zip4j.util.e.F0 + this.f8783b.getAppVersionName()) + " ShareSDK/3.10.1 " + ("Android/" + this.f8783b.getOSVersionInt());
        try {
            this.f8787f = MobSDK.dynamicModifyUrl("api-share.mob.com");
        } catch (Throwable th) {
            this.f8787f = MobSDK.checkRequestUrl("api-share.mob.com");
            SSDKLog.b().a("001 dynamicModifyUrl catch, no problem " + th, new Object[0]);
        }
        this.f8788g = true;
    }

    private String j() {
        return this.f8787f + "/conn";
    }

    private String k() {
        HashMap<String, String> hashMap = this.f8789h;
        if (hashMap != null && hashMap.containsKey("/date")) {
            return this.f8789h.get("/date") + "/date";
        }
        return this.f8787f + "/date";
    }

    private String l() {
        return this.f8787f + "/conf5";
    }

    private String m() {
        try {
            return MobSDK.dynamicModifyUrl("up.mob.com/upload/image");
        } catch (Throwable th) {
            SSDKLog b4 = SSDKLog.b();
            b4.a("002 dynamicModifyUrl catch, no problem " + th, new Object[0]);
            return MobSDK.checkRequestUrl("up.mob.com/upload/image");
        }
    }

    private String n() {
        HashMap<String, String> hashMap = this.f8789h;
        if (hashMap != null && hashMap.containsKey("/log5")) {
            return this.f8789h.get("/log5") + "/log5";
        }
        return this.f8787f + "/log5";
    }

    private String o() {
        try {
            return MobSDK.dynamicModifyUrl("l.mob.com/url/shareSdkEncryptMapping.do");
        } catch (Throwable th) {
            SSDKLog b4 = SSDKLog.b();
            b4.a("003 dynamicModifyUrl catch, no problem " + th, new Object[0]);
            return MobSDK.checkRequestUrl("l.mob.com/url/shareSdkEncryptMapping.do");
        }
    }

    private String p() {
        HashMap<String, String> hashMap = this.f8789h;
        if (hashMap != null && hashMap.containsKey("/snsconf")) {
            return this.f8789h.get("/snsconf") + "/snsconf";
        }
        return this.f8787f + "/snsconf";
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        SSDKLog.b().a("duid === " + str, new Object[0]);
        this.f8786e += " " + str;
    }

    public void b(String str) {
        this.f8787f = str;
    }

    public HashMap<String, Object> c() throws Throwable {
        String appkey = MobSDK.getAppkey();
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("appkey", appkey));
        arrayList.add(new KVPair<>(com.alipay.sdk.packet.d.f9795p, this.f8783b.getDeviceKey()));
        arrayList.add(new KVPair<>("plat", String.valueOf(this.f8783b.getPlatformCode())));
        arrayList.add(new KVPair<>("apppkg", this.f8783b.getPackageName()));
        arrayList.add(new KVPair<>("appver", String.valueOf(this.f8783b.getAppVersion())));
        arrayList.add(new KVPair<>("sdkver", String.valueOf(ShareSDK.SDK_VERSION_CODE)));
        arrayList.add(new KVPair<>("networktype", this.f8783b.getDetailNetworkTypeForStatic()));
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Identity", cn.sharesdk.framework.network.a.a()));
        NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
        networkTimeOut.readTimout = 10000;
        networkTimeOut.connectionTimeout = 10000;
        String httpPost = this.f8784c.httpPost(l(), arrayList, (KVPair<String>) null, arrayList2, networkTimeOut);
        try {
            HashMap fromJson = new Hashon().fromJson(httpPost);
            if (fromJson.containsKey("error")) {
                if (String.valueOf(fromJson.get("error")).contains("'appkey' is illegal")) {
                    if (TextUtils.isEmpty(appkey)) {
                        cn.sharesdk.framework.b.a().b();
                    } else {
                        cn.sharesdk.framework.a.f8724a = true;
                    }
                }
            } else if (!TextUtils.isEmpty(appkey)) {
                cn.sharesdk.framework.a.f8725b = appkey;
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
        SSDKLog.b().c(" get server config response == %s", httpPost);
        return this.f8785d.fromJson(httpPost);
    }

    public HashMap<String, Object> d() throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("appkey", MobSDK.getAppkey()));
        arrayList.add(new KVPair<>(com.alipay.sdk.packet.d.f9795p, this.f8783b.getDeviceKey()));
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Identity", cn.sharesdk.framework.network.a.a()));
        NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
        networkTimeOut.readTimout = 10000;
        networkTimeOut.connectionTimeout = 10000;
        return this.f8785d.fromJson(this.f8784c.httpPost(p(), arrayList, (KVPair<String>) null, arrayList2, networkTimeOut));
    }

    public HashMap<String, Object> f() throws Throwable {
        return this.f8785d.fromJson(this.f8782a.h());
    }

    public long b() throws Throwable {
        String str;
        if (this.f8782a.j()) {
            try {
                str = this.f8784c.httpGet(k(), null, null, null);
            } catch (Throwable th) {
                SSDKLog.b().a(th);
                str = "{}";
            }
            HashMap fromJson = this.f8785d.fromJson(str);
            if (fromJson.containsKey("timestamp")) {
                try {
                    long currentTimeMillis = System.currentTimeMillis() - ResHelper.parseLong(String.valueOf(fromJson.get("timestamp")));
                    this.f8782a.a("service_time", Long.valueOf(currentTimeMillis));
                    return currentTimeMillis;
                } catch (Throwable th2) {
                    SSDKLog.b().a(th2);
                    return this.f8782a.b();
                }
            }
            return this.f8782a.b();
        }
        return 0L;
    }

    public void a(HashMap<String, String> hashMap) {
        this.f8789h = hashMap;
        this.f8782a.a("buffered_server_paths", hashMap);
    }

    public HashMap<String, Object> a() throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("appkey", MobSDK.getAppkey()));
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Identity", cn.sharesdk.framework.network.a.a()));
        NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
        networkTimeOut.readTimout = s.f13217g;
        networkTimeOut.connectionTimeout = s.f13217g;
        String httpPost = this.f8784c.httpPost(j(), arrayList, (KVPair<String>) null, arrayList2, networkTimeOut);
        SSDKLog.b().c(" isConnectToServer response == %s", httpPost);
        return this.f8785d.fromJson(httpPost);
    }

    public HashMap<String, Object> d(String str) throws Throwable {
        byte[] decode = Base64.decode(str, 2);
        String deviceKey = this.f8783b.getDeviceKey();
        return this.f8785d.fromJson(new String(Data.AES128Decode(Data.rawMD5(MobSDK.getAppkey() + ":" + deviceKey), decode), "UTF-8").trim());
    }

    public void b(HashMap<String, Object> hashMap) throws Throwable {
        this.f8782a.g(this.f8785d.fromHashMap(hashMap));
    }

    public boolean a(String str, boolean z3) {
        try {
            if (MobSDK.isMob()) {
                HashMap<String, Object> hashMap = new HashMap<>();
                hashMap.put("m", str);
                hashMap.put(ai.aF, z3 ? "1" : "0");
                String str2 = (String) h().requestSynchronized(hashMap, n(), false);
                SSDKLog.b().c("> Upload All Log  resp: %s", str2);
                if (!TextUtils.isEmpty(str2)) {
                    if (((Integer) this.f8785d.fromJson(str2).get("status")).intValue() != 200) {
                        return false;
                    }
                }
                return true;
            }
            return true;
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return false;
        }
    }

    public ArrayList<cn.sharesdk.framework.a.a.c> e() throws Throwable {
        ArrayList<cn.sharesdk.framework.a.a.c> a4 = cn.sharesdk.framework.a.a.d.a();
        return a4 == null ? new ArrayList<>() : a4;
    }

    public HashMap<String, Object> a(String str, ArrayList<String> arrayList, int i2, String str2) throws Throwable {
        if (this.f8788g) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new KVPair("key", MobSDK.getAppkey()));
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                arrayList2.add(new KVPair("urls", arrayList.get(i4).toString()));
            }
            arrayList2.add(new KVPair("deviceid", this.f8783b.getDeviceKey()));
            arrayList2.add(new KVPair("snsplat", String.valueOf(i2)));
            String e4 = e(str2);
            if (TextUtils.isEmpty(e4)) {
                return null;
            }
            arrayList2.add(new KVPair("m", e4));
            new ArrayList().add(new KVPair("User-Identity", cn.sharesdk.framework.network.a.a()));
            NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
            networkTimeOut.readTimout = 5000;
            networkTimeOut.connectionTimeout = 5000;
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("key", MobSDK.getAppkey());
            ArrayList arrayList3 = new ArrayList();
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                arrayList3.add(URLEncoder.encode(arrayList.get(i5), "UTF-8"));
            }
            hashMap.put("urls", arrayList3);
            hashMap.put("deviceid", this.f8783b.getDeviceKey());
            hashMap.put("snsplat", Integer.valueOf(i2));
            if (TextUtils.isEmpty(e4)) {
                return null;
            }
            hashMap.put("m", e4);
            HashMap<String, Object> hashMap2 = (HashMap) g().requestSynchronized(hashMap, o(), false);
            SSDKLog.b().c("> SERVER_SHORT_LINK_URL  resp: %s", hashMap2);
            if (hashMap2.size() == 0) {
                this.f8788g = false;
                return null;
            } else if (hashMap2.get("data") == null) {
                return null;
            } else {
                return hashMap2;
            }
        }
        return null;
    }

    public HashMap<String, Object> c(String str) throws Throwable {
        KVPair<String> kVPair = new KVPair<>(f.f11767c, str);
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("User-Identity", cn.sharesdk.framework.network.a.a()));
        String httpPost = this.f8784c.httpPost(m(), (ArrayList<KVPair<String>>) null, kVPair, arrayList, (NetworkHelper.NetworkTimeOut) null);
        SSDKLog.b().c("upload file response == %s", httpPost);
        return this.f8785d.fromJson(httpPost);
    }

    public void a(cn.sharesdk.framework.a.b.c cVar) throws Throwable {
        cn.sharesdk.framework.a.a.d.a(cVar.toString(), cVar.f8750e);
    }

    public void a(ArrayList<String> arrayList) throws Throwable {
        cn.sharesdk.framework.a.a.d.a(arrayList);
    }
}
