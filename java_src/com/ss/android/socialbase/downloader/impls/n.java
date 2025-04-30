package com.ss.android.socialbase.downloader.impls;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.downloader.IndependentProcessDownloadService;
import com.ss.android.socialbase.downloader.downloader.i;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.List;
/* compiled from: IndependentDownloadServiceHandler.java */
/* loaded from: classes4.dex */
public class n extends com.ss.android.socialbase.downloader.downloader.a implements ServiceConnection {

    /* renamed from: e  reason: collision with root package name */
    private static final String f58388e = n.class.getSimpleName();

    /* renamed from: f  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.downloader.i f58389f;

    /* renamed from: g  reason: collision with root package name */
    private com.ss.android.socialbase.downloader.downloader.n f58390g;

    /* renamed from: h  reason: collision with root package name */
    private int f58391h = -1;

    private void g() {
        SparseArray<List<DownloadTask>> clone;
        try {
            synchronized (this.f57943a) {
                clone = this.f57943a.clone();
                this.f57943a.clear();
            }
            if (clone == null || clone.size() <= 0 || com.ss.android.socialbase.downloader.downloader.c.C() == null) {
                return;
            }
            for (int i2 = 0; i2 < clone.size(); i2++) {
                List<DownloadTask> list = clone.get(clone.keyAt(i2));
                if (list != null) {
                    for (DownloadTask downloadTask : list) {
                        try {
                            this.f58389f.a(com.ss.android.socialbase.downloader.i.g.a(downloadTask));
                        } catch (RemoteException e4) {
                            e4.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th) {
            com.ss.android.socialbase.downloader.c.a.a(f58388e, "resumePendingTaskForIndependent failed", th);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.a, com.ss.android.socialbase.downloader.downloader.o
    public IBinder a(Intent intent) {
        if (intent != null && intent.getBooleanExtra("fix_downloader_db_sigbus", false)) {
            com.ss.android.socialbase.downloader.g.a.a("fix_sigbus_downloader_db", true);
        }
        com.ss.android.socialbase.downloader.c.a.b(f58388e, "onBind IndependentDownloadBinder");
        return new m();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.a, com.ss.android.socialbase.downloader.downloader.o
    public void b(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        String str = f58388e;
        StringBuilder sb = new StringBuilder();
        sb.append("tryDownload aidlService == null:");
        sb.append(this.f58389f == null);
        com.ss.android.socialbase.downloader.c.a.b(str, sb.toString());
        if (this.f58389f == null) {
            a(downloadTask);
            startService(com.ss.android.socialbase.downloader.downloader.c.N(), this);
            return;
        }
        g();
        try {
            this.f58389f.a(com.ss.android.socialbase.downloader.i.g.a(downloadTask));
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.a, com.ss.android.socialbase.downloader.downloader.o
    public void c(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.d.a().a(downloadTask.getDownloadId(), true);
        a C = com.ss.android.socialbase.downloader.downloader.c.C();
        if (C != null) {
            C.a(downloadTask);
        }
    }

    @Override // android.content.ServiceConnection
    public void onBindingDied(ComponentName componentName) {
        this.f58389f = null;
        com.ss.android.socialbase.downloader.downloader.n nVar = this.f58390g;
        if (nVar != null) {
            nVar.h();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        String str = f58388e;
        com.ss.android.socialbase.downloader.c.a.b(str, "onServiceConnected ");
        this.f58389f = i.a.a(iBinder);
        com.ss.android.socialbase.downloader.downloader.n nVar = this.f58390g;
        if (nVar != null) {
            nVar.a(iBinder);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("onServiceConnected aidlService!=null");
        sb.append(this.f58389f != null);
        sb.append(" pendingTasks.size:");
        sb.append(this.f57943a.size());
        com.ss.android.socialbase.downloader.c.a.b(str, sb.toString());
        if (this.f58389f != null) {
            com.ss.android.socialbase.downloader.downloader.d.a().b();
            this.f57944b = true;
            this.f57946d = false;
            int i2 = this.f58391h;
            if (i2 != -1) {
                try {
                    this.f58389f.l(i2);
                } catch (RemoteException e4) {
                    e4.printStackTrace();
                }
            }
            if (this.f58389f != null) {
                g();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        com.ss.android.socialbase.downloader.c.a.b(f58388e, "onServiceDisconnected ");
        this.f58389f = null;
        this.f57944b = false;
        com.ss.android.socialbase.downloader.downloader.n nVar = this.f58390g;
        if (nVar != null) {
            nVar.h();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.a
    public void startService(Context context, ServiceConnection serviceConnection) {
        try {
            com.ss.android.socialbase.downloader.c.a.b(f58388e, "bindService");
            Intent intent = new Intent(context, IndependentProcessDownloadService.class);
            if (com.ss.android.socialbase.downloader.i.f.a()) {
                intent.putExtra("fix_downloader_db_sigbus", com.ss.android.socialbase.downloader.g.a.c().a("fix_sigbus_downloader_db"));
            }
            if (serviceConnection != null) {
                context.bindService(intent, serviceConnection, 1);
            }
            context.startService(intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.a
    public void stopService(Context context, ServiceConnection serviceConnection) {
        com.ss.android.socialbase.downloader.c.a.b(f58388e, "stopService");
        this.f57944b = false;
        Intent intent = new Intent(context, IndependentProcessDownloadService.class);
        if (serviceConnection != null) {
            context.unbindService(serviceConnection);
        }
        context.stopService(intent);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.a, com.ss.android.socialbase.downloader.downloader.o
    public void a(com.ss.android.socialbase.downloader.downloader.n nVar) {
        this.f58390g = nVar;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.a, com.ss.android.socialbase.downloader.downloader.o
    public void a(int i2) {
        com.ss.android.socialbase.downloader.downloader.i iVar = this.f58389f;
        if (iVar == null) {
            this.f58391h = i2;
            return;
        }
        try {
            iVar.l(i2);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.a, com.ss.android.socialbase.downloader.downloader.o
    public void startService() {
        if (this.f58389f == null) {
            startService(com.ss.android.socialbase.downloader.downloader.c.N(), this);
        }
    }
}
