package com.ss.android.socialbase.downloader.f;

import androidx.annotation.NonNull;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SegmentOutput.java */
/* loaded from: classes4.dex */
public class l implements e {

    /* renamed from: a  reason: collision with root package name */
    private final i f58134a;

    /* renamed from: b  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.model.e f58135b;

    /* renamed from: c  reason: collision with root package name */
    private final e f58136c;

    public l(DownloadInfo downloadInfo, b bVar, i iVar) throws BaseException {
        this.f58134a = iVar;
        this.f58135b = a(downloadInfo, iVar);
        this.f58136c = new h(bVar, this);
    }

    public e a() {
        return this.f58136c;
    }

    @Override // com.ss.android.socialbase.downloader.f.e
    public void b(@NonNull a aVar) throws IOException {
        this.f58135b.a(aVar.f58060a, 0, aVar.f58062c);
        this.f58134a.b(aVar.f58062c);
    }

    public void c() throws IOException {
        this.f58135b.c();
    }

    public void d() {
        com.ss.android.socialbase.downloader.i.f.a(this.f58135b);
    }

    public i e() {
        return this.f58134a;
    }

    private com.ss.android.socialbase.downloader.model.e a(DownloadInfo downloadInfo, i iVar) throws BaseException {
        com.ss.android.socialbase.downloader.model.e a4 = com.ss.android.socialbase.downloader.i.f.a(downloadInfo, downloadInfo.getTempPath(), downloadInfo.getTempName(), com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("flush_buffer_size_byte", -1));
        try {
            a4.a(iVar.e());
            return a4;
        } catch (IOException e4) {
            throw new BaseException(1054, e4);
        }
    }

    public void b() throws IOException {
        this.f58135b.b();
    }
}
