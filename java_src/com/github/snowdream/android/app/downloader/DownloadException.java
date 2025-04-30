package com.github.snowdream.android.app.downloader;
/* loaded from: classes2.dex */
public class DownloadException extends Exception {

    /* renamed from: b  reason: collision with root package name */
    public static final long f13905b = 2;

    /* renamed from: c  reason: collision with root package name */
    public static final long f13906c = 11;

    /* renamed from: d  reason: collision with root package name */
    public static final long f13907d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final long f13908e = 10;

    /* renamed from: f  reason: collision with root package name */
    public static final long f13909f = 0;
    private static final long serialVersionUID = -3804737584048978515L;

    /* renamed from: a  reason: collision with root package name */
    private long f13910a;

    public DownloadException() {
        super(a(0L));
        this.f13910a = 0L;
        this.f13910a = 0L;
    }

    private static String a(long j4) {
        return j4 == 1 ? "The DownloadTask is null or not valid!" : j4 == 1 ? "The Context is null or not valid!" : j4 == 1 ? "The operation is not allowed!" : j4 == 1 ? "The Download Task is failed!" : j4 == 1 ? "Unknown Error!" : "";
    }

    public long b() {
        return this.f13910a;
    }

    public void c(long j4) {
        this.f13910a = j4;
    }

    public DownloadException(long j4) {
        super(a(j4));
        this.f13910a = 0L;
        this.f13910a = j4;
    }

    public DownloadException(String str) {
        super(str);
        this.f13910a = 0L;
        this.f13910a = 0L;
    }

    public DownloadException(long j4, String str) {
        super(str);
        this.f13910a = 0L;
        this.f13910a = j4;
    }
}
