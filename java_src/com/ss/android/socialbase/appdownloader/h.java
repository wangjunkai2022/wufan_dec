package com.ss.android.socialbase.appdownloader;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.ss.android.socialbase.appdownloader.view.JumpUnknownSourceActivity;
import com.ss.android.socialbase.downloader.a.a;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.Queue;
/* compiled from: InstallQueue.java */
/* loaded from: classes4.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final Queue<Integer> f57728a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f57729b;

    /* renamed from: c  reason: collision with root package name */
    private long f57730c;

    /* renamed from: d  reason: collision with root package name */
    private long f57731d;

    /* renamed from: e  reason: collision with root package name */
    private SoftReference<JumpUnknownSourceActivity> f57732e;

    /* renamed from: f  reason: collision with root package name */
    private Handler f57733f;

    /* renamed from: g  reason: collision with root package name */
    private Runnable f57734g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: InstallQueue.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final h f57744a = new h();
    }

    private h() {
        this.f57728a = new ArrayDeque();
        this.f57729b = false;
        this.f57733f = new Handler(Looper.getMainLooper());
        this.f57734g = new Runnable() { // from class: com.ss.android.socialbase.appdownloader.h.1
            @Override // java.lang.Runnable
            public void run() {
                h.this.c();
            }
        };
        com.ss.android.socialbase.downloader.a.a.a().a(new a.InterfaceC0308a() { // from class: com.ss.android.socialbase.appdownloader.h.2
            @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0308a
            public void b() {
                if (h.this.f57728a.isEmpty()) {
                    return;
                }
                long a4 = com.ss.android.socialbase.downloader.g.a.c().a("install_on_resume_install_interval", 120000L);
                long currentTimeMillis = System.currentTimeMillis() - h.this.f57731d;
                if (currentTimeMillis < a4) {
                    if (h.this.f57733f.hasCallbacks(h.this.f57734g)) {
                        return;
                    }
                    h.this.f57733f.postDelayed(h.this.f57734g, a4 - currentTimeMillis);
                    return;
                }
                h.this.f57731d = System.currentTimeMillis();
                h.this.c();
            }

            @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0308a
            public void c() {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b(Context context, int i2, boolean z3) {
        int b4 = c.b(context, i2, z3);
        if (b4 == 1) {
            this.f57729b = true;
        }
        this.f57730c = System.currentTimeMillis();
        return b4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        final Integer poll;
        if (Build.VERSION.SDK_INT < 29 || com.ss.android.socialbase.downloader.a.a.a().b()) {
            synchronized (this.f57728a) {
                poll = this.f57728a.poll();
            }
            this.f57733f.removeCallbacks(this.f57734g);
            if (poll != null) {
                final Context N = com.ss.android.socialbase.downloader.downloader.c.N();
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    this.f57733f.post(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.h.3
                        @Override // java.lang.Runnable
                        public void run() {
                            h.this.b(N, poll.intValue(), false);
                        }
                    });
                } else {
                    b(N, poll.intValue(), false);
                }
                this.f57733f.postDelayed(this.f57734g, 20000L);
                return;
            }
            this.f57729b = false;
        }
    }

    private boolean d() {
        return System.currentTimeMillis() - this.f57730c < 1000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(DownloadInfo downloadInfo, String str) {
        if (downloadInfo == null || TextUtils.isEmpty(str)) {
            return;
        }
        c();
    }

    public JumpUnknownSourceActivity b() {
        SoftReference<JumpUnknownSourceActivity> softReference = this.f57732e;
        JumpUnknownSourceActivity jumpUnknownSourceActivity = softReference == null ? null : softReference.get();
        this.f57732e = null;
        return jumpUnknownSourceActivity;
    }

    public static h a() {
        return a.f57744a;
    }

    public int a(final Context context, final int i2, final boolean z3) {
        if (z3) {
            return b(context, i2, z3);
        }
        if (d()) {
            this.f57733f.postDelayed(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.h.4
                @Override // java.lang.Runnable
                public void run() {
                    h.this.a(context, i2, z3);
                }
            }, 1000L);
            return 1;
        } else if (com.ss.android.socialbase.downloader.a.a.a().b()) {
            com.ss.android.socialbase.downloader.c.a.c("leaves", "on Foreground");
            return b(context, i2, z3);
        } else if (b.a()) {
            return 1;
        } else {
            boolean z4 = Build.VERSION.SDK_INT < 29;
            if (this.f57728a.isEmpty() && !this.f57729b && z4) {
                return b(context, i2, z3);
            }
            int a4 = com.ss.android.socialbase.downloader.g.a.c().a("install_queue_size", 3);
            synchronized (this.f57728a) {
                while (this.f57728a.size() > a4) {
                    this.f57728a.poll();
                }
            }
            if (z4) {
                this.f57733f.removeCallbacks(this.f57734g);
                this.f57733f.postDelayed(this.f57734g, com.ss.android.socialbase.downloader.g.a.a(i2).a("install_queue_timeout", 20000L));
            }
            synchronized (this.f57728a) {
                if (!this.f57728a.contains(Integer.valueOf(i2))) {
                    this.f57728a.offer(Integer.valueOf(i2));
                }
            }
            return 1;
        }
    }

    public void a(JumpUnknownSourceActivity jumpUnknownSourceActivity) {
        this.f57732e = new SoftReference<>(jumpUnknownSourceActivity);
    }
}
