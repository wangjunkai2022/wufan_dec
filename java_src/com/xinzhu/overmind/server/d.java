package com.xinzhu.overmind.server;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import com.xinzhu.haunted.android.app.j;
import com.xinzhu.haunted.android.app.p;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.c;
import com.xinzhu.overmind.client.stub.StubContentProvider;
import com.xinzhu.overmind.entity.ClientConfig;
import com.xinzhu.overmind.server.user.MindUserHandle;
import com.xinzhu.overmind.utils.u;
import com.xinzhu.overmind.utils.wrappers.ContentProviderWrapper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: MindProcessManager.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: e  reason: collision with root package name */
    public static final String f64452e = "MindProcessManager";

    /* renamed from: f  reason: collision with root package name */
    public static d f64453f = new d();

    /* renamed from: a  reason: collision with root package name */
    private final Map<Integer, Map<String, ProcessRecord>> f64454a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Integer, ProcessRecord> f64455b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Object f64456c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private AtomicInteger f64457d = new AtomicInteger(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MindProcessManager.java */
    /* loaded from: classes3.dex */
    public class a implements IBinder.DeathRecipient {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ProcessRecord f64458a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ IBinder f64459b;

        a(final ProcessRecord val$app, final IBinder val$client) {
            this.f64458a = val$app;
            this.f64459b = val$client;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            StringBuilder sb = new StringBuilder();
            sb.append("Client Died: ");
            sb.append(this.f64458a.processName);
            this.f64459b.unlinkToDeath(this, 0);
            d.this.l(this.f64458a);
        }
    }

    private void a(final ProcessRecord app2, final IBinder client, final int pid) {
        com.xinzhu.overmind.client.c asInterface = c.b.asInterface(client);
        if (asInterface == null) {
            app2.kill();
            return;
        }
        try {
            client.linkToDeath(new a(app2, client), 0);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
        app2.client = asInterface;
        app2.pid = pid;
        try {
            if (com.xinzhu.overmind.utils.e.v()) {
                app2.appThread = p.a.a(asInterface.getActivityThread());
            } else {
                app2.appThread = j.a(asInterface.getActivityThread());
            }
        } catch (RemoteException e5) {
            e5.printStackTrace();
        }
        app2.initLock.open();
    }

    public static d d() {
        return f64453f;
    }

    public static int e(Context context, String processName) {
        try {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : Overmind.get().getRunningAppProcessesContainPlugin()) {
                if (runningAppProcessInfo.processName.equals(processName)) {
                    return runningAppProcessInfo.pid;
                }
            }
            return -1;
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }

    private static String f(Context context, int pid) {
        String str;
        Iterator<ActivityManager.RunningAppProcessInfo> it2 = Overmind.get().getRunningAppProcessesContainPlugin().iterator();
        while (true) {
            if (!it2.hasNext()) {
                str = null;
                break;
            }
            ActivityManager.RunningAppProcessInfo next = it2.next();
            if (next.pid == pid) {
                str = next.processName;
                break;
            }
        }
        if (str != null) {
            return str;
        }
        throw new RuntimeException("processName = null");
    }

    private int h() {
        boolean z3;
        for (int i2 = 0; i2 < 100; i2++) {
            Iterator<ProcessRecord> it2 = this.f64455b.values().iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().vpid == i2) {
                        z3 = true;
                        break;
                    }
                } else {
                    z3 = false;
                    break;
                }
            }
            if (!z3) {
                return i2;
            }
        }
        return -1;
    }

    private boolean i(ProcessRecord record) {
        StringBuilder sb = new StringBuilder();
        sb.append("initProcess: ");
        sb.append(record.processName);
        ClientConfig clientConfig = record.getClientConfig();
        Bundle bundle = new Bundle();
        bundle.putParcelable(StubContentProvider.f64257b, clientConfig);
        Bundle acquire = ContentProviderWrapper.acquire(record.getProviderAuthority(), StubContentProvider.f64256a, null, bundle);
        IBinder b4 = com.xinzhu.overmind.utils.helpers.b.b(acquire, StubContentProvider.f64258c);
        int i2 = acquire.getInt(StubContentProvider.f64259d);
        if (b4 == null || !b4.isBinderAlive()) {
            return false;
        }
        a(record, b4, i2);
        return true;
    }

    private int m(String stubProcessName) {
        if (stubProcessName == null) {
            return -1;
        }
        String str = Overmind.getHostPkg() + ":p";
        if (stubProcessName.startsWith(str)) {
            try {
                return Integer.parseInt(stubProcessName.substring(str.length()));
            } catch (NumberFormatException unused) {
            }
        }
        return -1;
    }

    private void o() {
    }

    public ProcessRecord b(int pid) {
        ProcessRecord processRecord;
        if (pid == Process.myPid()) {
            return new ProcessRecord(null, null, 1000, 0, 0);
        }
        synchronized (this.f64455b) {
            processRecord = this.f64455b.get(Integer.valueOf(pid));
        }
        return processRecord;
    }

    public ProcessRecord c(String packageName, String processName, int userId) {
        synchronized (this.f64456c) {
            Map<String, ProcessRecord> map = this.f64454a.get(Integer.valueOf(MindUserHandle.h(userId, com.xinzhu.overmind.server.pm.h.get().getAppId(packageName))));
            if (map == null) {
                return null;
            }
            return map.get(processName);
        }
    }

    public int g(int callingPid) {
        synchronized (this.f64456c) {
            ProcessRecord b4 = d().b(callingPid);
            if (b4 == null) {
                return 0;
            }
            return b4.userId;
        }
    }

    public void j(String packageName) {
        synchronized (this.f64456c) {
            synchronized (this.f64455b) {
                HashMap hashMap = new HashMap(this.f64455b);
                int appId = com.xinzhu.overmind.server.pm.h.get().getAppId(packageName);
                for (ProcessRecord processRecord : this.f64455b.values()) {
                    if (appId == MindUserHandle.a(processRecord.vuid)) {
                        this.f64454a.remove(Integer.valueOf(processRecord.vuid));
                        hashMap.remove(Integer.valueOf(processRecord.pid));
                        processRecord.kill();
                    }
                }
                this.f64455b.clear();
                this.f64455b.putAll(hashMap);
            }
        }
    }

    public void k(String packageName, int userId) {
        synchronized (this.f64456c) {
            int h4 = MindUserHandle.h(userId, com.xinzhu.overmind.server.pm.h.get().getAppId(packageName));
            Map<String, ProcessRecord> map = this.f64454a.get(Integer.valueOf(h4));
            if (map == null) {
                return;
            }
            for (ProcessRecord processRecord : map.values()) {
                if (processRecord.runWithPlugin) {
                    com.xinzhu.overmind.plugin.b.l(processRecord.pid);
                } else {
                    processRecord.kill();
                }
            }
            this.f64454a.remove(Integer.valueOf(h4));
        }
    }

    public void l(ProcessRecord record) {
        synchronized (this.f64456c) {
            record.kill();
            Map<String, ProcessRecord> map = this.f64454a.get(Integer.valueOf(record.vuid));
            if (map != null) {
                map.remove(record.processName);
            }
            this.f64455b.remove(record);
        }
    }

    public void n(String packageName, String processName, int userId) {
        ProcessRecord b4;
        synchronized (this.f64456c) {
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            synchronized (this.f64456c) {
                b4 = b(callingPid);
            }
            if (b4 == null) {
                p(packageName, processName, userId, m(f(Overmind.getContext(), callingPid)), callingUid, callingPid);
            }
        }
    }

    public ProcessRecord p(String packageName, String processName, int userId, int vpid, int callingUid, int callingPid) {
        o();
        ApplicationInfo applicationInfo = com.xinzhu.overmind.server.pm.h.get().getApplicationInfo(packageName, 0, userId);
        ProcessRecord processRecord = null;
        if (applicationInfo == null) {
            return null;
        }
        int h4 = MindUserHandle.h(userId, com.xinzhu.overmind.server.pm.h.get().getAppId(packageName));
        Map<String, ProcessRecord> map = this.f64454a.get(Integer.valueOf(h4));
        if (map == null) {
            map = new HashMap<>();
        }
        Map<String, ProcessRecord> map2 = map;
        synchronized (this.f64456c) {
            if (vpid == -1) {
                try {
                    ProcessRecord processRecord2 = map2.get(processName);
                    if (processRecord2 != null) {
                        ConditionVariable conditionVariable = processRecord2.initLock;
                        if (conditionVariable != null) {
                            conditionVariable.block();
                        }
                        if (processRecord2.client != null) {
                            return processRecord2;
                        }
                    }
                    vpid = h();
                    u.a(f64452e, "init vUid = " + h4 + ", vPid = " + vpid);
                } catch (Throwable th) {
                    throw th;
                }
            }
            int i2 = vpid;
            if (i2 != -1) {
                ProcessRecord processRecord3 = new ProcessRecord(applicationInfo, processName, 0, i2, callingUid);
                processRecord3.uid = h4;
                processRecord3.vuid = h4;
                processRecord3.userId = userId;
                processRecord3.baseVUid = MindUserHandle.a(h4);
                processRecord3.runWithPlugin = com.xinzhu.overmind.server.pm.h.get().getMindPackageSettings(packageName).k();
                map2.put(processName, processRecord3);
                this.f64454a.put(Integer.valueOf(processRecord3.vuid), map2);
                if (!i(processRecord3)) {
                    map2.remove(processName);
                    this.f64455b.remove(processRecord3);
                } else {
                    int e4 = e(Overmind.getContext(), com.xinzhu.overmind.client.f.d(processRecord3.vpid, processRecord3.runWithPlugin));
                    processRecord3.pid = e4;
                    this.f64455b.put(Integer.valueOf(e4), processRecord3);
                    processRecord = processRecord3;
                }
                return processRecord;
            }
            throw new RuntimeException("No processes available");
        }
    }
}
