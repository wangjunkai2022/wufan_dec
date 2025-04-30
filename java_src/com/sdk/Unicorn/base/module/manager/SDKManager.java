package com.sdk.Unicorn.base.module.manager;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import androidx.annotation.Keep;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.join.mgps.socket.entity.b;
import com.sdk.Unicorn.base.api.CallBack;
import com.sdk.f.g;
import com.sdk.k.a;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
/* loaded from: classes4.dex */
public abstract class SDKManager {
    public static final int CODE_WRITE_SETTINGS_PERMISSION = 1102;
    public static boolean closePermission = false;
    public static boolean isStrong = true;
    public static Context mContext = null;
    public static boolean smartTrust = true;
    public static String statisticalTestHost = "";
    public static String testHost = "";
    public static boolean useCache = true;
    public static String userAgent;

    public static void closePermission(boolean z3) {
        closePermission = z3;
    }

    private void forceSendRequestByMobileData() {
        if (getDataEnabled(mContext) && isWifiAvailable(mContext) && Build.VERSION.SDK_INT >= 21) {
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addCapability(12);
            builder.addTransportType(0);
            ((ConnectivityManager) mContext.getSystemService("connectivity")).requestNetwork(builder.build(), new ConnectivityManager.NetworkCallback() { // from class: com.sdk.Unicorn.base.module.manager.SDKManager.1
                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(Network network) {
                    super.onAvailable(network);
                }
            });
        }
    }

    public static Context getContext() {
        return mContext;
    }

    public static boolean getDataEnabled(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Method declaredMethod = telephonyManager.getClass().getDeclaredMethod("getDataEnabled", new Class[0]);
            if (declaredMethod != null) {
                return ((Boolean) declaredMethod.invoke(telephonyManager, new Object[0])).booleanValue();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return false;
    }

    public static String getHostIp() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                        return nextElement.getHostAddress();
                    }
                }
            }
            return b.f52090j;
        } catch (Exception unused) {
            return b.f52090j;
        }
    }

    public static void getIccid(Context context) {
        String a4 = a.a(context);
        StringBuilder sb = new StringBuilder();
        sb.append("getIccid: ");
        sb.append(a4);
    }

    public static String getLocalIpAddress() {
        return null;
    }

    public static String getStatisticalTestHost() {
        return statisticalTestHost;
    }

    public static String getTestHost() {
        return testHost;
    }

    public static String getUserAgent() {
        return userAgent;
    }

    public static boolean getWifiEnabled(Context context) {
        return ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).isWifiEnabled();
    }

    @Keep
    public static void init(Context context, String str) {
        mContext = context;
        com.sdk.v.a.a(context).a(null, str);
    }

    @Keep
    public static void init(Context context, String str, String str2) {
        mContext = context;
        com.sdk.v.a.a(context).a(str, str2);
    }

    public static boolean is3rd(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 0;
    }

    public static boolean isClosePermission() {
        return closePermission;
    }

    public static boolean isIsStrong() {
        return isStrong;
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo[] allNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null && allNetworkInfo.length > 0) {
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isSmartTrust() {
        return smartTrust;
    }

    public static boolean isWiFiActive(Context context) {
        WifiManager wifiManager = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        return wifiManager.isWifiEnabled() && (connectionInfo == null ? 0 : connectionInfo.getIpAddress()) != 0;
    }

    public static boolean isWifi(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    public static boolean isWifiAvailable(Context context) {
        return ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).isWifiEnabled() && isWiFiActive(context);
    }

    public static void releaseConnect(Context context) {
        com.sdk.u.a.a(context);
    }

    public static void req(Context context) {
        if (Build.VERSION.SDK_INT >= 21) {
            final ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addTransportType(0);
            builder.addCapability(12);
            connectivityManager.requestNetwork(builder.build(), new ConnectivityManager.NetworkCallback() { // from class: com.sdk.Unicorn.base.module.manager.SDKManager.2
                @Override // android.net.ConnectivityManager.NetworkCallback
                @TargetApi(23)
                public void onAvailable(Network network) {
                    super.onAvailable(network);
                    if (Build.VERSION.SDK_INT >= 23) {
                        connectivityManager.bindProcessToNetwork(network);
                    } else {
                        ConnectivityManager.setProcessDefaultNetwork(network);
                    }
                    connectivityManager.unregisterNetworkCallback(this);
                }
            });
        }
    }

    @Keep
    public static void securityType(int i2) {
        com.sdk.v.a.f56703d = i2;
        com.sdk.v.a.f56704e = i2 == 0 ? "B" : "C";
    }

    @Keep
    public static void setDebug(boolean z3) {
        g.f56647b = z3;
    }

    public static void setDebugHead(boolean z3) {
        g.f56649d = z3;
    }

    public static void setIsStrong(boolean z3) {
        isStrong = z3;
    }

    public static void setNe4G() {
        if (Build.VERSION.SDK_INT >= 21) {
            new NetworkRequest.Builder().addTransportType(0);
        }
    }

    public static void setSmartTrust(boolean z3) {
        smartTrust = z3;
    }

    public static void setStatisticalTestHost(String str) {
        statisticalTestHost = str;
    }

    public static void setTestHost(String str) {
        testHost = str;
    }

    public static void setUseCache(boolean z3) {
        useCache = z3;
    }

    public static void setUserAgent(String str) {
        userAgent = str;
    }

    public static <T> void toFailed(CallBack<T> callBack, int i2, String str) {
        if (callBack != null) {
            callBack.onFailed(1, i2, str, null);
        }
    }

    public static boolean useCache() {
        return useCache;
    }

    public void youDesirePermissionCode(Activity activity) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23 ? Settings.System.canWrite(activity) : ContextCompat.checkSelfPermission(activity, "android.permission.WRITE_SETTINGS") == 0) {
            return;
        }
        if (i2 < 23) {
            ActivityCompat.requestPermissions(activity, new String[]{"android.permission.WRITE_SETTINGS"}, CODE_WRITE_SETTINGS_PERMISSION);
            return;
        }
        Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
        intent.setData(Uri.parse("package:" + activity.getPackageName()));
        activity.startActivityForResult(intent, CODE_WRITE_SETTINGS_PERMISSION);
    }
}
