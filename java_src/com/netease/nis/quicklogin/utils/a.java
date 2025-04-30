package com.netease.nis.quicklogin.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.AbsoluteSizeSpan;
import android.widget.TextView;
import com.cmic.sso.sdk.auth.AuthnHelper;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.google.gson.GsonBuilder;
import com.join.mgps.Util.g0;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.entity.CMPrefetchNumber;
import com.netease.nis.quicklogin.entity.CTLoginAuth;
import com.netease.nis.quicklogin.entity.CTPrefetchNumber;
import com.netease.nis.quicklogin.entity.PreCheckEntity;
import com.netease.nis.quicklogin.helper.UnifyUiConfig;
import com.netease.nis.quicklogin.listener.QuickLoginListener;
import java.lang.ref.WeakReference;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: CommonUtil.java */
/* loaded from: classes4.dex */
public class a {
    public static int a(Context context, QuickLoginListener quickLoginListener) throws JSONException {
        boolean z3;
        JSONObject networkType = AuthnHelper.getInstance(context).getNetworkType(context);
        Logger.d("checkNetWork [callback]" + networkType.toString());
        if (networkType.has("networktype")) {
            String string = networkType.getString("networktype");
            if (!"1".equals(string) && !"3".equals(string)) {
                if (string.equals(PayCenterOrderRequest.PAY_TYPE_RECHARGE)) {
                    return 4;
                }
            } else {
                z3 = true;
                if (networkType.has("errorDes") && quickLoginListener != null) {
                    quickLoginListener.onGetMobileNumberError("易盾token为空", networkType.getString("errorDes"));
                }
                if (!z3 && networkType.has("operatortype")) {
                    String string2 = networkType.getString("operatortype");
                    if ("1".equals(string2)) {
                        return 2;
                    }
                    if (PayCenterOrderRequest.PAY_TYPE_RECHARGE.equals(string2)) {
                        return 3;
                    }
                    return "3".equals(string2) ? 1 : 5;
                }
            }
        }
        z3 = false;
        if (networkType.has("errorDes")) {
            quickLoginListener.onGetMobileNumberError("易盾token为空", networkType.getString("errorDes"));
        }
        return !z3 ? 5 : 5;
    }

    public static String b(Context context) {
        WifiInfo connectionInfo;
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return null;
        }
        if (activeNetworkInfo.getType() == 0) {
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
                return null;
            } catch (Exception e4) {
                Logger.e(e4.getMessage());
                return null;
            }
        } else if (activeNetworkInfo.getType() != 1 || (connectionInfo = ((WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo()) == null) {
            return null;
        } else {
            return a(connectionInfo.getIpAddress());
        }
    }

    public static int c(Context context) throws JSONException {
        JSONObject networkType = AuthnHelper.getInstance(context).getNetworkType(context);
        if (networkType.has("operatortype")) {
            String string = networkType.getString("operatortype");
            if ("1".equals(string)) {
                return 2;
            }
            if (PayCenterOrderRequest.PAY_TYPE_RECHARGE.equals(string)) {
                return 3;
            }
            return "3".equals(string) ? 1 : 5;
        }
        return 5;
    }

    public static String a(Context context) {
        DhcpInfo dhcpInfo;
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        if (wifiManager == null || (dhcpInfo = wifiManager.getDhcpInfo()) == null) {
            return null;
        }
        String a4 = a(dhcpInfo.dns1);
        String a5 = a(dhcpInfo.dns2);
        return "dns1:" + a4 + " dns2:" + a5;
    }

    public static int b(String str) {
        return a(str, -1);
    }

    public static String a(int i2) {
        return (i2 & 255) + g0.f27568a + ((i2 >> 8) & 255) + g0.f27568a + ((i2 >> 16) & 255) + g0.f27568a + ((i2 >> 24) & 255);
    }

    public static String a(String str) {
        byte[] bytes = str.getBytes();
        StringBuilder sb = new StringBuilder();
        for (byte b4 : bytes) {
            int i2 = b4 & 255;
            if (Integer.toHexString(i2).length() == 1) {
                sb.append("0");
                sb.append(Integer.toHexString(i2));
            } else {
                sb.append(Integer.toHexString(i2));
            }
        }
        return sb.toString();
    }

    public static Object a(String str, Class cls) {
        try {
            Object newInstance = cls.newInstance();
            if (newInstance instanceof PreCheckEntity) {
                return new GsonBuilder().create().fromJson(str, (Class<Object>) PreCheckEntity.class);
            }
            if (newInstance instanceof PreCheckEntity.Data) {
                return new GsonBuilder().create().fromJson(str, (Class<Object>) PreCheckEntity.Data.class);
            }
            if (newInstance instanceof CTPrefetchNumber) {
                return new GsonBuilder().create().fromJson(str, (Class<Object>) CTPrefetchNumber.class);
            }
            if (newInstance instanceof CMPrefetchNumber) {
                return new GsonBuilder().create().fromJson(str, (Class<Object>) CMPrefetchNumber.class);
            }
            if (newInstance instanceof CTLoginAuth) {
                return new GsonBuilder().create().fromJson(str, (Class<Object>) CTLoginAuth.class);
            }
            return null;
        } catch (Exception e4) {
            Logger.e(e4.getMessage());
            return null;
        }
    }

    private static int a(String str, int i2) {
        if (str == null) {
            return i2;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public static void a(int i2, UnifyUiConfig unifyUiConfig, TextView textView) {
        SpannableString a4 = a(i2, unifyUiConfig, unifyUiConfig.getPrivacyTextStart(), unifyUiConfig.getPrivacyTextEnd());
        if (unifyUiConfig.getPrivacyTextStartSize() != 0.0f) {
            a4.setSpan(new AbsoluteSizeSpan(i.b(textView.getContext(), unifyUiConfig.getPrivacyTextStartSize())), 0, unifyUiConfig.getPrivacyTextStart().length(), 33);
        }
        textView.setHighlightColor(0);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(a4);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0205  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.text.SpannableString a(int r17, com.netease.nis.quicklogin.helper.UnifyUiConfig r18, java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 621
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.nis.quicklogin.utils.a.a(int, com.netease.nis.quicklogin.helper.UnifyUiConfig, java.lang.String, java.lang.String):android.text.SpannableString");
    }

    public static boolean a(WeakReference weakReference) {
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }
}
