package com.cmic.sso.sdk.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.join.mgps.dto.PayCenterOrderRequest;
/* compiled from: SIMUtils.java */
/* loaded from: classes2.dex */
public class j {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b  reason: collision with root package name */
    private static j f10932b;

    /* renamed from: a  reason: collision with root package name */
    private final Context f10933a;

    private j(Context context) {
        this.f10933a = context;
    }

    public static void a(Context context) {
        f10932b = new j(context);
    }

    public String b() {
        try {
            int a4 = com.cmic.sso.sdk.b.a.a().b().a();
            return a4 >= 0 ? Integer.toString(a4) : "";
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public String c() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f10933a.getSystemService("phone");
        if (telephonyManager != null) {
            String simOperator = telephonyManager.getSimOperator();
            c.b("SIMUtils", "SysOperator= " + simOperator);
            return simOperator;
        }
        return "";
    }

    public static j a() {
        return f10932b;
    }

    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            str = c();
        }
        return b(str);
    }

    private String b(String str) {
        str.hashCode();
        char c4 = 65535;
        switch (str.hashCode()) {
            case 49679470:
                if (str.equals("46000")) {
                    c4 = 0;
                    break;
                }
                break;
            case 49679471:
                if (str.equals("46001")) {
                    c4 = 1;
                    break;
                }
                break;
            case 49679472:
                if (str.equals("46002")) {
                    c4 = 2;
                    break;
                }
                break;
            case 49679473:
                if (str.equals("46003")) {
                    c4 = 3;
                    break;
                }
                break;
            case 49679474:
                if (str.equals("46004")) {
                    c4 = 4;
                    break;
                }
                break;
            case 49679475:
                if (str.equals("46005")) {
                    c4 = 5;
                    break;
                }
                break;
            case 49679476:
                if (str.equals("46006")) {
                    c4 = 6;
                    break;
                }
                break;
            case 49679477:
                if (str.equals("46007")) {
                    c4 = 7;
                    break;
                }
                break;
            case 49679479:
                if (str.equals("46009")) {
                    c4 = '\b';
                    break;
                }
                break;
            case 49679502:
                if (str.equals("46011")) {
                    c4 = '\t';
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
            case 2:
            case 4:
            case 7:
                c.a("SIMUtils", "中国移动");
                return "1";
            case 1:
            case 6:
            case '\b':
                c.a("SIMUtils", "中国联通");
                return PayCenterOrderRequest.PAY_TYPE_RECHARGE;
            case 3:
            case 5:
            case '\t':
                c.a("SIMUtils", "中国电信");
                return "3";
            default:
                return "0";
        }
    }
}
