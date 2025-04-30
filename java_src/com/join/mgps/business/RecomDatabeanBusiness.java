package com.join.mgps.business;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.dto.RecomDatabean;
/* loaded from: classes3.dex */
public class RecomDatabeanBusiness extends RecomDatabean {

    /* renamed from: a  reason: collision with root package name */
    private DownloadTask f44797a;

    /* renamed from: b  reason: collision with root package name */
    private String f44798b;

    /* renamed from: c  reason: collision with root package name */
    private long f44799c;

    public RecomDatabeanBusiness(RecomDatabean recomDatabean) {
        super(recomDatabean);
    }

    public DownloadTask a() {
        return this.f44797a;
    }

    public String b() {
        return this.f44798b;
    }

    public long c() {
        return this.f44799c;
    }

    public void d(DownloadTask downloadTask) {
        this.f44797a = downloadTask;
    }

    public void e(String str) {
        this.f44798b = str;
    }

    public void f(long j4) {
        this.f44799c = j4;
    }
}
