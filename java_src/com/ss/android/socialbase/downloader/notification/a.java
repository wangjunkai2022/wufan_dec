package com.ss.android.socialbase.downloader.notification;

import android.app.Notification;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
/* compiled from: AbsNotificationItem.java */
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected Notification f58584a;

    /* renamed from: b  reason: collision with root package name */
    private int f58585b;

    /* renamed from: c  reason: collision with root package name */
    private long f58586c;

    /* renamed from: d  reason: collision with root package name */
    private long f58587d;

    /* renamed from: e  reason: collision with root package name */
    private String f58588e;

    /* renamed from: f  reason: collision with root package name */
    private int f58589f = 0;

    /* renamed from: g  reason: collision with root package name */
    private long f58590g;

    /* renamed from: h  reason: collision with root package name */
    private int f58591h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f58592i;

    public a(int i2, String str) {
        this.f58585b = i2;
        this.f58588e = str;
    }

    public abstract void a(BaseException baseException, boolean z3);

    public void a(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        this.f58585b = downloadInfo.getId();
        this.f58588e = downloadInfo.getTitle();
    }

    public long b() {
        return this.f58586c;
    }

    public long c() {
        return this.f58587d;
    }

    public String d() {
        return this.f58588e;
    }

    public int e() {
        return this.f58589f;
    }

    public long f() {
        if (this.f58590g == 0) {
            this.f58590g = System.currentTimeMillis();
        }
        return this.f58590g;
    }

    public synchronized void g() {
        this.f58591h++;
    }

    public int h() {
        return this.f58591h;
    }

    public boolean i() {
        return this.f58592i;
    }

    public void b(long j4) {
        this.f58587d = j4;
    }

    public int a() {
        return this.f58585b;
    }

    public void a(long j4) {
        this.f58586c = j4;
    }

    public void a(int i2, BaseException baseException, boolean z3) {
        a(i2, baseException, z3, false);
    }

    public void a(int i2, BaseException baseException, boolean z3, boolean z4) {
        if (z4 || this.f58589f != i2) {
            this.f58589f = i2;
            a(baseException, z3);
        }
    }

    public void a(long j4, long j5) {
        this.f58586c = j4;
        this.f58587d = j5;
        this.f58589f = 4;
        a((BaseException) null, false);
    }

    public void a(Notification notification) {
        if (this.f58585b == 0 || notification == null) {
            return;
        }
        b.a().a(this.f58585b, this.f58589f, notification);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z3) {
        this.f58592i = z3;
    }
}
