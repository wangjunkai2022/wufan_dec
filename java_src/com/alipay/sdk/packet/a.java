package com.alipay.sdk.packet;

import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2.dex */
public final class a {
    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String[] split = str.split(m.a.f72566d);
        if (split.length == 0) {
            return "";
        }
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        for (String str6 : split) {
            if (TextUtils.isEmpty(str2)) {
                str2 = !str6.contains("biz_type") ? null : e(str6);
            }
            if (TextUtils.isEmpty(str3)) {
                str3 = !str6.contains("biz_no") ? null : e(str6);
            }
            if (TextUtils.isEmpty(str4)) {
                str4 = (!str6.contains(com.alipay.sdk.app.statistic.c.f9631z) || str6.startsWith("out_trade_no")) ? null : e(str6);
            }
            if (TextUtils.isEmpty(str5)) {
                str5 = !str6.contains("app_userid") ? null : e(str6);
            }
        }
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str2)) {
            sb.append("biz_type=" + str2 + ";");
        }
        if (!TextUtils.isEmpty(str3)) {
            sb.append("biz_no=" + str3 + ";");
        }
        if (!TextUtils.isEmpty(str4)) {
            sb.append("trade_no=" + str4 + ";");
        }
        if (!TextUtils.isEmpty(str5)) {
            sb.append("app_userid=" + str5 + ";");
        }
        String sb2 = sb.toString();
        return sb2.endsWith(";") ? sb2.substring(0, sb2.length() - 1) : sb2;
    }

    private static String b(String str) {
        if (str.contains("biz_type")) {
            return e(str);
        }
        return null;
    }

    private static String c(String str) {
        if (str.contains("biz_no")) {
            return e(str);
        }
        return null;
    }

    private static String d(String str) {
        if (!str.contains(com.alipay.sdk.app.statistic.c.f9631z) || str.startsWith("out_trade_no")) {
            return null;
        }
        return e(str);
    }

    private static String e(String str) {
        String[] split = str.split(SimpleComparison.EQUAL_TO_OPERATION);
        if (split.length > 1) {
            String str2 = split[1];
            return str2.contains(m.a.f72569g) ? str2.replaceAll(m.a.f72569g, "") : str2;
        }
        return null;
    }

    private static String f(String str) {
        if (str.contains("app_userid")) {
            return e(str);
        }
        return null;
    }
}
