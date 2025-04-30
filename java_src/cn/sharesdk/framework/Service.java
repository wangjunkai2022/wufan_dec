package cn.sharesdk.framework;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.a.b.f;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.MobSDK;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Hashon;
import java.util.HashMap;
/* loaded from: classes2.dex */
public abstract class Service {

    /* loaded from: classes2.dex */
    public static abstract class ServiceEvent {
        private static final int PLATFORM = 1;
        protected Service service;

        public ServiceEvent(Service service) {
            this.service = service;
        }

        protected HashMap<String, Object> filterShareContent(int i2, Platform.ShareParams shareParams, HashMap<String, Object> hashMap) {
            Platform platform;
            try {
                platform = ShareSDK.getPlatform(ShareSDK.platformIdToName(i2));
            } catch (Throwable th) {
                SSDKLog b4 = SSDKLog.b();
                b4.a("ShareSDK Service filterShareContent catch: " + th, new Object[0]);
                platform = null;
            }
            if (platform == null) {
                return null;
            }
            f.a filterShareContent = platform.filterShareContent(shareParams, hashMap);
            HashMap<String, Object> hashMap2 = new HashMap<>();
            hashMap2.put("shareID", filterShareContent.f8774a);
            hashMap2.put("shareContent", new Hashon().fromJson(filterShareContent.toString()));
            SSDKLog.b().c("filterShareContent ==>>%s", hashMap2);
            return hashMap2;
        }

        protected HashMap<String, Object> toMap() {
            HashMap<String, Object> hashMap = new HashMap<>();
            DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
            hashMap.put("deviceid", deviceHelper.getDeviceKey());
            hashMap.put("appkey", MobSDK.getAppkey());
            hashMap.put("apppkg", deviceHelper.getPackageName());
            hashMap.put("appver", Integer.valueOf(deviceHelper.getAppVersion()));
            hashMap.put("sdkver", Integer.valueOf(this.service.getServiceVersionInt()));
            hashMap.put("plat", 1);
            hashMap.put("networktype", deviceHelper.getDetailNetworkTypeForStatic());
            hashMap.put("deviceData", cn.sharesdk.framework.utils.a.d());
            return hashMap;
        }

        public final String toString() {
            return new Hashon().fromHashMap(toMap());
        }
    }

    public String getDeviceKey() {
        return DeviceHelper.getInstance(MobSDK.getContext()).getDeviceKey();
    }

    protected abstract int getServiceVersionInt();

    public abstract String getServiceVersionName();

    public void onBind() {
    }

    public void onUnbind() {
    }
}
