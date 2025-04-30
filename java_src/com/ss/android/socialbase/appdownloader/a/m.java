package com.ss.android.socialbase.appdownloader.a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.umeng.analytics.pro.ai;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
/* compiled from: VbiDevicePlan.java */
/* loaded from: classes4.dex */
public class m extends a {
    public m(Context context, com.ss.android.socialbase.downloader.g.a aVar, String str) {
        super(context, aVar, str);
    }

    public static String a(Map<String, String> map) {
        if (map == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            stringBuffer.append(entry.getKey());
            stringBuffer.append(SimpleComparison.EQUAL_TO_OPERATION);
            stringBuffer.append(URLEncoder.encode(entry.getValue()));
            stringBuffer.append(m.a.f72566d);
        }
        String stringBuffer2 = stringBuffer.toString();
        return stringBuffer2.endsWith(m.a.f72566d) ? stringBuffer2.substring(0, stringBuffer2.length() - 1) : stringBuffer2;
    }

    @Override // com.ss.android.socialbase.appdownloader.a.e
    public Intent b() {
        String c4 = this.f57561b.c(ai.az);
        String a4 = com.ss.android.socialbase.appdownloader.f.c.a(this.f57561b.c("bb"), c4);
        if (!TextUtils.isEmpty(a4) && a4.split(",").length == 2) {
            String a5 = com.ss.android.socialbase.appdownloader.f.c.a(this.f57561b.c("bc"), c4);
            if (!TextUtils.isEmpty(a5) && a5.split(",").length == 2) {
                String[] split = a4.split(",");
                String[] split2 = a5.split(",");
                String a6 = com.ss.android.socialbase.appdownloader.f.c.a(this.f57561b.c("bd"), c4);
                String a7 = com.ss.android.socialbase.appdownloader.f.c.a(this.f57561b.c("be"), c4);
                String a8 = com.ss.android.socialbase.appdownloader.f.c.a(this.f57561b.c("bf"), c4);
                HashMap hashMap = new HashMap();
                hashMap.put(split[0], split[1]);
                hashMap.put(split2[0], split2[1]);
                hashMap.put(a6, this.f57562c);
                Intent intent = new Intent();
                intent.setAction(a8);
                intent.setData(Uri.parse(a7 + a(hashMap)));
                intent.addFlags(268468224);
                return intent;
            }
        }
        return null;
    }
}
