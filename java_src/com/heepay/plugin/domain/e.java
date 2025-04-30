package com.heepay.plugin.domain;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.heepay.plugin.c.j;
import com.umeng.analytics.pro.ai;
import java.io.File;
import java.io.FileFilter;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class e {

    /* renamed from: c  reason: collision with root package name */
    private static e f16821c;

    /* renamed from: a  reason: collision with root package name */
    private String f16822a;

    /* renamed from: b  reason: collision with root package name */
    private String f16823b;

    private e() {
    }

    public static synchronized e a() {
        e eVar;
        synchronized (e.class) {
            if (f16821c == null) {
                f16821c = new e();
            }
            eVar = f16821c;
        }
        return eVar;
    }

    public String a(Context context) {
        return j.a().a(context);
    }

    public String a(TelephonyManager telephonyManager) {
        return "";
    }

    public int b() {
        if (Build.VERSION.SDK_INT <= 10) {
            return 1;
        }
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new FileFilter() { // from class: com.heepay.plugin.domain.e.1
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    String name = file.getName();
                    if (name.startsWith(ai.f60423w)) {
                        for (int i2 = 3; i2 < name.length(); i2++) {
                            if (name.charAt(i2) < '0' || name.charAt(i2) > '9') {
                                return false;
                            }
                        }
                        return true;
                    }
                    return false;
                }
            }).length;
        } catch (NullPointerException | SecurityException unused) {
            return -1;
        }
    }

    public int b(TelephonyManager telephonyManager) {
        return telephonyManager.getNetworkType();
    }

    public void b(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            this.f16822a = a(context);
            this.f16823b = "PhoneNumber=" + a(telephonyManager) + ", DeviceId=" + this.f16822a + ", SimState=" + g(telephonyManager) + ", SimSerialNumber=" + c(telephonyManager) + ", SimOperatorName=" + d(telephonyManager) + ", SimCountryIso=" + e(telephonyManager) + ", PhoneType=" + f(telephonyManager) + ", SubscriberId=" + h(telephonyManager) + ", SystemName=" + d() + ", SystemModel=" + f() + ", SystemVersion=" + e() + ", NetworkType=" + b(telephonyManager) + ", IP=" + g() + ", CoreCount=" + b();
            StringBuilder sb = new StringBuilder();
            sb.append("mClientInfo:");
            sb.append(this.f16823b);
            com.heepay.plugin.c.c.a(sb.toString());
            try {
                this.f16823b = "SDK|" + com.heepay.plugin.a.d.a(this.f16823b, "39EB339F80B715384793F7EF", "ToHex16");
            } catch (Exception unused) {
                this.f16823b = "";
            }
        }
    }

    public String c() {
        return this.f16822a;
    }

    public String c(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("DeviceId", a(context));
                jSONObject.put("PhoneNumber", a(telephonyManager));
                jSONObject.put("SimState", g(telephonyManager));
                jSONObject.put("SimSerialNumber", c(telephonyManager));
                jSONObject.put("SimOperatorName", d(telephonyManager));
                jSONObject.put("SimCountryIso", e(telephonyManager));
                jSONObject.put("PhoneType", f(telephonyManager));
                jSONObject.put("SubscriberId", h(telephonyManager));
                jSONObject.put("SystemName", d());
                jSONObject.put("SystemModel", f());
                jSONObject.put("SystemVersion", e());
                jSONObject.put("NetworkType", b(telephonyManager));
                jSONObject.put("IP", g());
                jSONObject.put("CoreCount", b());
                String a4 = com.heepay.plugin.a.d.a(jSONObject.toString(), "39EB339F80B715384793F7EF", "ToHex16");
                this.f16823b = a4;
                return a4;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        return null;
    }

    public String c(TelephonyManager telephonyManager) {
        return "";
    }

    public String d() {
        return Build.BRAND;
    }

    public String d(TelephonyManager telephonyManager) {
        return telephonyManager.getSimOperatorName();
    }

    public String e() {
        return Build.VERSION.RELEASE;
    }

    public String e(TelephonyManager telephonyManager) {
        return telephonyManager.getSimCountryIso();
    }

    public int f(TelephonyManager telephonyManager) {
        return telephonyManager.getPhoneType();
    }

    public String f() {
        return Build.MODEL;
    }

    public int g(TelephonyManager telephonyManager) {
        return telephonyManager.getSimState();
    }

    public String g() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                        return nextElement.getHostAddress().toString();
                    }
                }
            }
            return null;
        } catch (SocketException unused) {
            return null;
        }
    }

    public String h() {
        return this.f16823b;
    }

    public String h(TelephonyManager telephonyManager) {
        return "";
    }
}
