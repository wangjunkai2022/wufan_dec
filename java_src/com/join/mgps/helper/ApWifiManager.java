package com.join.mgps.helper;

import android.content.Context;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.Util.f;
/* loaded from: classes4.dex */
public class ApWifiManager {
    private static final String TAG = "ApWifiManager";
    Context context;
    f mApWifiUtil;
    WifiUtils wifiUtil;

    public ApWifiManager(Context context) {
        this.wifiUtil = WifiUtils.getInstance(context);
        this.mApWifiUtil = f.i(context);
        this.context = context;
    }

    public void closeWifiAp() {
        this.mApWifiUtil.f();
        this.wifiUtil.openWifi(this.context);
    }

    public boolean connectApWifi(String str, String str2) {
        this.mApWifiUtil.f();
        this.wifiUtil.openWifi(this.context);
        if (this.wifiUtil.isWifiEnable()) {
            this.mApWifiUtil.h();
            return this.mApWifiUtil.a(str, str2);
        }
        return false;
    }

    public void createApWifi(String str, String str2) {
        this.wifiUtil.closeWifi(this.context);
        this.mApWifiUtil.g(str, str2);
    }
}
