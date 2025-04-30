package com.ss.android.socialbase.appdownloader.a;

import android.content.Context;
import android.content.Intent;
import com.umeng.analytics.pro.ai;
/* compiled from: V3DevicePlan.java */
/* loaded from: classes4.dex */
public class l extends a {
    public l(Context context, com.ss.android.socialbase.downloader.g.a aVar, String str) {
        super(context, aVar, str);
    }

    @Override // com.ss.android.socialbase.appdownloader.a.e
    public Intent b() {
        String c4 = this.f57561b.c(ai.az);
        String a4 = com.ss.android.socialbase.appdownloader.f.c.a(this.f57561b.c("ag"), c4);
        String a5 = com.ss.android.socialbase.appdownloader.f.c.a(this.f57561b.c("ah"), c4);
        String a6 = com.ss.android.socialbase.appdownloader.f.c.a(this.f57561b.c("ai"), c4);
        String a7 = com.ss.android.socialbase.appdownloader.f.c.a(this.f57561b.c("aj"), c4);
        Intent intent = new Intent();
        intent.putExtra(a4, this.f57562c);
        intent.putExtra(a5, "*/*");
        intent.putExtra(a6, true);
        intent.setAction(a7);
        intent.addFlags(268435456);
        intent.addFlags(32768);
        return intent;
    }
}
