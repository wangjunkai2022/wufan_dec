package com.ss.android.socialbase.downloader.b;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.ss.android.socialbase.downloader.b.b;
import com.ss.android.socialbase.downloader.b.c;
import com.ss.android.socialbase.downloader.downloader.SqlDownloadCacheService;
import com.ss.android.socialbase.downloader.downloader.c;
import com.ss.android.socialbase.downloader.downloader.t;
import com.ss.android.socialbase.downloader.f.i;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import io.netty.handler.traffic.AbstractTrafficShapingHandler;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* compiled from: SqlDownloadCacheAidlWrapper.java */
/* loaded from: classes4.dex */
public class f implements ServiceConnection, t {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f57819b;

    /* renamed from: c  reason: collision with root package name */
    private static int f57820c;

    /* renamed from: d  reason: collision with root package name */
    private static long f57821d;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private c f57822a;

    /* renamed from: g  reason: collision with root package name */
    private c.a.InterfaceC0327a f57825g;

    /* renamed from: i  reason: collision with root package name */
    private Future<?> f57827i;

    /* renamed from: e  reason: collision with root package name */
    private Handler f57823e = new Handler(Looper.getMainLooper());

    /* renamed from: f  reason: collision with root package name */
    private b f57824f = null;

    /* renamed from: h  reason: collision with root package name */
    private Runnable f57826h = new Runnable() { // from class: com.ss.android.socialbase.downloader.b.f.1
        @Override // java.lang.Runnable
        public void run() {
            if (f.f57819b || f.this.f57825g == null) {
                return;
            }
            f.this.f57825g.a();
        }
    };

    /* renamed from: j  reason: collision with root package name */
    private CountDownLatch f57828j = new CountDownLatch(1);

    public f() {
        SqlDownloadCacheService.a(com.ss.android.socialbase.downloader.downloader.c.N(), this);
    }

