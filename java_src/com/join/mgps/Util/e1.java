package com.join.mgps.Util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.efs.sdk.base.core.util.NetworkUtil;
/* compiled from: NetUtil.java */
/* loaded from: classes3.dex */
public class e1 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f27517a = -1;

    /* renamed from: b  reason: collision with root package name */
    public static final int f27518b = 0;

    /* renamed from: c  reason: collision with root package name */
    public static final int f27519c = 1;

    public static String a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() != 0) {
            return NetworkUtil.NETWORK_TYPE_WIFI;
        }
        String subtypeName = activeNetworkInfo.getSubtypeName();
        int subtype = activeNetworkInfo.getSubtype();
        return (subtype == 4 || subtype == 1 || subtype == 2 || subtype == 7 || subtype == 11) ? NetworkUtil.NETWORK_CLASS_2G : (subtype == 3 || subtype == 8 || subtype == 6 || subtype == 5 || subtype == 12 || subtype == 9 || subtype == 10 || subtype == 14 || subtype == 15) ? NetworkUtil.NETWORK_CLASS_3G : subtype == 13 ? NetworkUtil.NETWORK_CLASS_4G : (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) ? NetworkUtil.NETWORK_CLASS_3G : subtypeName;
    }

    public static int b(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            if (activeNetworkInfo.getType() == 1) {
                return 1;
            }
            if (activeNetworkInfo.getType() == 0) {
                return 0;
            }
        }
        return -1;
    }
}
