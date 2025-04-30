package com.ss.android.socialbase.appdownloader.e;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.socialbase.appdownloader.DownloadHandlerService;
import com.ss.android.socialbase.appdownloader.e;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
/* compiled from: AppNotificationItem.java */
/* loaded from: classes4.dex */
public class a extends com.ss.android.socialbase.downloader.notification.a {

    /* renamed from: b  reason: collision with root package name */
    private final Context f57632b;

    /* renamed from: c  reason: collision with root package name */
    private final Resources f57633c;

    /* renamed from: d  reason: collision with root package name */
    private String f57634d;

    /* renamed from: e  reason: collision with root package name */
    private String f57635e;

    /* renamed from: f  reason: collision with root package name */
    private String f57636f;

    public a(Context context, int i2, String str, String str2, String str3, String str4) {
        super(i2, str);
        this.f57635e = str2;
        this.f57634d = str3;
        this.f57636f = str4;
        Context applicationContext = context.getApplicationContext();
        this.f57632b = applicationContext;
        this.f57633c = applicationContext.getResources();
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x05ab  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x05b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.app.Notification b(com.ss.android.socialbase.downloader.exception.BaseException r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 1467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.appdownloader.e.a.b(com.ss.android.socialbase.downloader.exception.BaseException, boolean):android.app.Notification");
    }

    private RemoteViews j() {
        RemoteViews remoteViews = new RemoteViews(this.f57632b.getPackageName(), e.a());
        if (Build.VERSION.SDK_INT > 20) {
            try {
                if (com.ss.android.socialbase.appdownloader.c.a(this.f57632b)) {
                    remoteViews.setInt(e.f(), "setBackgroundColor", this.f57632b.getResources().getColor(e.r()));
                }
            } catch (Throwable unused) {
            }
        }
        return remoteViews;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0044 -> B:15:0x004b). Please submit an issue!!! */
    private NotificationCompat.Builder k() {
        NotificationCompat.Builder builder;
        String i2 = com.ss.android.socialbase.appdownloader.d.j().i();
        if (Build.VERSION.SDK_INT < 26) {
            return new NotificationCompat.Builder(this.f57632b);
        }
        if (TextUtils.isEmpty(i2)) {
            i2 = com.ss.android.socialbase.appdownloader.c.b(this.f57632b);
        }
        try {
            if (com.ss.android.socialbase.appdownloader.d.j().k() != null) {
                builder = com.ss.android.socialbase.appdownloader.d.j().k().a(this.f57632b, i2);
            } else {
                builder = new NotificationCompat.Builder(this.f57632b, i2);
            }
        } catch (NoSuchMethodError unused) {
            builder = new NotificationCompat.Builder(this.f57632b);
        }
        return builder;
    }

    @Override // com.ss.android.socialbase.downloader.notification.a
    public void a(DownloadInfo downloadInfo) {
        super.a(downloadInfo);
        this.f57635e = downloadInfo.getSavePath();
        this.f57634d = downloadInfo.getName();
        this.f57636f = downloadInfo.getExtra();
    }

    @Override // com.ss.android.socialbase.downloader.notification.a
    public void a(BaseException baseException, boolean z3) {
        if (this.f57632b == null) {
            return;
        }
        try {
            Notification b4 = b(baseException, z3);
            this.f58584a = b4;
            a(b4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private boolean a(BaseException baseException, com.ss.android.socialbase.downloader.g.a aVar, DownloadInfo downloadInfo) {
        return baseException != null && (baseException.getErrorCode() == 1013 || baseException.getErrorCode() == 1049) && downloadInfo != null && AdBaseConstants.MIME_APK.contains(downloadInfo.getMimeType()) && aVar.a("notification_text_opt", 0) == 1;
    }

    private int a(int i2, int i4) {
        if (com.ss.android.socialbase.downloader.g.a.a(i4).b("notification_opt_2") == 1) {
            return e.v();
        }
        if (i2 == 1 || i2 == 4) {
            return e.t();
        }
        if (i2 == 2) {
            return e.u();
        }
        if (i2 == 3) {
            return e.v();
        }
        return 0;
    }

    private PendingIntent a(String str, int i2, int i4) {
        Intent intent = new Intent(this.f57632b, DownloadHandlerService.class);
        intent.setAction(str);
        intent.putExtra("extra_click_download_ids", i4);
        intent.putExtra("extra_click_download_type", i2);
        intent.putExtra("extra_from_notification", true);
        return PendingIntent.getService(this.f57632b, i4, intent, 201326592);
    }

    private int a(int i2) {
        if (com.ss.android.socialbase.downloader.g.a.a(i2).b("enable_notification_ui") >= 1) {
            return e.h();
        }
        return e.g();
    }
}
