package com.ss.android.socialbase.appdownloader.a;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.umeng.analytics.pro.ai;
import org.json.JSONObject;
/* compiled from: O3DevicePlan.java */
/* loaded from: classes4.dex */
public class i extends a {

    /* renamed from: d  reason: collision with root package name */
    private String f57564d;

    /* renamed from: e  reason: collision with root package name */
    private String f57565e;

    public i(Context context, com.ss.android.socialbase.downloader.g.a aVar, String str, String str2, String str3) {
        super(context, aVar, str);
        this.f57564d = str2;
        this.f57565e = str3;
    }

    @Override // com.ss.android.socialbase.appdownloader.a.e
    public Intent b() {
        String str;
        String c4 = this.f57561b.c(ai.az);
        String a4 = com.ss.android.socialbase.appdownloader.f.c.a(this.f57561b.c("ak"), c4);
        String a5 = com.ss.android.socialbase.appdownloader.f.c.a(this.f57561b.c("am"), c4);
        String a6 = com.ss.android.socialbase.appdownloader.f.c.a(this.f57561b.c(m.a.f72573k), c4);
        String str2 = null;
        if (!TextUtils.isEmpty(a6) && a6.split(",").length == 2) {
            String[] split = a6.split(",");
            String a7 = com.ss.android.socialbase.appdownloader.f.c.a(this.f57561b.c("al"), c4);
            String a8 = com.ss.android.socialbase.appdownloader.f.c.a(this.f57561b.c("ao"), c4);
            if (!TextUtils.isEmpty(a8) && a8.split(",").length == 2) {
                String[] split2 = a8.split(",");
                JSONObject d4 = this.f57561b.d("download_dir");
                if (d4 != null) {
                    String optString = d4.optString("dir_name");
                    if (!TextUtils.isEmpty(optString) && optString.contains("%s")) {
                        try {
                            str = String.format(optString, this.f57565e);
                        } catch (Throwable unused) {
                            str = this.f57565e;
                        }
                    } else {
                        str = this.f57565e;
                    }
                    str2 = str;
                    if (str2.length() > 255) {
                        str2 = a7.substring(str2.length() - 255);
                    }
                }
                Intent intent = new Intent(a4);
                intent.putExtra(split2[0], split2[1]);
                intent.putExtra(a5, this.f57564d);
                intent.putExtra(a7, str2);
                intent.putExtra(split[0], Integer.parseInt(split[1]));
                intent.addFlags(268468224);
                return intent;
            }
        }
        return null;
    }
}
