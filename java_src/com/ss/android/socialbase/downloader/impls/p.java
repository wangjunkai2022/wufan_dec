package com.ss.android.socialbase.downloader.impls;

import android.app.Notification;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.af;
import com.ss.android.socialbase.downloader.depend.ak;
import com.ss.android.socialbase.downloader.depend.z;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.List;
/* compiled from: ProcessDownloadHandler.java */
/* loaded from: classes4.dex */
public class p implements com.ss.android.socialbase.downloader.downloader.m {

    /* renamed from: a  reason: collision with root package name */
    private final a f58397a;

    /* renamed from: b  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.downloader.j f58398b;

    /* renamed from: c  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.downloader.o f58399c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f58400d;

    public p() {
        this(false);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2) {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.e(i2);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean b(int i2) {
        a aVar = this.f58397a;
        if (aVar != null) {
            return aVar.n(i2);
        }
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void c(int i2) {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.f(i2);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void d(int i2) {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.g(i2);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public long e(int i2) {
        DownloadInfo b4;
        com.ss.android.socialbase.downloader.downloader.j jVar = this.f58398b;
        if (jVar == null || (b4 = jVar.b(i2)) == null) {
            return 0L;
        }
        int chunkCount = b4.getChunkCount();
        if (chunkCount <= 1) {
            return b4.getCurBytes();
        }
        List<com.ss.android.socialbase.downloader.model.b> c4 = this.f58398b.c(i2);
        if (c4 == null || c4.size() != chunkCount) {
            return 0L;
        }
        return com.ss.android.socialbase.downloader.i.f.b(c4);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public int f(int i2) {
        DownloadInfo d4;
        a aVar = this.f58397a;
        if (aVar == null || (d4 = aVar.d(i2)) == null) {
            return 0;
        }
        return d4.getStatus();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean g(int i2) {
        a aVar = this.f58397a;
        if (aVar != null) {
            return aVar.a(i2);
        }
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public DownloadInfo h(int i2) {
        a aVar = this.f58397a;
        if (aVar != null) {
            return aVar.d(i2);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public List<com.ss.android.socialbase.downloader.model.b> i(int i2) {
        return this.f58398b.c(i2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void j(int i2) {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.m(i2);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void k(int i2) {
        com.ss.android.socialbase.downloader.c.a.a(i2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean l(int i2) {
        a aVar = this.f58397a;
        if (aVar != null) {
            return aVar.k(i2);
        }
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public int m(int i2) {
        return com.ss.android.socialbase.downloader.downloader.d.a().a(i2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean n(int i2) {
        return this.f58398b.e(i2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void o(int i2) {
        this.f58398b.d(i2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean p(int i2) {
        return this.f58398b.f(i2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public z q(int i2) {
        a aVar = this.f58397a;
        if (aVar != null) {
            return aVar.i(i2);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public af r(int i2) {
        a aVar = this.f58397a;
        af h4 = aVar != null ? aVar.h(i2) : null;
        return h4 == null ? com.ss.android.socialbase.downloader.downloader.c.J() : h4;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public IDownloadFileUriProvider s(int i2) {
        a aVar = this.f58397a;
        if (aVar != null) {
            return aVar.j(i2);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void startService() {
    }

    public p(boolean z3) {
        this.f58397a = com.ss.android.socialbase.downloader.downloader.c.C();
        this.f58398b = com.ss.android.socialbase.downloader.downloader.c.x();
        if (!z3) {
            this.f58399c = com.ss.android.socialbase.downloader.downloader.c.y();
        } else {
            this.f58399c = com.ss.android.socialbase.downloader.downloader.c.z();
        }
        this.f58400d = com.ss.android.socialbase.downloader.g.a.c().b("service_alive", false);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, boolean z3) {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.a(i2, z3);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public List<DownloadInfo> b(String str) {
        com.ss.android.socialbase.downloader.downloader.j jVar = this.f58398b;
        if (jVar != null) {
            return jVar.b(str);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public List<DownloadInfo> c(String str) {
        com.ss.android.socialbase.downloader.downloader.j jVar = this.f58398b;
        if (jVar != null) {
            return jVar.c(str);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public List<DownloadInfo> d() {
        com.ss.android.socialbase.downloader.downloader.j jVar = this.f58398b;
        if (jVar != null) {
            return jVar.b();
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean g() {
        com.ss.android.socialbase.downloader.downloader.o oVar;
        return this.f58400d && (oVar = this.f58399c) != null && oVar.a();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void f() {
        this.f58398b.c();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a() {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void b(List<String> list) {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.b(list);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean c() {
        return com.ss.android.socialbase.downloader.downloader.c.O();
    }

    public void d(int i2, boolean z3) {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.c(i2, z3);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void c(int i2, boolean z3) {
        com.ss.android.socialbase.downloader.downloader.d.a().a(i2, z3);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(List<String> list) {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.a(list);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public DownloadInfo b(String str, String str2) {
        return h(com.ss.android.socialbase.downloader.downloader.c.a(str, str2));
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean c(DownloadInfo downloadInfo) {
        return this.f58398b.a(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public List<DownloadInfo> d(String str) {
        com.ss.android.socialbase.downloader.downloader.j jVar = this.f58398b;
        if (jVar != null) {
            return jVar.d(str);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public List<DownloadInfo> e(String str) {
        a aVar = this.f58397a;
        if (aVar != null) {
            return aVar.b(str);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public List<DownloadInfo> a(String str) {
        a aVar = this.f58397a;
        if (aVar != null) {
            return aVar.a(str);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void b(int i2, boolean z3) {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.b(i2, z3);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean e() {
        return this.f58398b.d();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public int a(String str, String str2) {
        return com.ss.android.socialbase.downloader.downloader.c.a(str, str2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void b(int i2, int i4, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.f fVar, boolean z3) {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.a(i2, i4, iDownloadListener, fVar, z3);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, int i4, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.f fVar, boolean z3) {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.b(i2, i4, iDownloadListener, fVar, z3);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean b() {
        com.ss.android.socialbase.downloader.downloader.o oVar = this.f58399c;
        if (oVar != null) {
            return oVar.b();
        }
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, int i4, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.f fVar, boolean z3, boolean z4) {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.a(i2, i4, iDownloadListener, fVar, z3, z4);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void b(DownloadTask downloadTask) {
        com.ss.android.socialbase.downloader.downloader.o oVar = this.f58399c;
        if (oVar != null) {
            oVar.c(downloadTask);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean a(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return false;
        }
        boolean a4 = com.ss.android.socialbase.downloader.i.f.a(downloadInfo.getStatus(), downloadInfo.getSavePath(), downloadInfo.getName());
        if (a4) {
            if (com.ss.android.socialbase.downloader.i.a.a(33554432)) {
                b(downloadInfo.getId(), true);
            } else {
                d(downloadInfo.getId(), true);
            }
        }
        return a4;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void b(DownloadInfo downloadInfo) {
        this.f58398b.b(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void b(int i2, List<com.ss.android.socialbase.downloader.model.b> list) {
        this.f58398b.b(i2, list);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, Notification notification) {
        com.ss.android.socialbase.downloader.downloader.o oVar = this.f58399c;
        if (oVar != null) {
            oVar.a(i2, notification);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(boolean z3, boolean z4) {
        com.ss.android.socialbase.downloader.downloader.o oVar = this.f58399c;
        if (oVar != null) {
            oVar.a(z4);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(DownloadTask downloadTask) {
        com.ss.android.socialbase.downloader.downloader.o oVar = this.f58399c;
        if (oVar != null) {
            oVar.b(downloadTask);
        } else if (downloadTask != null) {
            com.ss.android.socialbase.downloader.d.a.a(downloadTask.getMonitorDepend(), downloadTask.getDownloadInfo(), new BaseException(1003, "downloadServiceHandler is null"), downloadTask.getDownloadInfo() != null ? downloadTask.getDownloadInfo().getStatus() : 0);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, List<com.ss.android.socialbase.downloader.model.b> list) {
        this.f58398b.a(i2, list);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(com.ss.android.socialbase.downloader.model.b bVar) {
        this.f58398b.a(bVar);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, int i4, long j4) {
        this.f58398b.a(i2, i4, j4);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, int i4, int i5, long j4) {
        this.f58398b.a(i2, i4, i5, j4);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, int i4, int i5, int i6) {
        this.f58398b.a(i2, i4, i5, i6);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(ak akVar) {
        com.ss.android.socialbase.downloader.downloader.c.a(akVar);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, int i4) {
        if (com.ss.android.socialbase.downloader.downloader.c.e() != null) {
            for (ak akVar : com.ss.android.socialbase.downloader.downloader.c.e()) {
                if (akVar != null) {
                    akVar.a(i4, i2);
                }
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, z zVar) {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.a(i2, zVar);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, long j4) {
        a aVar = this.f58397a;
        if (aVar != null) {
            aVar.b(i2, j4);
        }
    }
}
