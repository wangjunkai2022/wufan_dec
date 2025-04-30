package com.join.mgps.customview;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.d2;
import java.lang.reflect.Method;
/* compiled from: JPushNotificationManger.java */
/* loaded from: classes3.dex */
public class l {

    /* renamed from: f  reason: collision with root package name */
    public static int f46989f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static String f46990g = "BROADCAST_ACTION_CLICK";

    /* renamed from: h  reason: collision with root package name */
    private static l f46991h;

    /* renamed from: a  reason: collision with root package name */
    private NotificationManager f46992a;

    /* renamed from: b  reason: collision with root package name */
    private RemoteViews f46993b;

    /* renamed from: c  reason: collision with root package name */
    private String f46994c = "channelId_JPush";

    /* renamed from: d  reason: collision with root package name */
    private final int f46995d = 1;

    /* renamed from: e  reason: collision with root package name */
    private Notification f46996e;

    @TargetApi(26)
    private void c() {
        this.f46992a.createNotificationChannel(new NotificationChannel(this.f46994c, "channelName", 3));
    }

    public static l d() {
        if (f46991h == null) {
            f46991h = new l();
        }
        return f46991h;
    }

    public void a() {
        this.f46992a.cancel(f46989f);
    }

    public void b(Context context) {
        Method method;
        try {
            Object systemService = context.getSystemService("statusbar");
            if (Build.VERSION.SDK_INT <= 16) {
                method = systemService.getClass().getMethod("collapse", new Class[0]);
            } else {
                method = systemService.getClass().getMethod("collapsePanels", new Class[0]);
            }
            method.invoke(systemService, new Object[0]);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @RequiresApi(api = 19)
    public boolean e(Context context) {
        if (Build.VERSION.SDK_INT < 26 || ((NotificationManager) context.getSystemService("notification")).getImportance() != 0) {
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            String packageName = context.getApplicationContext().getPackageName();
            int i2 = applicationInfo.uid;
            try {
                Class<?> cls = Class.forName(AppOpsManager.class.getName());
                Class<?> cls2 = Integer.TYPE;
                return ((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i2), packageName)).intValue() == 0;
            } catch (Exception e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public void f(Context context, Bundle bundle) {
        String string = bundle.getString("JPushInterface.EXTRA_TITLE");
        String string2 = bundle.getString("JPushInterface.EXTRA_MESSAGE");
        if (d2.h(string)) {
            string = context.getResources().getString(R.string.app_name);
        }
        this.f46992a = (NotificationManager) context.getSystemService("notification");
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            this.f46992a.createNotificationChannel(new NotificationChannel("channel_1", "jpush通知", 4));
        }
        Intent intent = new Intent(f46990g);
        intent.putExtras(bundle);
        this.f46996e = new NotificationCompat.Builder(context, this.f46994c).setSmallIcon(R.drawable.icon).setContentTitle(string).setContentText(string2).setContentIntent(PendingIntent.getBroadcast(context, 1, intent, 134217728)).setAutoCancel(true).setOnlyAlertOnce(true).setWhen(System.currentTimeMillis()).setTicker(string).setLargeIcon(BitmapFactory.decodeResource(context.getResources(), R.drawable.icon)).setDefaults(7).setVibrate(new long[]{0}).setSound(null).setPriority(2).build();
        if (i2 >= 26) {
            c();
        }
        this.f46992a.notify(f46989f, this.f46996e);
    }
}
