package com.xinzhu.overmind.server.am;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.ClientConfig;
import com.xinzhu.overmind.entity.PendingIntentRecord;
import com.xinzhu.overmind.entity.UnbindRecord;
import com.xinzhu.overmind.os.BinderHelper;
import com.xinzhu.overmind.server.ProcessRecord;
import com.xinzhu.overmind.server.am.d;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: MindActivityManagerService.java */
/* loaded from: classes.dex */
public class f extends d.b implements com.xinzhu.overmind.server.c {
    public static final String TAG = f.class.getSimpleName();
    private static f sService = new f();
    private final Map<Integer, i> mUserSpace = new HashMap();
    private final Map<IBinder, PendingIntentRecord> mPendingIntentRecords = new HashMap();

    public static f get() {
        return sService;
    }

    private i getOrCreateSpaceLocked(int userId) {
        synchronized (this.mUserSpace) {
            i iVar = this.mUserSpace.get(Integer.valueOf(userId));
            if (iVar != null) {
                return iVar;
            }
            i iVar2 = new i();
            this.mUserSpace.put(Integer.valueOf(userId), iVar2);
            return iVar2;
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException {
        ProcessRecord p3 = com.xinzhu.overmind.server.d.d().p(providerInfo.packageName, providerInfo.processName, com.xinzhu.overmind.server.d.d().g(Binder.getCallingPid()), -1, Binder.getCallingUid(), Binder.getCallingPid());
        if (p3 != null) {
            return p3.client.acquireContentProviderClient(providerInfo);
        }
        throw new RuntimeException("Unable to create process " + providerInfo.name);
    }

    @Override // com.xinzhu.overmind.server.am.d
    public Intent bindService(Intent service, IBinder binder, String resolvedType, int userId) throws RemoteException {
        Intent bindService;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(userId);
        synchronized (orCreateSpaceLocked.f64447a) {
            bindService = orCreateSpaceLocked.f64447a.bindService(service, binder, resolvedType, userId);
        }
        return bindService;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public PendingIntentRecord findPendingIntent(IBinder intentSender) throws RemoteException {
        try {
            PendingIntentRecord pendingIntentRecord = this.mPendingIntentRecords.get(intentSender);
            if (pendingIntentRecord != null) {
                String str = TAG;
                com.xinzhu.overmind.b.c(str, "try findPendingIntent result " + pendingIntentRecord + " realIntent: " + pendingIntentRecord.f64284e + " uid: " + pendingIntentRecord.f64281b);
                return pendingIntentRecord;
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public ProcessRecord findProcessRecordByPid(int pid) throws RemoteException {
        return com.xinzhu.overmind.server.d.d().b(pid);
    }

    @Override // com.xinzhu.overmind.server.am.d
    public ComponentName getCallingActivity(IBinder token) throws RemoteException {
        ComponentName j4;
        ProcessRecord b4 = com.xinzhu.overmind.server.d.d().b(Binder.getCallingPid());
        if (b4 == null) {
            return null;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(b4.userId);
        synchronized (orCreateSpaceLocked.f64448b) {
            j4 = orCreateSpaceLocked.f64448b.j(b4.userId, token);
        }
        return j4;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public String getCallingPackage(IBinder token) throws RemoteException {
        String k4;
        ProcessRecord b4 = com.xinzhu.overmind.server.d.d().b(Binder.getCallingPid());
        if (b4 == null) {
            return null;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(b4.userId);
        synchronized (orCreateSpaceLocked.f64448b) {
            k4 = orCreateSpaceLocked.f64448b.k(b4.userId, token);
        }
        return k4;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public String getLaunchedFromPackage(IBinder token) throws RemoteException {
        String l4;
        ProcessRecord b4 = com.xinzhu.overmind.server.d.d().b(Binder.getCallingPid());
        if (b4 == null) {
            return null;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(b4.userId);
        synchronized (orCreateSpaceLocked.f64448b) {
            l4 = orCreateSpaceLocked.f64448b.l(token);
        }
        return l4;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public int getLaunchedFromUid(IBinder token) throws RemoteException {
        int m4;
        ProcessRecord b4 = com.xinzhu.overmind.server.d.d().b(Binder.getCallingPid());
        if (b4 == null) {
            return -1;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(b4.userId);
        synchronized (orCreateSpaceLocked.f64448b) {
            m4 = orCreateSpaceLocked.f64448b.m(token);
        }
        return m4;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public MindTaskInfo getTaskInfo(int taskId) throws RemoteException {
        List<b> list;
        ProcessRecord b4 = com.xinzhu.overmind.server.d.d().b(Binder.getCallingPid());
        if (b4 == null) {
            return null;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(b4.userId);
        synchronized (orCreateSpaceLocked.f64448b) {
            h g4 = orCreateSpaceLocked.f64448b.g(taskId);
            if (g4 != null && (list = g4.f64446e) != null) {
                int size = list.size();
                if (size == 0) {
                    return null;
                }
                ComponentName componentName = g4.f64446e.get(size - 1).component;
                Intent intent = g4.f64445d;
                return new MindTaskInfo(taskId, intent, intent.getComponent(), componentName);
            }
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public ClientConfig initProcess(String packageName, String processName, int userId) throws RemoteException {
        ProcessRecord p3 = com.xinzhu.overmind.server.d.d().p(packageName, processName, userId, -1, Binder.getCallingUid(), Binder.getCallingPid());
        if (p3 == null) {
            return null;
        }
        return p3.getClientConfig();
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void onActivityCreated(int taskId, IBinder token, IBinder activityRecord) throws RemoteException {
        ProcessRecord b4 = com.xinzhu.overmind.server.d.d().b(Binder.getCallingPid());
        if (b4 == null) {
            return;
        }
        b bVar = (b) activityRecord;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(b4.userId);
        synchronized (orCreateSpaceLocked.f64448b) {
            orCreateSpaceLocked.f64448b.s(b4, taskId, token, bVar);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void onActivityDestroyed(IBinder token) throws RemoteException {
        ProcessRecord b4 = com.xinzhu.overmind.server.d.d().b(Binder.getCallingPid());
        if (b4 == null) {
            return;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(b4.userId);
        synchronized (orCreateSpaceLocked.f64448b) {
            orCreateSpaceLocked.f64448b.t(b4.userId, token);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void onActivityResumed(IBinder token) throws RemoteException {
        ProcessRecord b4 = com.xinzhu.overmind.server.d.d().b(Binder.getCallingPid());
        if (b4 == null) {
            return;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(b4.userId);
        synchronized (orCreateSpaceLocked.f64448b) {
            orCreateSpaceLocked.f64448b.u(b4.userId, token);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void onFinishActivity(IBinder token) throws RemoteException {
        ProcessRecord b4 = com.xinzhu.overmind.server.d.d().b(Binder.getCallingPid());
        if (b4 == null) {
            return;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(b4.userId);
        synchronized (orCreateSpaceLocked.f64448b) {
            orCreateSpaceLocked.f64448b.v(b4.userId, token);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void onFinishActivityAffinity(IBinder token) throws RemoteException {
        ProcessRecord b4 = com.xinzhu.overmind.server.d.d().b(Binder.getCallingPid());
        if (b4 == null) {
            return;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(b4.userId);
        synchronized (orCreateSpaceLocked.f64448b) {
            orCreateSpaceLocked.f64448b.w(b4.userId, token);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void onServiceDestroy(Intent proxyIntent, int userId) throws RemoteException {
        i orCreateSpaceLocked = getOrCreateSpaceLocked(userId);
        synchronized (orCreateSpaceLocked.f64447a) {
            orCreateSpaceLocked.f64447a.f(proxyIntent, userId);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public UnbindRecord onServiceUnbind(Intent proxyIntent, int userId) throws RemoteException {
        UnbindRecord g4;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(userId);
        synchronized (orCreateSpaceLocked.f64447a) {
            g4 = orCreateSpaceLocked.f64447a.g(proxyIntent, userId);
        }
        return g4;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void onStartCommand(Intent intent, int userId) throws RemoteException {
        i orCreateSpaceLocked = getOrCreateSpaceLocked(userId);
        synchronized (orCreateSpaceLocked.f64447a) {
            orCreateSpaceLocked.f64447a.h(intent, userId);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public IBinder peekService(Intent intent, String resolvedType, int userId) throws RemoteException {
        IBinder i2;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(userId);
        synchronized (orCreateSpaceLocked.f64447a) {
            i2 = orCreateSpaceLocked.f64447a.i(intent, resolvedType, userId);
        }
        return i2;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void registerPendingIntent(PendingIntentRecord record) throws RemoteException {
        this.mPendingIntentRecords.put(record.f64283d, record);
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void restartProcess(String packageName, String processName, int userId) throws RemoteException {
        com.xinzhu.overmind.server.d.d().n(packageName, processName, userId);
    }

    @Override // com.xinzhu.overmind.server.am.d
    public Intent sendBroadcast(Intent intent, String resolvedType, int userId) throws RemoteException {
        for (ResolveInfo resolveInfo : com.xinzhu.overmind.server.pm.h.get().queryBroadcastReceivers(intent, 128, resolvedType, userId)) {
            com.xinzhu.overmind.server.d d4 = com.xinzhu.overmind.server.d.d();
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            ProcessRecord p3 = d4.p(activityInfo.packageName, activityInfo.processName, userId, -1, Binder.getCallingUid(), Binder.getCallingPid());
            if (p3 != null) {
                try {
                    p3.client.bindApplication();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        if (intent.getPackage() != null) {
            intent.setPackage(Overmind.getHostPkg());
        }
        if (intent.getComponent() != null) {
            intent.setComponent(null);
        }
        return intent;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public int startActivities(int userId, String packageName, Intent[] intent, String[] resolvedType, IBinder resultTo, Bundle options) throws RemoteException {
        int A;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(userId);
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        synchronized (orCreateSpaceLocked.f64448b) {
            A = orCreateSpaceLocked.f64448b.A(userId, packageName, b4.f64329b, intent, resolvedType, resultTo, options);
        }
        return A;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void startActivity(Intent intent, int userId) {
        i orCreateSpaceLocked = getOrCreateSpaceLocked(userId);
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        synchronized (orCreateSpaceLocked.f64448b) {
            orCreateSpaceLocked.f64448b.E(userId, null, b4.f64329b, intent, null, null, null, -1, 0, null);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public int startActivityAms(int userId, String packageName, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int flags, Bundle options) throws RemoteException {
        int E;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(userId);
        BinderHelper.CallingInfo b4 = BinderHelper.b();
        synchronized (orCreateSpaceLocked.f64448b) {
            E = orCreateSpaceLocked.f64448b.E(userId, packageName, b4.f64329b, intent, resolvedType, resultTo, resultWho, requestCode, flags, options);
        }
        return E;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public int startActivityFromExistTask(Intent intent, int userId) throws RemoteException {
        int B;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(userId);
        synchronized (orCreateSpaceLocked.f64448b) {
            B = orCreateSpaceLocked.f64448b.B(intent);
        }
        return B;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public Intent startService(Intent intent, String resolvedType, int userId) {
        Intent startService;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(userId);
        synchronized (orCreateSpaceLocked.f64447a) {
            startService = orCreateSpaceLocked.f64447a.startService(intent, resolvedType, userId);
        }
        return startService;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void stopPackage(String packageName, int userId) throws RemoteException {
        com.xinzhu.overmind.server.d.d().k(packageName, userId);
    }

    @Override // com.xinzhu.overmind.server.am.d
    public Intent stopService(Intent intent, String resolvedType, int userId) {
        Intent stopService;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(userId);
        synchronized (orCreateSpaceLocked.f64447a) {
            stopService = orCreateSpaceLocked.f64447a.stopService(intent, resolvedType, userId);
        }
        return stopService;
    }

    @Override // com.xinzhu.overmind.server.c
    public void systemReady() {
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void unbindService(IBinder binder, int userId) throws RemoteException {
        i orCreateSpaceLocked = getOrCreateSpaceLocked(userId);
        synchronized (orCreateSpaceLocked.f64447a) {
            orCreateSpaceLocked.f64447a.unbindService(binder, userId);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void unregisterPendingIntent(IBinder intentSender) throws RemoteException {
        this.mPendingIntentRecords.remove(intentSender);
    }
}
