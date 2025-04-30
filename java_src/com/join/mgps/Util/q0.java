package com.join.mgps.Util;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.db.tables.JPushRecordTable;
import java.util.List;
import java.util.regex.Pattern;
/* compiled from: JPushUtils.java */
/* loaded from: classes.dex */
public class q0 {

    /* renamed from: c  reason: collision with root package name */
    public static final String f27769c = "JPUSH_APPKEY";

    /* renamed from: d  reason: collision with root package name */
    private static final int f27770d = 1001;

    /* renamed from: e  reason: collision with root package name */
    private static final int f27771e = 1002;

    /* renamed from: a  reason: collision with root package name */
    private String f27772a = "JPushUtils";

    /* renamed from: b  reason: collision with root package name */
    private final Handler f27773b = new a();

    /* compiled from: JPushUtils.java */
    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 == 1001) {
                String unused = q0.this.f27772a;
            } else if (i2 != 1002) {
                String unused2 = q0.this.f27772a;
                StringBuilder sb = new StringBuilder();
                sb.append("Unhandled msg - ");
                sb.append(message.what);
            } else {
                String unused3 = q0.this.f27772a;
            }
        }
    }

    public static void a(Context context, IntentDateBean intentDateBean, String str, String str2) {
        Intent intent = new Intent(context, MGMainActivity_.class);
        intent.setFlags(335544320);
        intent.putExtra("intentDateBean", intentDateBean);
        new g1(context, 1);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(new NotificationChannel("channel_1", "jpush通知", 4));
        }
        Resources resources = context.getResources();
        intent.setFlags(335544320);
        PendingIntent activity = PendingIntent.getActivity(context, (int) SystemClock.uptimeMillis(), intent, 134217728);
        notificationManager.notify(1, new NotificationCompat.Builder(context).setSmallIcon(R.drawable.icon).setContentText(str2).setContentTitle(str).setAutoCancel(true).setContentIntent(activity).setChannelId("channel_1").setLargeIcon(BitmapFactory.decodeResource(resources, R.drawable.icon)).build());
        c(context);
    }

    public static void c(Context context) {
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(805306394, "");
        newWakeLock.setReferenceCounted(false);
        newWakeLock.acquire();
        if (newWakeLock.isHeld()) {
            try {
                newWakeLock.release();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static String d(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Bundle bundle = applicationInfo != null ? applicationInfo.metaData : null;
            if (bundle != null) {
                String string = bundle.getString("JPUSH_APPKEY");
                if (string != null) {
                    try {
                        if (string.length() != 24) {
                            return null;
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                    return string;
                }
                return null;
            }
            return null;
        } catch (PackageManager.NameNotFoundException unused2) {
            return null;
        }
    }

    public static boolean e(String str) {
        return str == null || str.length() == 0 || str.trim().length() == 0;
    }

    public static boolean f(String str) {
        return Pattern.compile("^[一-龥0-9a-zA-Z_-]{0,}$").matcher(str).matches();
    }

    public static void g(Context context, String str) {
        context.getPackageManager();
        new Intent("android.intent.action.MAIN");
        context.startActivity(context.getPackageManager().getLaunchIntentForPackage(str));
    }

    public static void h(JPushRecordTable jPushRecordTable) {
        List<JPushRecordTable> d4 = n1.z.n().d();
        if (d4 == null && d4.size() == 0) {
            JPushRecordTable jPushRecordTable2 = new JPushRecordTable();
            jPushRecordTable2.setContent(jPushRecordTable.getContent());
            jPushRecordTable2.setTitle(jPushRecordTable.getTitle());
            jPushRecordTable2.setPush_time(jPushRecordTable.getPush_time());
            jPushRecordTable2.setCreate_time(jPushRecordTable.getCreate_time());
            jPushRecordTable2.setRetention_time(jPushRecordTable.getRetention_time());
            jPushRecordTable2.setLink_type(jPushRecordTable.getLink_type());
            jPushRecordTable2.setCrc_link_type_val(jPushRecordTable.getCrc_link_type_val());
            n1.z.n().m(jPushRecordTable2);
            return;
        }
        for (JPushRecordTable jPushRecordTable3 : d4) {
            if (jPushRecordTable3.getContent().equals(jPushRecordTable.getContent())) {
                n1.z.n().delete((n1.z) jPushRecordTable3);
            }
        }
        JPushRecordTable jPushRecordTable4 = new JPushRecordTable();
        jPushRecordTable4.setContent(jPushRecordTable.getContent());
        jPushRecordTable4.setTitle(jPushRecordTable.getTitle());
        jPushRecordTable4.setPush_time(jPushRecordTable.getPush_time());
        jPushRecordTable4.setCreate_time(jPushRecordTable.getCreate_time());
        jPushRecordTable4.setRetention_time(jPushRecordTable.getRetention_time());
        jPushRecordTable4.setLink_type(jPushRecordTable.getLink_type());
        jPushRecordTable4.setCrc_link_type_val(jPushRecordTable.getCrc_link_type_val());
        n1.z.n().m(jPushRecordTable4);
    }

    public static void i(Context context) {
        List<JPushRecordTable> d4 = n1.z.n().d();
        long currentTimeMillis = System.currentTimeMillis();
        if (d4 == null || d4.size() <= 0) {
            return;
        }
        for (JPushRecordTable jPushRecordTable : d4) {
            if (currentTimeMillis > jPushRecordTable.getPush_time() && currentTimeMillis < jPushRecordTable.getPush_time() + jPushRecordTable.getRetention_time()) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setTpl_type(jPushRecordTable.getTpl_type() + "");
                intentDateBean.setLink_type_val(jPushRecordTable.getLink_type_val());
                intentDateBean.setLink_type(jPushRecordTable.getLink_type());
                intentDateBean.setCrc_link_type_val(jPushRecordTable.getCrc_link_type_val());
                intentDateBean.setJump_type(jPushRecordTable.getJump_type());
                a(context, intentDateBean, jPushRecordTable.getTitle(), jPushRecordTable.getContent());
                n1.z.n().delete((n1.z) jPushRecordTable);
            } else if (currentTimeMillis > jPushRecordTable.getPush_time() + jPushRecordTable.getRetention_time()) {
                n1.z.n().delete((n1.z) jPushRecordTable);
            }
        }
    }

    public static void j(Context context, int i2) {
    }

    private void k(Context context) {
    }

    public static void l(Context context) {
    }

    private void m() {
    }
}
