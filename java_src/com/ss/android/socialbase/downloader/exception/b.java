package com.ss.android.socialbase.downloader.exception;
/* compiled from: DownloadHttpException.java */
/* loaded from: classes4.dex */
public class b extends BaseException {

    /* renamed from: a  reason: collision with root package name */
    private final int f58053a;

    public b(int i2, int i4, String str) {
        super(i2, str);
        this.f58053a = i4;
    }

    public int a() {
        return this.f58053a;
    }
}