    static /* synthetic */ c.a.InterfaceC0327a a(f fVar) {
        return fVar.f57825g;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    /* renamed from: a */
    public ArrayList<i> n(int i2) {
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean a(int i2, Map<Long, i> map) {
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo i(int i2) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.i(i2);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo j(int i2) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.j(i2);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public Map<Long, i> l(int i2) {
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void m(int i2) {
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        f57819b = true;
        this.f57823e.removeCallbacks(this.f57826h);
        try {
            this.f57822a = c.a.a(iBinder);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.f57827i = com.ss.android.socialbase.downloader.downloader.c.l().submit(new Runnable() { // from class: com.ss.android.socialbase.downloader.b.f.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (this) {
                    try {
                        if (f.this.f57824f != null && f.this.f57822a != null) {
                            f.this.f57822a.a(f.this.f57824f);
                        }
                        f.this.f57828j.countDown();
                        iBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.ss.android.socialbase.downloader.b.f.2.1
                            @Override // android.os.IBinder.DeathRecipient
                            public void binderDied() {
                                boolean unused = f.f57819b = false;
                                if (f.this.g() || f.this.f57825g == null) {
                                    return;
                                }
                                f.this.f57823e.postDelayed(f.this.f57826h, 2000L);
                            }
                        }, 0);
                    } catch (Throwable unused) {
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f57822a = null;
        f57819b = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        if (Build.VERSION.SDK_INT < 26 && !f57819b) {
            if (f57820c > 5) {
                com.ss.android.socialbase.downloader.c.a.d("SqlDownloadCacheAidlWra", "bindMainProcess: bind too many times!!! ");
                return false;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - f57821d < AbstractTrafficShapingHandler.DEFAULT_MAX_TIME) {
                com.ss.android.socialbase.downloader.c.a.d("SqlDownloadCacheAidlWra", "bindMainProcess: time too short since last bind!!! ");
                return false;
            }
            f57820c++;
            f57821d = currentTimeMillis;
            this.f57823e.postDelayed(new Runnable() { // from class: com.ss.android.socialbase.downloader.b.f.3
                @Override // java.lang.Runnable
                public void run() {
                    SqlDownloadCacheService.a(com.ss.android.socialbase.downloader.downloader.c.N(), f.this);
                }
            }, 1000L);
            return true;
        }
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo b(int i2) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.b(i2);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> c(String str) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.c(str);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> d(String str) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.d(str);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean e(int i2) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.e(i2);
            }
            return false;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo h(int i2) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.h(i2);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public void a(c.a.InterfaceC0327a interfaceC0327a) {
        this.f57825g = interfaceC0327a;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean f(int i2) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.f(i2);
            }
            return false;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.t
    public void a(final SparseArray<DownloadInfo> sparseArray, final SparseArray<List<com.ss.android.socialbase.downloader.model.b>> sparseArray2, final d dVar) {
        com.ss.android.socialbase.downloader.downloader.c.l().submit(new Runnable() { // from class: com.ss.android.socialbase.downloader.b.f.4
            @Override // java.lang.Runnable
            public void run() {
                boolean z3;
                d dVar2;
                Future future;
                f.this.a(new b.a() { // from class: com.ss.android.socialbase.downloader.b.f.4.1
                    @Override // com.ss.android.socialbase.downloader.b.b
                    public void a(Map map, Map map2) {
                        com.ss.android.socialbase.downloader.i.f.a(sparseArray, map);
                        com.ss.android.socialbase.downloader.i.f.a(sparseArray2, map2);
                        dVar.a();
                        f.this.a((b) null);
                    }
                });
                try {
                    z3 = !f.this.f57828j.await(5000L, TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    th.printStackTrace();
                    z3 = false;
                }
                if (z3 && (future = f.this.f57827i) != null) {
                    future.cancel(true);
                }
                f.this.a();
                if (!z3 || (dVar2 = dVar) == null) {
                    return;
                }
                dVar2.a();
            }
        });
    }

    public void a(b bVar) {
        synchronized (this) {
            c cVar = this.f57822a;
            if (cVar != null) {
                try {
                    cVar.a(bVar);
                } catch (RemoteException e4) {
                    e4.printStackTrace();
                }
            } else {
                this.f57824f = bVar;
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> b(String str) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.b(str);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<com.ss.android.socialbase.downloader.model.b> c(int i2) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.c(i2);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void d(int i2) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                cVar.d(i2);
            }
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean e() {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.e();
            }
            return false;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> b() {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.b();
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void c() {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                cVar.c();
            }
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo d(int i2, long j4) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.d(i2, j4);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public void a() {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                cVar.a();
            }
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void b(com.ss.android.socialbase.downloader.model.b bVar) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                cVar.b(bVar);
            }
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo c(int i2, long j4) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.c(i2, j4);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean d() {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.d();
            }
            return false;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo g(int i2) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.g(i2);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public List<DownloadInfo> a(String str) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.a(str);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo b(int i2, long j4) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.b(i2, j4);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(com.ss.android.socialbase.downloader.model.b bVar) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                cVar.a(bVar);
            }
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void b(DownloadInfo downloadInfo) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                cVar.b(downloadInfo);
            }
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(int i2, int i4, long j4) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                cVar.a(i2, i4, j4);
            }
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void b(int i2, List<com.ss.android.socialbase.downloader.model.b> list) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                cVar.b(i2, list);
            }
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(int i2, int i4, int i5, long j4) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                cVar.a(i2, i4, i5, j4);
            }
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(int i2, int i4, int i5, int i6) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                cVar.a(i2, i4, i5, i6);
            }
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo a(int i2, int i4) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.a(i2, i4);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public boolean a(DownloadInfo downloadInfo) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.a(downloadInfo);
            }
            return false;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo a(int i2, long j4, String str, String str2) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.a(i2, j4, str, str2);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public DownloadInfo a(int i2, long j4) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                return cVar.a(i2, j4);
            }
            return null;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.j
    public void a(int i2, List<com.ss.android.socialbase.downloader.model.b> list) {
        try {
            c cVar = this.f57822a;
            if (cVar != null) {
                cVar.a(i2, list);
            }
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }
}
