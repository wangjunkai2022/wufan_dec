package cn.sharesdk.framework.utils;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
/* compiled from: PendingIntentUtils.java */
/* loaded from: classes2.dex */
public class d {
    public static PendingIntent a(Context context, int i2, Intent intent, int i4) {
        if (Build.VERSION.SDK_INT >= 23) {
            return PendingIntent.getBroadcast(context, i2, intent, 67108864);
        }
        return PendingIntent.getBroadcast(context, i2, intent, i4);
    }
}
