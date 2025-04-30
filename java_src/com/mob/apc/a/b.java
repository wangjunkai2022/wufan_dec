package com.mob.apc.a;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.mob.MobACService;
import com.mob.apc.APCException;
import com.mob.apc.b;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class b implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadPoolExecutor f52729a;

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentHashMap<String, d> f52730b = new ConcurrentHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final ConcurrentHashMap<String, byte[]> f52731c = new ConcurrentHashMap<>();

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(8, 8, 60L, TimeUnit.SECONDS, new LinkedBlockingDeque());
        f52729a = threadPoolExecutor;
        try {
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        } catch (Throwable unused) {
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            String packageName = componentName.getPackageName();
            f.a().b("[AIDLMessager][onServiceConnected] pkg: %s", packageName);
            this.f52730b.put(packageName, d.a(iBinder));
            byte[] remove = this.f52731c.remove(packageName);
            if (remove != null) {
                synchronized (remove) {
                    remove.notifyAll();
                }
            }
        } catch (Throwable th) {
            f.a().b("[AIDLMessager][onServiceConnected] exception: %s", th.getMessage());
            f.a().a(th);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        try {
            String packageName = componentName.getPackageName();
            f.a().b("[AIDLMessager][onServiceDisconnected] pkg: %s", packageName);
            this.f52730b.remove(packageName);
        } catch (Throwable th) {
            f.a().a(th);
            f.a().b("[AIDLMessager][onServiceDisconnected] exception: %s", th.getMessage());
        }
    }

    public com.mob.apc.a a(String str, String str2, com.mob.apc.a aVar, long j4) throws Throwable {
        e eVar;
        f.a().b("[sendAIDLMessage] pkg: %s, businessID: %s, apcMessage: %s, timeout: %s", str, str2, aVar, Long.valueOf(j4));
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        try {
            Runnable a4 = a(str, new e(aVar, str2, j4), j4, linkedBlockingQueue);
            if (j4 <= 0) {
                eVar = linkedBlockingQueue.take();
            } else {
                e poll = linkedBlockingQueue.poll(j4, TimeUnit.MILLISECONDS);
                if (poll == null) {
                    f52729a.remove(a4);
                }
                eVar = poll;
            }
            if (eVar != null) {
                com.mob.apc.a aVar2 = eVar.f52747a;
                if (aVar2 != null) {
                    return aVar2;
                }
                APCException aPCException = eVar.f52750d;
                if (aPCException != null) {
                    throw aPCException;
                }
            }
            throw new APCException("[sendAIDLMessage] callback is null or timeout.");
        } catch (Throwable th) {
            f.a().b("[sendAIDLMessage] exception: %s", th.getMessage());
            throw new APCException(th);
        }
    }

    private Runnable a(final String str, final e eVar, final long j4, final BlockingQueue<e> blockingQueue) {
        Runnable runnable = new Runnable() { // from class: com.mob.apc.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    b.this.a(str, eVar);
                    blockingQueue.offer(b.this.a(str, eVar, j4));
                } catch (Throwable th) {
                    f.a().a(th);
                }
            }
        };
        f52729a.execute(runnable);
        return runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e a(String str, e eVar, long j4) throws Throwable {
        boolean z3;
        boolean z4;
        f.a().b("[realSendAIDLMessage] pkg: %s, InnerMessage: %s, timeout: %s", str, eVar, Long.valueOf(j4));
        d dVar = this.f52730b.get(str);
        if (dVar != null) {
            try {
                if (dVar.isBinderAlive()) {
                    f.a().b("[realSendAIDLMessage] serverBinder %s is alive.", str);
                    return dVar.a(eVar);
                }
            } catch (RemoteException e4) {
                f.a().b("[realSendAIDLMessage] serverBinder send error: %s %s", str, e4.getMessage());
                f.a().a(e4);
            }
        }
        Intent intent = new Intent();
        intent.setClassName(str, MobACService.class.getName());
        try {
            f a4 = f.a();
            a4.a("check alive, pkg: " + str, new Object[0]);
            b.a c4 = c.a().c();
            if (c4 != null) {
                z3 = c4.a(str);
            } else {
                f.a().a("WARNING: mgsRequestListener null, can not check alive", new Object[0]);
                z3 = false;
            }
            f a5 = f.a();
            a5.a("is tgt alv: " + z3, new Object[0]);
            if (z3) {
                z4 = com.mob.apc.b.a().bindService(intent, this, 1);
            } else {
                f.a().a("can not rebnd acSvc, msg can not be send ", new Object[0]);
                z4 = false;
            }
            f.a().b("[realSendAIDLMessage] rebind service: %s %s", str, Boolean.valueOf(z4));
            if (z4) {
                try {
                    byte[] bArr = this.f52731c.get(str);
                    if (bArr == null) {
                        bArr = new byte[0];
                        this.f52731c.put(str, bArr);
                    }
                    synchronized (bArr) {
                        bArr.wait(j4);
                    }
                    d dVar2 = this.f52730b.get(str);
                    f.a().b("[realSendAIDLMessage] rebind service binder: %s %s", str, dVar2);
                    if (dVar2 != null) {
                        try {
                            return dVar2.a(eVar);
                        } catch (RemoteException e5) {
                            throw new APCException(1004, String.format("service binder %s send message RemoteException: %s", str, e5.getMessage()));
                        }
                    }
                    throw new APCException(1001, String.format("service binder %s is null or timeout", str));
                } catch (Throwable th) {
                    f.a().b("[realSendAIDLMessage] service binder %s send exception: %s", str, th.getMessage());
                    throw new APCException(th);
                }
            }
            throw new APCException(1003, String.format("service %s bind failed", str));
        } catch (Throwable th2) {
            throw new APCException(1002, "service bind exception: " + th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, e eVar) {
        com.mob.apc.a aVar;
        if (eVar == null || (aVar = eVar.f52747a) == null) {
            return;
        }
        b.a c4 = c.a().c();
        int i2 = aVar.f52719a;
        f a4 = f.a();
        a4.a("APCMessageType: " + i2, new Object[0]);
        if (i2 != 1 && i2 != 2) {
            if (i2 == 1001) {
                f a5 = f.a();
                a5.a("Need GD. busType: 1", new Object[0]);
                if (c4 != null) {
                    c4.a(1, str);
                    return;
                }
                return;
            } else if (i2 != 1003) {
                if (i2 != 9004) {
                    return;
                }
                f a6 = f.a();
                a6.a("Need GD. busType: 2", new Object[0]);
                if (c4 != null) {
                    c4.a(2, str);
                    return;
                }
                return;
            }
        }
        f.a().a("No need to call GD.", new Object[0]);
    }
}
