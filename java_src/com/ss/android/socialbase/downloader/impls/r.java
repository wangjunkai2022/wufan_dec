package com.ss.android.socialbase.downloader.impls;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.a.a;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.Collections;
import org.json.JSONObject;
/* compiled from: RetryScheduler.java */
/* loaded from: classes4.dex */
public class r implements Handler.Callback, a.InterfaceC0308a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile r f58402a;

    /* renamed from: i  reason: collision with root package name */
    private static b f58403i;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f58407e;

    /* renamed from: f  reason: collision with root package name */
    private long f58408f;

    /* renamed from: h  reason: collision with root package name */
    private ConnectivityManager f58410h;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f58405c = new Handler(Looper.getMainLooper(), this);

    /* renamed from: d  reason: collision with root package name */
    private final SparseArray<a> f58406d = new SparseArray<>();

    /* renamed from: g  reason: collision with root package name */
    private int f58409g = 0;

    /* renamed from: b  reason: collision with root package name */
    private final Context f58404b = com.ss.android.socialbase.downloader.downloader.c.N();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RetryScheduler.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final int f58418a;

        /* renamed from: b  reason: collision with root package name */
        final int f58419b;

        /* renamed from: c  reason: collision with root package name */
        final int f58420c;

        /* renamed from: d  reason: collision with root package name */
        final int f58421d;

        /* renamed from: e  reason: collision with root package name */
        final int f58422e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f58423f;

        /* renamed from: g  reason: collision with root package name */
        final int[] f58424g;

        /* renamed from: h  reason: collision with root package name */
        private int f58425h;

        /* renamed from: i  reason: collision with root package name */
        private int f58426i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f58427j;

        /* renamed from: k  reason: collision with root package name */
        private long f58428k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f58429l;

        a(int i2, int i4, int i5, int i6, int i7, boolean z3, int[] iArr) {
            i6 = i6 < 3000 ? 3000 : i6;
            i7 = i7 < 5000 ? 5000 : i7;
            this.f58418a = i2;
            this.f58419b = i4;
            this.f58420c = i5;
            this.f58421d = i6;
            this.f58422e = i7;
            this.f58423f = z3;
            this.f58424g = iArr;
            this.f58425h = i6;
        }

        void c() {
            this.f58425h = this.f58421d;
        }

        int d() {
            return this.f58425h;
        }

        boolean a(long j4, int i2, int i4, boolean z3) {
            if (!this.f58429l) {
                com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", "canRetry: mIsWaitingRetry is false, return false!!!");
                return false;
            } else if (this.f58419b >= i2 && this.f58426i < this.f58420c) {
                if (!this.f58427j || i4 == 2) {
                    return z3 || j4 - this.f58428k >= ((long) this.f58421d);
                }
                return false;
            } else {
                return false;
            }
        }

        synchronized void b() {
            this.f58426i++;
        }

        synchronized void a() {
            this.f58425h += this.f58422e;
        }

        synchronized void a(long j4) {
            this.f58428k = j4;
        }
    }

    /* compiled from: RetryScheduler.java */
    /* loaded from: classes4.dex */
    public interface b {
        void a(DownloadInfo downloadInfo, long j4, boolean z3, int i2);
    }

    private r() {
        f();
        this.f58407e = com.ss.android.socialbase.downloader.i.f.c();
        com.ss.android.socialbase.downloader.a.a.a().a(this);
    }

    private void f() {
        if (com.ss.android.socialbase.downloader.g.a.c().a("use_network_callback", 0) != 1) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.c.l().execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.r.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (r.this.f58404b == null || Build.VERSION.SDK_INT < 21) {
                        return;
                    }
                    r rVar = r.this;
                    rVar.f58410h = (ConnectivityManager) rVar.f58404b.getApplicationContext().getSystemService("connectivity");
                    r.this.f58410h.registerNetworkCallback(new NetworkRequest.Builder().build(), new ConnectivityManager.NetworkCallback() { // from class: com.ss.android.socialbase.downloader.impls.r.1.1
                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public void onAvailable(Network network) {
                            com.ss.android.socialbase.downloader.c.a.b("RetryScheduler", "network onAvailable: ");
                            r.this.a(1, true);
                        }
                    });
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int g() {
        try {
            if (this.f58410h == null) {
                this.f58410h = (ConnectivityManager) this.f58404b.getApplicationContext().getSystemService("connectivity");
            }
            NetworkInfo activeNetworkInfo = this.f58410h.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return activeNetworkInfo.getType() == 1 ? 2 : 1;
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            b(message.arg1, message.arg2 == 1);
        } else {
            com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", "handleMessage, doSchedulerRetry, id = " + message.what);
            a(message.what);
        }
        return true;
    }

    private void b(final int i2, final boolean z3) {
        com.ss.android.socialbase.downloader.downloader.c.l().execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.r.2
            @Override // java.lang.Runnable
            public void run() {
                int g4;
                try {
                    if (r.this.f58409g > 0 && (g4 = r.this.g()) != 0) {
                        com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", "doScheduleAllTaskRetry: mWaitingRetryTasksCount = " + r.this.f58409g);
                        long currentTimeMillis = System.currentTimeMillis();
                        ArrayList<a> arrayList = new ArrayList();
                        synchronized (r.this.f58406d) {
                            for (int i4 = 0; i4 < r.this.f58406d.size(); i4++) {
                                a aVar = (a) r.this.f58406d.valueAt(i4);
                                if (aVar != null && aVar.a(currentTimeMillis, i2, g4, z3)) {
                                    if (z3) {
                                        aVar.c();
                                    }
                                    arrayList.add(aVar);
                                }
                            }
                        }
                        if (arrayList.size() > 0) {
                            for (a aVar2 : arrayList) {
                                r.this.a(aVar2.f58418a, g4, false);
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    private void c(int i2) {
        synchronized (this.f58406d) {
            this.f58406d.remove(i2);
        }
    }

    private a d(int i2) {
        int[] iArr;
        int i4;
        int i5;
        boolean z3;
        com.ss.android.socialbase.downloader.g.a a4 = com.ss.android.socialbase.downloader.g.a.a(i2);
        boolean z4 = false;
        int a5 = a4.a("retry_schedule", 0);
        JSONObject d4 = a4.d("retry_schedule_config");
        int i6 = 60;
        if (d4 != null) {
            int optInt = d4.optInt("max_count", 60);
            int optInt2 = d4.optInt("interval_sec", 60);
            int optInt3 = d4.optInt("interval_sec_acceleration", 60);
            if (Build.VERSION.SDK_INT >= 21 && f58403i != null && d4.optInt("use_job_scheduler", 0) == 1) {
                z4 = true;
            }
            iArr = a(d4.optString("allow_error_code"));
            i4 = optInt3;
            z3 = z4;
            i5 = optInt;
            i6 = optInt2;
        } else {
            iArr = null;
            i4 = 60;
            i5 = 60;
            z3 = false;
        }
        return new a(i2, a5, i5, i6 * 1000, i4 * 1000, z3, iArr);
    }

    public void e() {
        a(5, false);
    }

    private a b(int i2) {
        a aVar = this.f58406d.get(i2);
        if (aVar == null) {
            synchronized (this.f58406d) {
                aVar = this.f58406d.get(i2);
                if (aVar == null) {
                    aVar = d(i2);
                }
                this.f58406d.put(i2, aVar);
            }
        }
        return aVar;
    }

    public static r a() {
        if (f58402a == null) {
            synchronized (r.class) {
                if (f58402a == null) {
                    f58402a = new r();
                }
            }
        }
        return f58402a;
    }

    @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0308a
    public void c() {
        a(3, false);
    }

    @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0308a
    public void b() {
        a(4, false);
    }

    public static void a(b bVar) {
        f58403i = bVar;
    }

    public void a(DownloadInfo downloadInfo) {
        if (downloadInfo == null || TextUtils.isEmpty(com.ss.android.socialbase.downloader.constants.e.f57871a) || !com.ss.android.socialbase.downloader.constants.e.f57871a.equals(downloadInfo.getMimeType())) {
            return;
        }
        a(downloadInfo, downloadInfo.isOnlyWifi() || downloadInfo.isPauseReserveOnWifi(), g());
    }

    public void d() {
        a(2, true);
    }

    private void a(DownloadInfo downloadInfo, boolean z3, int i2) {
        BaseException failedException = downloadInfo.getFailedException();
        if (failedException == null) {
            return;
        }
        a b4 = b(downloadInfo.getId());
        if (b4.f58426i > b4.f58420c) {
            com.ss.android.socialbase.downloader.c.a.d("RetryScheduler", "tryStartScheduleRetry, id = " + b4.f58418a + ", mRetryCount = " + b4.f58426i + ", maxCount = " + b4.f58420c);
            return;
        }
        int errorCode = failedException.getErrorCode();
        if (!com.ss.android.socialbase.downloader.i.f.h(failedException) && !com.ss.android.socialbase.downloader.i.f.i(failedException) && (!downloadInfo.statusInPause() || !downloadInfo.isPauseReserveOnWifi())) {
            if (!a(b4, errorCode)) {
                return;
            }
            com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", "allow error code, id = " + b4.f58418a + ", error code = " + errorCode);
        }
        b4.f58427j = z3;
        synchronized (this.f58406d) {
            if (!b4.f58429l) {
                b4.f58429l = true;
                this.f58409g++;
            }
        }
        int d4 = b4.d();
        com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", "tryStartScheduleRetry: id = " + b4.f58418a + ", delayTimeMills = " + d4 + ", mWaitingRetryTasks = " + this.f58409g);
        if (!b4.f58423f) {
            if (z3) {
                return;
            }
            this.f58405c.removeMessages(downloadInfo.getId());
            this.f58405c.sendEmptyMessageDelayed(downloadInfo.getId(), d4);
            return;
        }
        if (i2 == 0) {
            b4.c();
        }
        b bVar = f58403i;
        if (bVar != null) {
            bVar.a(downloadInfo, d4, z3, i2);
        }
        if (this.f58407e) {
            b4.a(System.currentTimeMillis());
            b4.b();
            b4.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, boolean z3) {
        if (this.f58409g <= 0) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            if (!z3) {
                if (currentTimeMillis - this.f58408f < com.join.mgps.data.c.f47286a) {
                    return;
                }
            }
            this.f58408f = currentTimeMillis;
            com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", "scheduleAllTaskRetry, level = [" + i2 + "], force = [" + z3 + "]");
            if (z3) {
                this.f58405c.removeMessages(0);
            }
            Message obtain = Message.obtain();
            obtain.what = 0;
            obtain.arg1 = i2;
            obtain.arg2 = z3 ? 1 : 0;
            this.f58405c.sendMessageDelayed(obtain, 2000L);
        }
    }

    public void a(final int i2) {
        com.ss.android.socialbase.downloader.downloader.c.l().execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.r.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    r rVar = r.this;
                    rVar.a(i2, rVar.g(), true);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i4, boolean z3) {
        com.ss.android.socialbase.downloader.downloader.r reserveWifiStatusListener;
        boolean z4;
        Context context = this.f58404b;
        if (context == null) {
            return;
        }
        synchronized (this.f58406d) {
            a aVar = this.f58406d.get(i2);
            if (aVar == null) {
                return;
            }
            boolean z5 = true;
            if (aVar.f58429l) {
                aVar.f58429l = false;
                int i5 = this.f58409g - 1;
                this.f58409g = i5;
                if (i5 < 0) {
                    this.f58409g = 0;
                }
            }
            com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", "doSchedulerRetryInSubThread: downloadId = " + i2 + ", retryCount = " + aVar.f58426i + ", mWaitingRetryTasksCount = " + this.f58409g);
            DownloadInfo downloadInfo = Downloader.getInstance(context).getDownloadInfo(i2);
            if (downloadInfo == null) {
                c(i2);
                return;
            }
            com.ss.android.socialbase.downloader.c.a.e("RetryScheduler", "doSchedulerRetryInSubThread，id:" + i2);
            int realStatus = downloadInfo.getRealStatus();
            if (realStatus != -3 && realStatus != -4) {
                if (realStatus == -5 || (realStatus == -2 && downloadInfo.isPauseReserveOnWifi())) {
                    if (realStatus == -2 && (reserveWifiStatusListener = Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).getReserveWifiStatusListener()) != null) {
                        reserveWifiStatusListener.a(downloadInfo, 4, 3);
                    }
                    com.ss.android.socialbase.downloader.downloader.l w3 = com.ss.android.socialbase.downloader.downloader.c.w();
                    if (w3 != null) {
                        w3.a(Collections.singletonList(downloadInfo), 3);
                    }
                    c(i2);
                    return;
                } else if (realStatus != -1) {
                    return;
                } else {
                    if (i4 != 0) {
                        z4 = true;
                    } else if (!aVar.f58423f) {
                        return;
                    } else {
                        z4 = false;
                    }
                    BaseException failedException = downloadInfo.getFailedException();
                    if (z4 && com.ss.android.socialbase.downloader.i.f.h(failedException)) {
                        z4 = a(downloadInfo, failedException);
                    }
                    aVar.b();
                    if (z4) {
                        com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", "doSchedulerRetry: restart task, ****** id = " + aVar.f58418a);
                        aVar.a(System.currentTimeMillis());
                        if (z3) {
                            aVar.a();
                        }
                        downloadInfo.setRetryScheduleCount(aVar.f58426i);
                        if (downloadInfo.getStatus() == -1) {
                            Downloader.getInstance(context).restart(downloadInfo.getId());
                            return;
                        }
                        return;
                    }
                    if (z3) {
                        aVar.a();
                    }
                    if (!downloadInfo.isOnlyWifi() && !downloadInfo.isPauseReserveOnWifi()) {
                        z5 = false;
                    }
                    a(downloadInfo, z5, i4);
                    return;
                }
            }
            c(i2);
        }
    }

    private boolean a(a aVar, int i2) {
        int[] iArr = aVar.f58424g;
        if (iArr != null && iArr.length != 0) {
            for (int i4 : iArr) {
                if (i4 == i2) {
                    return true;
                }
            }
        }
        return false;
    }

    private int[] a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String[] split = str.split(",");
            if (split.length <= 0) {
                return null;
            }
            int[] iArr = new int[split.length];
            for (int i2 = 0; i2 < split.length; i2++) {
                iArr[i2] = Integer.parseInt(split[i2]);
            }
            return iArr;
        } catch (Throwable unused) {
            return null;
        }
    }

    private boolean a(DownloadInfo downloadInfo, BaseException baseException) {
        long j4;
        long totalBytes;
        try {
            j4 = com.ss.android.socialbase.downloader.i.f.d(downloadInfo.getTempPath());
        } catch (BaseException e4) {
            e4.printStackTrace();
            j4 = 0;
        }
        if (baseException instanceof com.ss.android.socialbase.downloader.exception.d) {
            totalBytes = ((com.ss.android.socialbase.downloader.exception.d) baseException).b();
        } else {
            totalBytes = downloadInfo.getTotalBytes() - downloadInfo.getCurBytes();
        }
        if (j4 < totalBytes) {
            com.ss.android.socialbase.downloader.g.a a4 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId());
            if (a4.a("space_fill_part_download", 0) == 1) {
                if (j4 > 0) {
                    int a5 = a4.a("space_fill_min_keep_mb", 100);
                    if (a5 > 0) {
                        long j5 = j4 - (a5 * PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
                        com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", "retry schedule: available = " + com.ss.android.socialbase.downloader.i.f.a(j4) + "MB, minKeep = " + a5 + "MB, canDownload = " + com.ss.android.socialbase.downloader.i.f.a(j5) + "MB");
                        if (j5 <= 0) {
                            com.ss.android.socialbase.downloader.c.a.d("RetryScheduler", "doSchedulerRetryInSubThread: canDownload <= 0 , canRetry = false !!!!");
                            return false;
                        }
                    }
                } else if (a4.a("download_when_space_negative", 0) != 1) {
                }
            }
            return false;
        }
        return true;
    }
}
