package com.join.mgps.activity.login;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
/* loaded from: classes3.dex */
public class LoginBase {
    private String deviceId;
    private String mac;
    private String sign;
    private String version;

    public void getData(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            int i2 = packageInfo.versionCode;
            String str = packageInfo.versionName;
            this.version = i2 + "_" + str;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
        }
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getMac() {
        return this.mac;
    }

    public String getSign() {
        return this.sign;
    }

    public String getVersion() {
        return this.version;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
