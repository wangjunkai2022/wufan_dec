package com.join.mgps.Util;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.SystemClock;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.MGMainActivity_;
/* compiled from: NotificationAdmain.java */
/* loaded from: classes3.dex */
public class g1 {

    /* renamed from: g  reason: collision with root package name */
    private static int f27570g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final int f27571h = 134217728;

    /* renamed from: a  reason: collision with root package name */
    private NotificationManager f27572a;

    /* renamed from: b  reason: collision with root package name */
    private Notification f27573b;

    /* renamed from: c  reason: collision with root package name */
    private NotificationCompat.Builder f27574c;

    /* renamed from: d  reason: collision with root package name */
    private Notification.Builder f27575d;

    /* renamed from: e  reason: collision with root package name */
    private Context f27576e;

    /* renamed from: f  reason: collision with root package name */
    int f27577f = (int) SystemClock.uptimeMillis();

    /* compiled from: NotificationAdmain.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i2 = 0; i2 <= 100; i2 += 10) {
                g1.this.f27574c.setProgress(100, i2, false);
                g1.this.g();
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
            }
            g1.this.f27574c.setContentText("下载完成~").setProgress(0, 0, false);
            g1.this.g();
        }
    }

    public g1(Context context, int i2) {
        f27570g = i2;
        this.f27576e = context;
        this.f27572a = (NotificationManager) context.getSystemService("notification");
        this.f27574c = new NotificationCompat.Builder(this.f27576e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        Notification build = this.f27574c.build();
        this.f27573b = build;
        this.f27572a.notify(f27570g, build);
    }

    private void h(Intent intent, int i2, String str) {
        this.f27575d = new Notification.Builder(this.f27576e);
        this.f27575d.setContentIntent(PendingIntent.getActivity(this.f27576e, this.f27577f, intent, f27571h));
        this.f27575d.setSmallIcon(i2);
        this.f27575d.setTicker(str);
        this.f27575d.setAutoCancel(true);
        this.f27575d.setWhen(System.currentTimeMillis());
        this.f27575d.setPriority(2);
        Notification.Builder builder = this.f27575d;
        builder.setSound(Uri.parse("android.resource://" + this.f27576e.getPackageName() + net.lingala.zip4j.util.e.F0 + R.raw.jiejitoubi));
    }

    private void i(Intent intent, int i2, String str, String str2, String str3) {
        intent.setFlags(335544320);
        this.f27574c.setContentIntent(PendingIntent.getActivity(this.f27576e, this.f27577f, intent, f27571h));
        this.f27574c.setSmallIcon(i2);
        this.f27574c.setTicker(str);
        this.f27574c.setContentTitle(str2);
        this.f27574c.setContentText(str3);
        this.f27574c.setWhen(System.currentTimeMillis());
        this.f27574c.setAutoCancel(true);
        this.f27574c.setPriority(2);
        if (f27570g == 1) {
            NotificationCompat.Builder builder = this.f27574c;
            builder.setSound(Uri.parse("android.resource://" + this.f27576e.getPackageName() + net.lingala.zip4j.util.e.F0 + R.raw.jiejitoubi));
        }
    }

    public void c() {
        this.f27572a.cancelAll();
    }

    public void d(Intent intent, int i2, String str, String str2, String str3) {
        i(intent, i2, str, str2, str3);
        g();
    }

    public void e(Intent intent, int i2, String str, String str2, int i4) {
        i(intent, i2, str, str2, null);
        NotificationCompat.BigPictureStyle bigPictureStyle = new NotificationCompat.BigPictureStyle();
        bigPictureStyle.bigPicture(BitmapFactory.decodeResource(this.f27576e.getResources(), i4));
        this.f27574c.setStyle(bigPictureStyle);
        g();
    }

    public void f(Intent intent, int i2, String str, String str2, String str3) {
        i(intent, i2, str, str2, str3);
        new Thread(new a()).start();
    }

    public void j(Intent intent, int i2, String str, int i4, String str2, String str3) {
        i(intent, i2, str, str2, str3);
        this.f27574c.setLargeIcon(BitmapFactory.decodeResource(this.f27576e.getResources(), i4));
        this.f27574c.setOngoing(true);
        Intent intent2 = new Intent(this.f27576e, MGMainActivity_.class);
        this.f27574c.setDeleteIntent(PendingIntent.getService(this.f27576e, (int) SystemClock.uptimeMillis(), intent2, f27571h));
        this.f27574c.setDefaults(5);
        this.f27574c.setVibrate(new long[]{0, 100, 200, 300});
        this.f27574c.setAutoCancel(true);
        this.f27574c.setNumber(3);
        this.f27574c.setStyle(new NotificationCompat.InboxStyle().addLine("M.Lynn 你好，我是kale").addLine("M.Lynn 已收到，保证完成任务").addLine("M.Lynn 哈哈，明白了~").setSummaryText("+3 more"));
        g();
    }

    public void k(RemoteViews remoteViews, Intent intent, int i2, String str) {
        i(intent, i2, str, null, null);
        Notification build = this.f27574c.build();
        this.f27573b = build;
        build.contentView = remoteViews;
        this.f27572a.notify(f27570g, build);
    }
}
