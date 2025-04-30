package com.join.mgps.business;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.dto.CollectionBeanSub;
/* loaded from: classes3.dex */
public class CollectionBeanSubBusiness extends CollectionBeanSub {

    /* renamed from: a  reason: collision with root package name */
    private DownloadTask f44794a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f44795b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f44796c;

    public CollectionBeanSubBusiness() {
    }

    public boolean a() {
        return this.f44796c;
    }

    public void b(boolean z3) {
        this.f44796c = z3;
    }

    public DownloadTask getDownloadTask() {
        return this.f44794a;
    }

    public boolean isHasExposure() {
        return this.f44795b;
    }

    public void setDownloadTask(DownloadTask downloadTask) {
        this.f44794a = downloadTask;
    }

    public void setHasExposure(boolean z3) {
        this.f44795b = z3;
    }

    public CollectionBeanSubBusiness(CollectionBeanSub collectionBeanSub) {
        super(collectionBeanSub);
        setPosition_path(collectionBeanSub.getPosition_path());
    }

    public CollectionBeanSubBusiness(DownloadTask downloadTask) {
        this.f44794a = downloadTask;
    }
}
