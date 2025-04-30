package com.join.mgps.Util;

import android.content.Context;
import com.MApplication;
import java.util.Map;
/* compiled from: WalleUtil.java */
/* loaded from: classes3.dex */
public class q2 {
    public static void a(Context context) {
        String str;
        String str2;
        com.meituan.android.walle.c e4 = com.meituan.android.walle.g.e(context);
        if (e4 != null) {
            e4.a();
            str = "";
            str2 = str;
            for (Map.Entry<String, String> entry : e4.b().entrySet()) {
                entry.getKey();
                entry.getValue();
                if ("shareCode".equals(entry.getKey())) {
                    str = entry.getValue();
                }
                if ("adId".equals(entry.getKey())) {
                    str2 = entry.getValue();
                }
                StringBuilder sb = new StringBuilder();
                sb.append("SplashActivity>>>>key：");
                sb.append((Object) entry.getKey());
                sb.append("，value：");
                sb.append((Object) entry.getValue());
            }
        } else {
            str = "";
            str2 = str;
        }
        if (d2.h(str)) {
            String a4 = com.meituan.android.walle.g.a(context, "shareGame");
            str = com.meituan.android.walle.g.a(context, "shareCode");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SplashActivity>>>>shareGame：");
            sb2.append(a4);
            sb2.append("，shareCode：");
            sb2.append(str);
        }
        if (d2.h(str2)) {
            String a5 = com.meituan.android.walle.g.a(context, "adId");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("SplashActivity>>>>adId：");
            sb3.append(a5);
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("SplashActivity>>>>shareCode：");
        sb4.append(str);
        MApplication.f9236w0 = d2.h(str) ? "" : str;
    }
}
