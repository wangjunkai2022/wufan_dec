package com.ta.utdid2.android.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.join.mgps.Util.g0;
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static final String f59165a = "Wi-Fi";

    /* renamed from: b  reason: collision with root package name */
    public static final String f59166b = "00-00-00-00-00-00";

    /* renamed from: c  reason: collision with root package name */
    private static final String f59167c = "NetworkUtils";

    /* renamed from: d  reason: collision with root package name */
    private static ConnectivityManager f59168d;

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f59169e = {4, 7, 2, 1};

    private static String a(int i2) {
        return (i2 & 255) + g0.f27568a + ((i2 >> 8) & 255) + g0.f27568a + ((i2 >> 16) & 255) + g0.f27568a + ((i2 >> 24) & 255);
    }

    public static ConnectivityManager b(Context context) {
        if (context == null) {
            return null;
        }
        if (f59168d == null) {
            f59168d = (ConnectivityManager) context.getSystemService("connectivity");
        }
        return f59168d;
    }

    public static String[] c(Context context) {
        String[] strArr = {"Unknown", "Unknown"};
        if (context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) != 0) {
            strArr[0] = "Unknown";
            return strArr;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            strArr[0] = "Unknown";
            return strArr;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.getState() == NetworkInfo.State.CONNECTED) {
            strArr[0] = "Wi-Fi";
            return strArr;
        }
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
        if (networkInfo2 != null && networkInfo2.getState() == NetworkInfo.State.CONNECTED) {
            strArr[0] = "2G/3G";
            strArr[1] = networkInfo2.getSubtypeName();
        }
        return strArr;
    }

    public static String d(Context context) {
        WifiInfo connectionInfo;
        if (context == null || (connectionInfo = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo()) == null) {
            return f59166b;
        }
        String macAddress = connectionInfo.getMacAddress();
        return i.c(macAddress) ? f59166b : macAddress;
    }

    public static String e(Context context) {
        if (context != null) {
            try {
                WifiInfo connectionInfo = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
                if (connectionInfo != null) {
                    return a(connectionInfo.getIpAddress());
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static boolean f(Context context) {
        ConnectivityManager b4 = b(context);
        if (b4 != null) {
            try {
                NetworkInfo activeNetworkInfo = b4.getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    return activeNetworkInfo.isConnected();
                }
                return false;
            } catch (Exception e4) {
                e4.toString();
                return false;
            }
        }
        return false;
    }

    public static boolean g(Context context) {
        ConnectivityManager b4 = b(context);
        if (b4 != null) {
            try {
                NetworkInfo activeNetworkInfo = b4.getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    int subtype = activeNetworkInfo.getSubtype();
                    if (d.f59161b) {
                        StringBuilder sb = new StringBuilder("subType:");
                        sb.append(subtype);
                        sb.append(": name:");
                        sb.append(activeNetworkInfo.getSubtypeName());
                    }
                    for (int i2 : f59169e) {
                        if (i2 == subtype) {
                            return true;
                        }
                    }
                }
            } catch (Exception e4) {
                e4.toString();
            }
        }
        return false;
    }

    public static boolean h(Context context) {
        if (context != null) {
            try {
                if (c(context)[0].equals("Wi-Fi")) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
