package com.xinzhu.overmind.server.am;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Process;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.xinzhu.haunted.android.app.l;
import com.xinzhu.haunted.android.app.p;
import com.xinzhu.haunted.com.android.internal.a;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.stub.record.StubActivityRecord;
import com.xinzhu.overmind.server.ProcessRecord;
import com.xinzhu.overmind.utils.r;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* compiled from: ActivityStack.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: d  reason: collision with root package name */
    public static String f64434d = "c";

    /* renamed from: b  reason: collision with root package name */
    private final Map<Integer, h> f64436b = new LinkedHashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Set<b> f64437c = new HashSet();

    /* renamed from: a  reason: collision with root package name */
    private final ActivityManager f64435a = (ActivityManager) Overmind.getContext().getSystemService(TTDownloadField.TT_ACTIVITY);

    private int C(int userId, String callingPackage, int callingUid, Intent intent, ActivityInfo activityInfo, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int launchMode, int flags, Bundle options, boolean newTask) {
        Intent F = F(userId, intent, activityInfo, r(intent, activityInfo, resultTo, userId, callingPackage, callingUid), Process.myUid());
        if (newTask) {
            F.addFlags(134217728);
            F.addFlags(524288);
            F.addFlags(268435456);
        }
        F.addFlags(launchMode);
        z(p.a.a(new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).H()), F, resolvedType, resultTo, resultWho, requestCode, flags, options);
        return 0;
    }

    private int D(Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int flags, Bundle options, int userId, String callingPackage, int callingUid, b sourceRecord, ActivityInfo activityInfo, int launchMode) {
        b r3 = r(intent, activityInfo, resultTo, userId, callingPackage, callingUid);
        r3.task = sourceRecord.task;
        r3.processRecord = sourceRecord.processRecord;
        Intent F = F(userId, intent, activityInfo, r3, Process.myUid());
        F.addFlags(launchMode);
        return z(sourceRecord.processRecord.appThread, F, resolvedType, resultTo, resultWho, requestCode, flags, options);
    }

    private Intent F(int userId, Intent intent, ActivityInfo info, b record, int callingUid) {
        StubActivityRecord stubActivityRecord = new StubActivityRecord(userId, info, intent, record);
        ProcessRecord p3 = com.xinzhu.overmind.server.d.d().p(info.packageName, info.processName, userId, -1, Binder.getCallingUid(), Binder.getCallingPid());
        if (p3 != null) {
            return n(intent, p3.vpid, userId, stubActivityRecord, info, p3.runWithPlugin);
        }
        throw new RuntimeException("Unable to create process, name:" + info.name);
    }

    private void G() {
        List<ActivityManager.RecentTaskInfo> recentTasksContainPlugin = Overmind.get().getRecentTasksContainPlugin(100, 3);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int size = recentTasksContainPlugin.size() - 1; size >= 0; size--) {
            ActivityManager.RecentTaskInfo recentTaskInfo = recentTasksContainPlugin.get(size);
            h hVar = this.f64436b.get(Integer.valueOf(recentTaskInfo.id));
            if (hVar != null) {
                linkedHashMap.put(Integer.valueOf(recentTaskInfo.id), hVar);
            }
        }
        this.f64436b.clear();
        this.f64436b.putAll(linkedHashMap);
    }

    private void b(b activityRecord, Intent intent) {
        try {
            activityRecord.processRecord.client.handleNewIntent(activityRecord.token, intent);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    private void c(int userId) {
        for (h hVar : this.f64436b.values()) {
            for (b bVar : hVar.f64446e) {
                if (bVar.finished) {
                    try {
                        bVar.processRecord.client.finishActivity(bVar.token);
                    } catch (RemoteException e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
    }

    private b d(int userId, ComponentName componentName) {
        b bVar = null;
        for (h hVar : this.f64436b.values()) {
            if (userId == hVar.f64443b) {
                Iterator<b> it2 = hVar.f64446e.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        b next = it2.next();
                        if (next.component.equals(componentName)) {
                            bVar = next;
                            break;
                        }
                    }
                }
            }
        }
        return bVar;
    }

    private b e(int userId, IBinder token) {
        b bVar = null;
        if (token != null) {
            for (h hVar : this.f64436b.values()) {
                if (userId == hVar.f64443b) {
                    Iterator<b> it2 = hVar.f64446e.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            b next = it2.next();
                            if (next.token == token) {
                                bVar = next;
                                break;
                            }
                        }
                    }
                }
            }
        }
        return bVar;
    }

    private b f(IBinder token) {
        b bVar = null;
        if (token != null) {
            for (h hVar : this.f64436b.values()) {
                Iterator<b> it2 = hVar.f64446e.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        b next = it2.next();
                        if (next.token == token) {
                            bVar = next;
                            break;
                        }
                    }
                }
            }
        }
        return bVar;
    }

    private h h(int userId, String taskAffinity) {
        synchronized (this.f64436b) {
            for (h hVar : this.f64436b.values()) {
                if (userId == hVar.f64443b && hVar.f64444c.equals(taskAffinity)) {
                    return hVar;
                }
            }
            return null;
        }
    }

    private h i(int userId, IBinder token) {
        synchronized (this.f64436b) {
            for (h hVar : this.f64436b.values()) {
                if (userId == hVar.f64443b) {
                    for (b bVar : hVar.f64446e) {
                        if (bVar.token == token) {
                            return hVar;
                        }
                    }
                    continue;
                }
            }
            return null;
        }
    }

    private Intent n(Intent intent, int vpid, int userId, StubActivityRecord target, ActivityInfo activityInfo, boolean runWithPlugin) {
        Intent intent2 = new Intent();
        boolean p3 = p(activityInfo, userId);
        boolean q3 = q(activityInfo);
        String pluginPkg = runWithPlugin ? Overmind.getPluginPkg() : Overmind.getHostPkg();
        if (p3) {
            if (!q3) {
                intent2.setComponent(new ComponentName(pluginPkg, com.xinzhu.overmind.client.f.i(vpid)));
            } else {
                intent2.setComponent(new ComponentName(pluginPkg, com.xinzhu.overmind.client.f.j(vpid)));
            }
        } else if (!q3) {
            intent2.setComponent(new ComponentName(pluginPkg, com.xinzhu.overmind.client.f.e(vpid)));
        } else {
            intent2.setComponent(new ComponentName(pluginPkg, com.xinzhu.overmind.client.f.f(vpid)));
        }
        StubActivityRecord.saveStub(intent2, intent, target.mActivityInfo, target.mActivityRecord, target.mUserId);
        intent2.setType(intent.toString());
        return intent2;
    }

    private b o() {
        synchronized (this.f64436b) {
            G();
        }
        LinkedList linkedList = new LinkedList(this.f64436b.values());
        if (linkedList.isEmpty()) {
            return null;
        }
        return ((h) linkedList.get(linkedList.size() - 1)).b();
    }

    private boolean p(ActivityInfo ai, int userId) {
        try {
            Resources appResources = com.xinzhu.overmind.server.pm.h.get().getAppResources(ai.packageName, userId);
            if (appResources != null) {
                TypedArray obtainStyledAttributes = appResources.newTheme().obtainStyledAttributes(ai.theme, a.e.R());
                boolean z3 = obtainStyledAttributes.getBoolean(a.e.X(), false);
                boolean z4 = true;
                boolean z5 = !obtainStyledAttributes.hasValue(a.e.X()) && obtainStyledAttributes.getBoolean(a.e.Z(), false);
                if (!obtainStyledAttributes.getBoolean(a.e.W(), false) && !z3 && !z5) {
                    z4 = false;
                }
                obtainStyledAttributes.recycle();
                String str = f64434d;
                com.xinzhu.overmind.b.a(str, "ifActivityFloating " + z4);
                return z4;
            }
            throw new RuntimeException("ifActivityFloating get Resources failed");
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    private boolean q(ActivityInfo activityInfo) {
        int i2 = activityInfo.screenOrientation;
        return i2 == 0 || i2 == 6 || i2 == 8 || i2 == 11;
    }

    private String x(IBinder token) {
        if (com.xinzhu.overmind.utils.e.f()) {
            return com.xinzhu.haunted.android.app.f.c().c(token);
        }
        return new l(com.xinzhu.haunted.android.app.d.c()).i(token);
    }

    private int y(IBinder token) {
        if (com.xinzhu.overmind.utils.e.f()) {
            return com.xinzhu.haunted.android.app.f.c().d(token);
        }
        return new l(com.xinzhu.haunted.android.app.d.c()).j(token);
    }

    private int z(IInterface appThread, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int flags, Bundle options) {
        try {
            new l(com.xinzhu.haunted.android.app.d.c()).startActivity(appThread, Overmind.getHostPkg(), intent, resolvedType, resultTo, resultWho, requestCode, flags, null, options);
            return 0;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public int A(int userId, String packageName, int callingUid, Intent[] intents, String[] resolvedTypes, IBinder resultTo, Bundle options) {
        Objects.requireNonNull(intents, "intents is null");
        Objects.requireNonNull(resolvedTypes, "resolvedTypes is null");
        if (intents.length == resolvedTypes.length) {
            for (int i2 = 0; i2 < intents.length; i2++) {
                E(userId, packageName, callingUid, intents[i2], resolvedTypes[i2], resultTo, null, -1, 0, options);
            }
            return 0;
        }
        throw new IllegalArgumentException("intents are length different than resolvedTypes");
    }

    public int B(Intent intent) {
        synchronized (this.f64436b) {
            b bVar = (b) StubActivityRecord.create(intent).mActivityRecord;
            if (bVar == null) {
                return -1;
            }
            if (this.f64437c.contains(bVar)) {
                if (bVar.task != null) {
                    b e4 = e(bVar.userId, bVar.resultTo);
                    if (e4 == null || e4.task != bVar.task) {
                        e4 = bVar.task.b();
                    }
                    return z(e4.processRecord.appThread, intent, null, e4.token, null, -1, 0, null);
                }
                Overmind.getContext().startActivity(intent);
                return 0;
            }
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01f8 A[LOOP:3: B:138:0x01f2->B:140:0x01f8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x020c  */
    @android.annotation.SuppressLint({"MissingPermission"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int E(int r22, java.lang.String r23, int r24, android.content.Intent r25, java.lang.String r26, android.os.IBinder r27, java.lang.String r28, int r29, int r30, android.os.Bundle r31) {
        /*
            Method dump skipped, instructions count: 630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xinzhu.overmind.server.am.c.E(int, java.lang.String, int, android.content.Intent, java.lang.String, android.os.IBinder, java.lang.String, int, int, android.os.Bundle):int");
    }

    public boolean a(Intent intent, int flag) {
        return (intent.getFlags() & flag) != 0;
    }

    public h g(int taskId) {
        synchronized (this.f64436b) {
            for (h hVar : this.f64436b.values()) {
                if (hVar.f64442a == taskId) {
                    return hVar;
                }
            }
            return null;
        }
    }

    public ComponentName j(int userId, IBinder token) {
        synchronized (this.f64436b) {
            b e4 = e(userId, token);
            if (e4 == null) {
                return null;
            }
            b e5 = e(userId, e4.resultTo);
            if (e5 == null) {
                return null;
            }
            return e5.component;
        }
    }

    public String k(int userId, IBinder token) {
        synchronized (this.f64436b) {
            b e4 = e(userId, token);
            if (e4 == null) {
                return null;
            }
            b e5 = e(userId, e4.resultTo);
            if (e5 == null) {
                return null;
            }
            return e5.info.packageName;
        }
    }

    public String l(IBinder token) {
        b f4 = f(token);
        if (f4 != null) {
            return f4.launchedFromPackage;
        }
        return x(token);
    }

    public int m(IBinder token) {
        b f4 = f(token);
        if (f4 != null) {
            return f4.launchedFromUid;
        }
        return y(token);
    }

    b r(Intent intent, ActivityInfo info, IBinder resultTo, int userId, String launchedFromPackage, int launchedFromUid) {
        b create = b.create(intent, info, resultTo, userId, launchedFromPackage, launchedFromUid);
        synchronized (this.f64437c) {
            this.f64437c.add(create);
        }
        return create;
    }

    public void s(ProcessRecord processRecord, int taskId, IBinder token, b record) {
        synchronized (this.f64437c) {
            this.f64437c.remove(record);
        }
        synchronized (this.f64436b) {
            G();
            h hVar = this.f64436b.get(Integer.valueOf(taskId));
            if (hVar == null) {
                hVar = new h(taskId, record.userId, r.f(record.info));
                hVar.f64445d = record.intent;
                this.f64436b.put(Integer.valueOf(taskId), hVar);
            }
            record.token = token;
            record.processRecord = processRecord;
            record.task = hVar;
            hVar.a(record);
            StringBuilder sb = new StringBuilder();
            sb.append("onActivityCreated : ");
            sb.append(record.component.toString());
        }
        c(record.userId);
    }

    public void t(int userId, IBinder token) {
        synchronized (this.f64436b) {
            G();
            b e4 = e(userId, token);
            if (e4 == null) {
                return;
            }
            e4.finished = true;
            StringBuilder sb = new StringBuilder();
            sb.append("onActivityDestroyed : ");
            sb.append(e4.component.toString());
            e4.task.d(e4);
        }
    }

    public void u(int userId, IBinder token) {
        synchronized (this.f64436b) {
            G();
            b e4 = e(userId, token);
            if (e4 == null) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("onActivityResumed : ");
            sb.append(e4.component.toString());
            e4.task.d(e4);
            e4.task.a(e4);
        }
    }

    public void v(int userId, IBinder token) {
        synchronized (this.f64436b) {
            b e4 = e(userId, token);
            if (e4 == null) {
                return;
            }
            e4.finished = true;
            StringBuilder sb = new StringBuilder();
            sb.append("onFinishActivity : ");
            sb.append(e4.component.toString());
        }
    }

    public void w(int userId, IBinder token) {
        synchronized (this.f64436b) {
            b e4 = e(userId, token);
            if (e4 == null) {
                return;
            }
            for (b bVar : e4.task.f64446e) {
                bVar.finished = true;
            }
            c(userId);
            StringBuilder sb = new StringBuilder();
            sb.append("onFinishActivityAffinity token : ");
            sb.append(e4.component.toString());
        }
    }
}
