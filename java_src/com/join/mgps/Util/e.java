package com.join.mgps.Util;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.lang.reflect.Method;
/* compiled from: ApMgr.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static String f27513a = "";

    /* renamed from: b  reason: collision with root package name */
    public static String f27514b = "";

    /* compiled from: ApMgr.java */
    /* loaded from: classes3.dex */
    class a extends WifiManager.LocalOnlyHotspotCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Handler f27515a;

        a(Handler handler) {
            this.f27515a = handler;
        }

        @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
        public void onFailed(int i2) {
            super.onFailed(i2);
        }

        @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
        @TargetApi(26)
        public void onStarted(WifiManager.LocalOnlyHotspotReservation localOnlyHotspotReservation) {
            super.onStarted(localOnlyHotspotReservation);
            WifiConfiguration wifiConfiguration = localOnlyHotspotReservation.getWifiConfiguration();
            e.f27513a = wifiConfiguration.SSID;
            e.f27514b = wifiConfiguration.preSharedKey;
            StringBuilder sb = new StringBuilder();
            sb.append("ssid=");
            sb.append(wifiConfiguration.SSID);
            sb.append(" pwd=");
            sb.append(wifiConfiguration.preSharedKey);
            this.f27515a.obtainMessage(2018, wifiConfiguration).sendToTarget();
        }

        @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
        public void onStopped() {
            super.onStopped();
        }
    }

    public static boolean a(Context context) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        try {
            if (f(context)) {
                wifiManager.setWifiEnabled(false);
                d(context);
            }
            Method method = wifiManager.getClass().getMethod("setWifiApEnabled", WifiConfiguration.class, Boolean.TYPE);
            Object[] objArr = new Object[2];
            objArr[0] = null;
            objArr[1] = Boolean.valueOf(!f(context));
            method.invoke(wifiManager, objArr);
            return true;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static boolean b(Context context, String str, String str2) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        try {
            WifiConfiguration wifiConfiguration = new WifiConfiguration();
            wifiConfiguration.SSID = str;
            wifiConfiguration.preSharedKey = str2;
            f27513a = str;
            f27514b = str2;
            if (f(context)) {
                wifiManager.setWifiEnabled(false);
                d(context);
            }
            Method method = wifiManager.getClass().getMethod("setWifiApEnabled", WifiConfiguration.class, Boolean.TYPE);
            Object[] objArr = new Object[2];
            objArr[0] = wifiConfiguration;
            objArr[1] = Boolean.valueOf(!f(context));
            method.invoke(wifiManager, objArr);
            return true;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @TargetApi(26)
    public static void c(Context context, Handler handler) {
        try {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
            if (f(context)) {
                wifiManager.setWifiEnabled(false);
                d(context);
            }
            if (f(context)) {
                return;
            }
            wifiManager.startLocalOnlyHotspot(new a(handler), handler);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void d(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            e(context);
            return;
        }
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        try {
            wifiManager.getClass().getMethod("setWifiApEnabled", WifiConfiguration.class, Boolean.TYPE).invoke(wifiManager, null, Boolean.FALSE);
        } catch (Throwable unused) {
        }
    }

    @TargetApi(26)
    private static void e(Context context) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        try {
            wifiManager.getClass().getMethod("cancelLocalOnlyHotspotRequest", new Class[0]).invoke(wifiManager, new Object[0]);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static boolean f(Context context) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        try {
            Method declaredMethod = wifiManager.getClass().getDeclaredMethod("isWifiApEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(wifiManager, new Object[0])).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }
}
