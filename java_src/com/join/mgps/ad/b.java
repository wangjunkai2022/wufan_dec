package com.join.mgps.ad;

import android.content.Context;
import android.content.Intent;
import com.join.mgps.dialog.DownloadHighSpeedingDialog_;
/* compiled from: BaseAdVideo.java */
/* loaded from: classes3.dex */
public class b {
    public static void a(Context context, int i2) {
        Intent intent = new Intent();
        intent.setAction("com.emu.ad.result");
        intent.putExtra(DownloadHighSpeedingDialog_.a.f47372b, i2);
        context.sendBroadcast(intent);
    }

    public static void b(Context context, int i2, String str) {
        Intent intent = new Intent();
        intent.setAction("com.join.android.app.mgsim.wufun.ad.result");
        intent.putExtra(DownloadHighSpeedingDialog_.a.f47372b, i2);
        intent.putExtra("gameId", str);
        context.sendBroadcast(intent);
    }
}
