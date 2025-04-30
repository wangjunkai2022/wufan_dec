package com.ss.android.socialbase.downloader.depend;

import java.util.List;
/* compiled from: AbsDownloadForbiddenCallback.java */
/* loaded from: classes4.dex */
public abstract class b implements v {

    /* renamed from: a  reason: collision with root package name */
    private boolean f57906a = false;

    @Override // com.ss.android.socialbase.downloader.depend.v
    public void a(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f57906a = true;
    }

    @Override // com.ss.android.socialbase.downloader.depend.v
    public boolean a() {
        return this.f57906a;
    }
}
