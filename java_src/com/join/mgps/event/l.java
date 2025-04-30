package com.join.mgps.event;

import com.github.snowdream.android.app.downloader.DownloadTask;
/* compiled from: DownloadTaskEvent.java */
/* loaded from: classes4.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private DownloadTask f48181a;

    /* renamed from: b  reason: collision with root package name */
    private int f48182b;

    /* renamed from: c  reason: collision with root package name */
    private String f48183c;

    public l() {
        this.f48182b = 0;
    }

    public DownloadTask a() {
        return this.f48181a;
    }

    public String b() {
        return this.f48183c;
    }

    public int c() {
        return this.f48182b;
    }

    public void d(DownloadTask downloadTask) {
        this.f48181a = downloadTask;
    }

    public void e(String str) {
        this.f48183c = str;
    }

    public void f(int i2) {
        this.f48182b = i2;
    }

    public l(DownloadTask downloadTask, int i2) {
        this.f48182b = 0;
        this.f48181a = downloadTask;
        this.f48182b = i2;
    }

    public l(DownloadTask downloadTask, String str, int i2) {
        this.f48182b = 0;
        this.f48181a = downloadTask;
        this.f48182b = i2;
        this.f48183c = str;
    }
}
