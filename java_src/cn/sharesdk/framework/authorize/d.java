package cn.sharesdk.framework.authorize;

import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.a.a.e;
import cn.sharesdk.framework.network.SSDKNetworkHelper;
import cn.sharesdk.framework.utils.SSDKLog;
import com.join.mgps.dto.Constant;
import com.mob.MobCommunicator;
import com.mob.MobSDK;
import com.mob.commons.SHARESDK;
import com.mob.commons.authorize.DeviceAuthorizer;
import com.mob.tools.network.KVPair;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.ArrayList;
import java.util.HashMap;
/* compiled from: SdkPlusTags.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static volatile d f8820a;

    /* renamed from: b  reason: collision with root package name */
    private MobCommunicator f8821b;

    /* renamed from: h  reason: collision with root package name */
    private HashMap<String, Object> f8827h;

    /* renamed from: g  reason: collision with root package name */
    private boolean f8826g = false;

    /* renamed from: e  reason: collision with root package name */
    private DeviceHelper f8824e = DeviceHelper.getInstance(MobSDK.getContext());

    /* renamed from: c  reason: collision with root package name */
    private String f8822c = MobSDK.getAppkey();

    /* renamed from: d  reason: collision with root package name */
    private String f8823d = this.f8824e.getDeviceKey();

    /* renamed from: f  reason: collision with root package name */
    private SSDKNetworkHelper f8825f = SSDKNetworkHelper.getInstance();

    public static d c() {
        synchronized (d.class) {
            if (f8820a == null) {
                synchronized (d.class) {
                    if (f8820a == null) {
                        f8820a = new d();
                    }
                }
            }
        }
        return f8820a;
    }

    private synchronized MobCommunicator e() {
        if (this.f8821b == null) {
            this.f8821b = new MobCommunicator(1024, "009cbd92ccef123be840deec0c6ed0547194c1e471d11b6f375e56038458fb18833e5bab2e1206b261495d7e2d1d9e5aa859e6d4b671a8ca5d78efede48e291a3f", "1dfd1d615cb891ce9a76f42d036af7fce5f8b8efaa11b2f42590ecc4ea4cff28f5f6b0726aeb76254ab5b02a58c1d5b486c39d9da1a58fa6ba2f22196493b3a4cbc283dcf749bf63679ee24d185de70c8dfe05605886c9b53e9f569082eabdf98c4fb0dcf07eb9bb3e647903489ff0b5d933bd004af5be4a1022fdda41f347f1");
        }
        return this.f8821b;
    }

    public boolean a() {
        return this.f8826g;
    }

    public HashMap<String, Object> b() {
        return this.f8827h;
    }

    public void d() throws Throwable {
        e a4 = e.a();
        if (this.f8826g && a4.g()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new KVPair("Content-type", HttpHeaders.Values.APPLICATION_JSON));
            arrayList.add(new KVPair(Constant.MD5, a(this.f8822c, this.f8823d)));
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("appkey", this.f8822c);
            hashMap.put("deviceId", this.f8823d);
            String authorize = DeviceAuthorizer.authorize(new SHARESDK());
            hashMap.put("duid", authorize);
            try {
                if (!TextUtils.isEmpty(this.f8822c) && !TextUtils.isEmpty(this.f8823d) && !TextUtils.isEmpty(authorize)) {
                    this.f8827h = (HashMap) e().requestSynchronized(hashMap, "http://p.share.mob.com/tags/getTagList", false);
                } else {
                    SSDKLog.b().a("SdkPlusTags request userTags that appkey or deviceId or duid is null", new Object[0]);
                }
            } catch (Exception e4) {
                SSDKLog b4 = SSDKLog.b();
                b4.a("SdkPlusTags request userTags is error T===> " + e4, new Object[0]);
            }
        }
    }

    public void a(boolean z3) {
        this.f8826g = z3;
    }

    private String a(String str, String str2) throws Throwable {
        byte[] rawMD5 = Data.rawMD5(String.format("%s:%s", this.f8824e.getDeviceKey(), MobSDK.getAppkey()));
        return Base64.encodeToString(Data.AES128Encode(rawMD5, str + str2), 2);
    }
}
