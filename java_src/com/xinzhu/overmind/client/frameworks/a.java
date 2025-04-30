package com.xinzhu.overmind.client.frameworks;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.ClientConfig;
import com.xinzhu.overmind.entity.PendingIntentRecord;
import com.xinzhu.overmind.entity.UnbindRecord;
import com.xinzhu.overmind.server.ProcessRecord;
import com.xinzhu.overmind.server.am.MindTaskInfo;
import com.xinzhu.overmind.server.am.d;
/* compiled from: MindActivityManager.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static a f63988b = new a();

    /* renamed from: a  reason: collision with root package name */
    private com.xinzhu.overmind.server.am.d f63989a;

    public static a d() {
        return f63988b;
    }

    private com.xinzhu.overmind.server.am.d i() {
        com.xinzhu.overmind.server.am.d dVar = this.f63989a;
        if (dVar != null && dVar.asBinder().isBinderAlive()) {
            return this.f63989a;
        }
        this.f63989a = d.b.asInterface(Overmind.get().getService(com.xinzhu.overmind.server.g.f64476c));
        return i();
    }

    public int A(String packageName, int userId) {
        try {
            i().stopPackage(packageName, userId);
            return 0;
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return -1;
        }
    }

    public void B(IBinder intentSender) throws RemoteException {
        try {
            i().unregisterPendingIntent(intentSender);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public IBinder a(ProviderInfo providerInfo) {
        try {
            return i().acquireContentProviderClient(providerInfo);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public PendingIntentRecord b(IBinder intentSender) throws RemoteException {
        try {
            return i().findPendingIntent(intentSender);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public Intent bindService(Intent service, IBinder binder, String resolvedType, int userId) {
        try {
            return i().bindService(service, binder, resolvedType, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public ProcessRecord c(int pid) throws RemoteException {
        try {
            return i().findProcessRecordByPid(pid);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public ComponentName e(IBinder token) {
        try {
            return i().getCallingActivity(token);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public String f(IBinder token) {
        try {
            return i().getCallingPackage(token);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public String g(IBinder token) {
        try {
            return i().getLaunchedFromPackage(token);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public int h(IBinder token) {
        try {
            return i().getLaunchedFromUid(token);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return -1;
        }
    }

    public MindTaskInfo j(int taskId) throws RemoteException {
        try {
            return i().getTaskInfo(taskId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public ClientConfig k(String packageName, String processName, int userId) {
        try {
            return i().initProcess(packageName, processName, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public void l(int taskId, IBinder token, IBinder activityRecord) {
        try {
            i().onActivityCreated(taskId, token, activityRecord);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public void m(IBinder token) {
        try {
            i().onActivityDestroyed(token);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public void n(IBinder token) {
        try {
            i().onActivityResumed(token);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public void o(IBinder token) {
        try {
            i().onFinishActivity(token);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public void p(IBinder token) {
        try {
            i().onFinishActivityAffinity(token);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public void q(Intent proxyIntent, int userId) {
        try {
            i().onServiceDestroy(proxyIntent, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public UnbindRecord r(Intent proxyIntent, int userId) {
        try {
            return i().onServiceUnbind(proxyIntent, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public void s(Intent proxyIntent, int userId) {
        try {
            i().onStartCommand(proxyIntent, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public void startActivity(Intent intent, int userId) {
        try {
            i().startActivity(intent, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public Intent startService(Intent intent, String resolvedType, int userId) {
        try {
            return i().startService(intent, resolvedType, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public Intent stopService(Intent intent, String resolvedType, int userId) {
        try {
            return i().stopService(intent, resolvedType, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public IBinder t(Intent intent, String resolvedType, int userId) {
        try {
            return i().peekService(intent, resolvedType, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public void u(PendingIntentRecord record) throws RemoteException {
        try {
            i().registerPendingIntent(record);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public void unbindService(IBinder binder, int userId) {
        try {
            i().unbindService(binder, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public void v(String packageName, String processName, int userId) {
        try {
            i().restartProcess(packageName, processName, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public Intent w(Intent intent, String resolvedType, int userId) {
        try {
            return i().sendBroadcast(intent, resolvedType, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public int x(int userId, String callingPackage, Intent[] intent, String[] resolvedType, IBinder resultTo, Bundle options) {
        try {
            return i().startActivities(userId, callingPackage, intent, resolvedType, resultTo, options);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return -1;
        }
    }

    public int y(int userId, String callingPackage, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int flags, Bundle options) {
        try {
            return i().startActivityAms(userId, callingPackage, intent, resolvedType, resultTo, resultWho, requestCode, flags, options);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return -1;
        }
    }

    public void z(Intent intent, int userId) {
        try {
            i().startActivityFromExistTask(intent, userId);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }
}
