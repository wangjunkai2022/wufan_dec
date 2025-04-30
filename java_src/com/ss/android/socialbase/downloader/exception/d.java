package com.ss.android.socialbase.downloader.exception;
/* compiled from: DownloadOutOfSpaceException.java */
/* loaded from: classes4.dex */
public class d extends BaseException {

    /* renamed from: a  reason: collision with root package name */
    private final long f58054a;

    /* renamed from: b  reason: collision with root package name */
    private final long f58055b;

    public d(long j4, long j5) {
        super(1006, String.format("space is not enough required space is : %s but available space is :%s", String.valueOf(j5), String.valueOf(j4)));
        this.f58054a = j4;
        this.f58055b = j5;
    }

    public long a() {
        return this.f58054a;
    }

    public long b() {
        return this.f58055b;
    }
}
