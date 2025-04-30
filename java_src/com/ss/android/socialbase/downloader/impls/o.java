package com.ss.android.socialbase.downloader.impls;

import android.app.Notification;
import android.os.IBinder;
import android.os.RemoteException;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.af;
import com.ss.android.socialbase.downloader.depend.ak;
import com.ss.android.socialbase.downloader.depend.z;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.downloader.IndependentProcessDownloadService;
import com.ss.android.socialbase.downloader.downloader.i;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.List;
/* compiled from: IndependentProcessDownloadHandler.java */
/* loaded from: classes4.dex */
public class o implements com.ss.android.socialbase.downloader.downloader.m, com.ss.android.socialbase.downloader.downloader.n {

    /* renamed from: a  reason: collision with root package name */
    private static final String f58392a = "o";

    /* renamed from: b  reason: collision with root package name */
    private volatile com.ss.android.socialbase.downloader.downloader.i f58393b;

    /* renamed from: c  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.downloader.o<IndependentProcessDownloadService> f58394c;

    /* renamed from: d  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.downloader.m f58395d = new p();

    public o() {
        com.ss.android.socialbase.downloader.downloader.o<IndependentProcessDownloadService> z3 = com.ss.android.socialbase.downloader.downloader.c.z();
        this.f58394c = z3;
        z3.a(this);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2) {
        if (this.f58393b == null) {
            return;
        }
        try {
            this.f58393b.a(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void b(DownloadInfo downloadInfo) {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean b(int i2) {
        if (this.f58393b == null) {
            return false;
        }
        try {
            return this.f58393b.b(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void c(int i2) {
        if (this.f58393b == null) {
            return;
        }
        try {
            this.f58393b.c(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void d(int i2) {
        if (this.f58393b == null) {
            return;
        }
        try {
            this.f58393b.d(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public long e(int i2) {
        if (this.f58393b == null) {
            return 0L;
        }
        try {
            return this.f58393b.e(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return 0L;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public int f(int i2) {
        if (this.f58393b == null) {
            return 0;
        }
        try {
            return this.f58393b.f(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean g(int i2) {
        if (this.f58393b == null) {
            return false;
        }
        try {
            return this.f58393b.g(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public DownloadInfo h(int i2) {
        if (this.f58393b == null) {
            return this.f58395d.h(i2);
        }
        try {
            return this.f58393b.h(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public List<com.ss.android.socialbase.downloader.model.b> i(int i2) {
        if (this.f58393b == null) {
            return this.f58395d.i(i2);
        }
        try {
            return this.f58393b.i(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void j(int i2) {
        if (this.f58393b == null) {
            this.f58395d.j(i2);
            return;
        }
        try {
            this.f58393b.j(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void k(int i2) {
        com.ss.android.socialbase.downloader.downloader.o<IndependentProcessDownloadService> oVar = this.f58394c;
        if (oVar != null) {
            oVar.a(i2);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean l(int i2) {
        if (this.f58393b == null) {
            return false;
        }
        try {
            return this.f58393b.k(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public int m(int i2) {
        if (this.f58393b == null) {
            return com.ss.android.socialbase.downloader.downloader.d.a().b(i2);
        }
        try {
            return this.f58393b.m(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return -1;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean n(int i2) {
        if (this.f58393b == null) {
            return this.f58395d.n(i2);
        }
        try {
            return this.f58393b.n(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void o(int i2) {
        if (this.f58393b == null) {
            this.f58395d.o(i2);
            return;
        }
        try {
            this.f58393b.o(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean p(int i2) {
        if (this.f58393b == null) {
            return this.f58395d.p(i2);
        }
        try {
            return this.f58393b.p(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public z q(int i2) {
        if (this.f58393b != null) {
            try {
                return com.ss.android.socialbase.downloader.i.g.a(this.f58393b.q(i2));
            } catch (RemoteException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public af r(int i2) {
        if (this.f58393b != null) {
            try {
                return com.ss.android.socialbase.downloader.i.g.a(this.f58393b.r(i2));
            } catch (RemoteException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public IDownloadFileUriProvider s(int i2) {
        if (this.f58393b != null) {
            try {
                return com.ss.android.socialbase.downloader.i.g.a(this.f58393b.s(i2));
            } catch (RemoteException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void startService() {
        com.ss.android.socialbase.downloader.downloader.o<IndependentProcessDownloadService> oVar = this.f58394c;
        if (oVar != null) {
            oVar.startService();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, boolean z3) {
        if (this.f58393b == null) {
            return;
        }
        try {
            this.f58393b.a(i2, z3);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public DownloadInfo b(String str, String str2) {
        return h(a(str, str2));
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public List<DownloadInfo> c(String str) {
        if (this.f58393b == null) {
            return this.f58395d.c(str);
        }
        try {
            return this.f58393b.c(str);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public List<DownloadInfo> d() {
        if (this.f58393b == null) {
            return this.f58395d.d();
        }
        try {
            return this.f58393b.b();
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public List<DownloadInfo> e(String str) {
        if (this.f58393b != null) {
            try {
                return this.f58393b.d(str);
            } catch (RemoteException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void f() {
        if (this.f58393b == null) {
            this.f58395d.f();
            return;
        }
        try {
            this.f58393b.e();
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean g() {
        return this.f58393b != null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.n
    public void h() {
        this.f58393b = null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public List<DownloadInfo> b(String str) {
        if (this.f58393b == null) {
            return this.f58395d.b(str);
        }
        try {
            return this.f58393b.b(str);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a() {
        if (this.f58393b == null) {
            return;
        }
        try {
            this.f58393b.a();
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean e() {
        if (this.f58393b == null) {
            return this.f58395d.e();
        }
        try {
            return this.f58393b.d();
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean c() {
        return com.ss.android.socialbase.downloader.downloader.c.O();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public List<DownloadInfo> d(String str) {
        if (this.f58393b == null) {
            return this.f58395d.d(str);
        }
        try {
            return this.f58393b.e(str);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void c(int i2, boolean z3) {
        if (this.f58393b == null) {
            return;
        }
        try {
            this.f58393b.d(i2, z3);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public List<DownloadInfo> a(String str) {
        if (this.f58393b == null) {
            return this.f58395d.a(str);
        }
        try {
            return this.f58393b.a(str);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void b(List<String> list) {
        if (this.f58393b == null) {
            this.f58395d.b(list);
            return;
        }
        try {
            this.f58393b.b(list);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean c(DownloadInfo downloadInfo) {
        if (this.f58393b == null) {
            return this.f58395d.c(downloadInfo);
        }
        try {
            return this.f58393b.b(downloadInfo);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public int a(String str, String str2) {
        return com.ss.android.socialbase.downloader.downloader.c.a(str, str2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void b(int i2, boolean z3) {
        if (this.f58393b == null) {
            this.f58395d.b(i2, z3);
            return;
        }
        try {
            this.f58393b.b(i2, z3);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(List<String> list) {
        if (this.f58393b == null) {
            this.f58395d.a(list);
            return;
        }
        try {
            this.f58393b.a(list);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void b(int i2, int i4, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.f fVar, boolean z3) {
        if (this.f58393b == null) {
            return;
        }
        try {
            this.f58393b.a(i2, i4, com.ss.android.socialbase.downloader.i.g.a(iDownloadListener, fVar != com.ss.android.socialbase.downloader.constants.f.SUB), fVar.ordinal(), z3);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, int i4, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.f fVar, boolean z3) {
        if (this.f58393b == null) {
            return;
        }
        try {
            this.f58393b.b(i2, i4, com.ss.android.socialbase.downloader.i.g.a(iDownloadListener, fVar != com.ss.android.socialbase.downloader.constants.f.SUB), fVar.ordinal(), z3);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean b() {
        if (this.f58393b == null) {
            com.ss.android.socialbase.downloader.c.a.d(f58392a, "isServiceForeground, aidlService is null");
            return false;
        }
        com.ss.android.socialbase.downloader.c.a.c(f58392a, "aidlService.isServiceForeground");
        try {
            return this.f58393b.f();
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, int i4, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.f fVar, boolean z3, boolean z4) {
        if (this.f58393b == null) {
            return;
        }
        try {
            this.f58393b.a(i2, i4, com.ss.android.socialbase.downloader.i.g.a(iDownloadListener, fVar != com.ss.android.socialbase.downloader.constants.f.SUB), fVar.ordinal(), z3, z4);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public boolean a(DownloadInfo downloadInfo) {
        if (this.f58393b == null) {
            return this.f58395d.a(downloadInfo);
        }
        try {
            this.f58393b.a(downloadInfo);
            return false;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void b(DownloadTask downloadTask) {
        com.ss.android.socialbase.downloader.downloader.o<IndependentProcessDownloadService> oVar;
        if (downloadTask == null || (oVar = this.f58394c) == null) {
            return;
        }
        oVar.c(downloadTask);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void b(int i2, List<com.ss.android.socialbase.downloader.model.b> list) {
        if (this.f58393b == null) {
            this.f58395d.b(i2, list);
            return;
        }
        try {
            this.f58393b.a(i2, list);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, Notification notification) {
        if (this.f58393b == null) {
            com.ss.android.socialbase.downloader.c.a.d(f58392a, "startForeground, aidlService is null");
            return;
        }
        String str = f58392a;
        com.ss.android.socialbase.downloader.c.a.c(str, "aidlService.startForeground, id = " + i2);
        try {
            this.f58393b.a(i2, notification);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(boolean z3, boolean z4) {
        if (this.f58393b == null) {
            com.ss.android.socialbase.downloader.c.a.d(f58392a, "stopForeground, aidlService is null");
            return;
        }
        com.ss.android.socialbase.downloader.c.a.c(f58392a, "aidlService.stopForeground");
        try {
            this.f58393b.a(z4);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(DownloadTask downloadTask) {
        com.ss.android.socialbase.downloader.downloader.o<IndependentProcessDownloadService> oVar;
        if (downloadTask == null || (oVar = this.f58394c) == null) {
            return;
        }
        oVar.b(downloadTask);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, List<com.ss.android.socialbase.downloader.model.b> list) {
        if (this.f58393b == null) {
            return;
        }
        try {
            this.f58393b.b(i2, list);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(com.ss.android.socialbase.downloader.model.b bVar) {
        if (this.f58393b == null) {
            this.f58395d.a(bVar);
            return;
        }
        try {
            this.f58393b.a(bVar);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, int i4, long j4) {
        if (this.f58393b == null) {
            this.f58395d.a(i2, i4, j4);
            return;
        }
        try {
            this.f58393b.a(i2, i4, j4);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, int i4, int i5, long j4) {
        if (this.f58393b == null) {
            this.f58395d.a(i2, i4, i5, j4);
            return;
        }
        try {
            this.f58393b.a(i2, i4, i5, j4);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, int i4, int i5, int i6) {
        if (this.f58393b == null) {
            this.f58395d.a(i2, i4, i5, i6);
            return;
        }
        try {
            this.f58393b.a(i2, i4, i5, i6);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(ak akVar) {
        if (this.f58393b != null) {
            try {
                this.f58393b.a(com.ss.android.socialbase.downloader.i.g.a(akVar));
            } catch (RemoteException e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, int i4) {
        if (this.f58393b != null) {
            try {
                this.f58393b.a(i2, i4);
            } catch (RemoteException e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, z zVar) {
        if (this.f58393b != null) {
            try {
                this.f58393b.a(i2, com.ss.android.socialbase.downloader.i.g.a(zVar));
            } catch (RemoteException e4) {
                e4.printStackTrace();
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.n
    public void a(IBinder iBinder) {
        this.f58393b = i.a.a(iBinder);
        if (com.ss.android.socialbase.downloader.i.f.a()) {
            a(new ak() { // from class: com.ss.android.socialbase.downloader.impls.o.1
                @Override // com.ss.android.socialbase.downloader.depend.ak
                public void a(int i2, int i4) {
                    if (i4 != 1) {
                        if (i4 == 2) {
                            Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).cancel(i2);
                            return;
                        }
                        return;
                    }
                    Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).pause(i2);
                    List<com.ss.android.socialbase.downloader.model.b> i5 = l.a(false).i(i2);
                    if (i5 != null) {
                        l.a(true).a(i2, com.ss.android.socialbase.downloader.i.f.a(i5));
                    }
                }
            });
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.m
    public void a(int i2, long j4) {
        if (this.f58393b == null) {
            return;
        }
        try {
            this.f58393b.a(i2, j4);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }
}
