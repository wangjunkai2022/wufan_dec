package com.join.mgps.business;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.dto.AppBean;
/* loaded from: classes3.dex */
public class AppBeanBusiness extends AppBean {

    /* renamed from: a  reason: collision with root package name */
    private DownloadTask f44793a;

    public AppBeanBusiness(DownloadTask downloadTask) {
        this.f44793a = downloadTask;
    }

    @Override // com.join.mgps.dto.AppBean
    public DownloadTask getDownloadTask() {
        return this.f44793a;
    }

    @Override // com.join.mgps.dto.AppBean
    public void setDownloadTask(DownloadTask downloadTask) {
        this.f44793a = downloadTask;
    }
}
