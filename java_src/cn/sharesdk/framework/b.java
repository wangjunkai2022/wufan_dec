package cn.sharesdk.framework;

import android.text.TextUtils;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.MobSDK;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Hashon;
import java.util.ArrayList;
import java.util.HashMap;
/* compiled from: CheckAppKeyRequestUrl.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f8828a = "";

    /* renamed from: b  reason: collision with root package name */
    private static volatile b f8829b;

    /* renamed from: c  reason: collision with root package name */
    private DeviceHelper f8830c = DeviceHelper.getInstance(MobSDK.getContext());

    /* renamed from: d  reason: collision with root package name */
    private NetworkHelper f8831d = new NetworkHelper();

    /* renamed from: e  reason: collision with root package name */
    private String f8832e = MobSDK.checkRequestUrl("api-share.mob.com");

    private b() {
    }

    public static b a() {
        synchronized (b.class) {
            if (f8829b == null) {
                synchronized (b.class) {
                    if (f8829b == null) {
                        f8829b = new b();
                    }
                }
            }
        }
        return f8829b;
    }

    private String c() {
        return this.f8832e + "/conf5";
    }

    public void b() {
        try {
            ArrayList<KVPair<String>> arrayList = new ArrayList<>();
            String appkey = MobSDK.getAppkey();
            if (TextUtils.isEmpty(appkey)) {
                return;
            }
            arrayList.add(new KVPair<>("appkey", appkey));
            arrayList.add(new KVPair<>(com.alipay.sdk.packet.d.f9795p, this.f8830c.getDeviceKey()));
            arrayList.add(new KVPair<>("plat", String.valueOf(this.f8830c.getPlatformCode())));
            arrayList.add(new KVPair<>("apppkg", this.f8830c.getPackageName()));
            arrayList.add(new KVPair<>("appver", String.valueOf(this.f8830c.getAppVersion())));
            arrayList.add(new KVPair<>("sdkver", String.valueOf(ShareSDK.SDK_VERSION_CODE)));
            arrayList.add(new KVPair<>("networktype", this.f8830c.getDetailNetworkTypeForStatic()));
            ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
            arrayList2.add(new KVPair<>("User-Identity", cn.sharesdk.framework.network.a.a()));
            NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
            networkTimeOut.readTimout = 10000;
            networkTimeOut.connectionTimeout = 10000;
            HashMap fromJson = new Hashon().fromJson(this.f8831d.httpPost(c(), arrayList, (KVPair<String>) null, arrayList2, networkTimeOut));
            if (fromJson.containsKey("error")) {
                if (String.valueOf(fromJson.get("error")).contains("'appkey' is illegal")) {
                    a.f8724a = true;
                }
            } else {
                a.f8725b = appkey;
            }
        } catch (Throwable th) {
            SSDKLog b4 = SSDKLog.b();
            b4.a("updateServerConfig " + th, new Object[0]);
        }
    }
}
