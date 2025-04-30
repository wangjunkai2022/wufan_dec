package com.join.mgps.event;

import com.github.snowdream.android.app.downloader.DownloadTask;
/* compiled from: DownloadEvent.java */
/* loaded from: classes4.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private DownloadTask f48176a;

    /* renamed from: b  reason: collision with root package name */
    private int f48177b;

    public i(DownloadTask downloadTask, int i2) {
        this.f48176a = downloadTask;
        this.f48177b = i2;
    }

    public DownloadTask a() {
        return this.f48176a;
    }

    public void b(DownloadTask downloadTask) {
        this.f48176a = downloadTask;
    }

    public void c(int i2) {
        this.f48177b = i2;
    }

    public int getType() {
        return this.f48177b;
    }
}
