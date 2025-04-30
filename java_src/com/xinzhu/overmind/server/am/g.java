package com.xinzhu.overmind.server.am;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Binder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.JobRecord;
import com.xinzhu.overmind.server.ProcessRecord;
import com.xinzhu.overmind.server.am.e;
import java.util.HashMap;
import java.util.Map;
/* compiled from: MindJobManagerService.java */
/* loaded from: classes.dex */
public class g extends e.b implements com.xinzhu.overmind.server.c {
    private static g sService = new g();
    private Map<String, JobRecord> mJobRecords = new HashMap();

    private String formatKey(String processName, int jobId) {
        return processName + "_" + jobId;
    }

    public static g get() {
        return sService;
    }

    @Override // com.xinzhu.overmind.server.am.e
    public int cancel(String processName, int jobId, int userId) throws RemoteException {
        return jobId;
    }

    @Override // com.xinzhu.overmind.server.am.e
    public void cancelAll(String processName, int userId) throws RemoteException {
        if (TextUtils.isEmpty(processName)) {
            return;
        }
        for (String str : this.mJobRecords.keySet()) {
            if (str.startsWith(processName + "_")) {
                this.mJobRecords.get(str);
            }
        }
    }

    @Override // com.xinzhu.overmind.server.am.e
    public JobRecord queryJobRecord(String processName, int jobId, int userId) throws RemoteException {
        return this.mJobRecords.get(formatKey(processName, jobId));
    }

    @Override // com.xinzhu.overmind.server.am.e
    public JobInfo schedule(JobInfo info, int userId) throws RemoteException {
        ComponentName service = info.getService();
        Intent intent = new Intent();
        intent.setComponent(service);
        ResolveInfo resolveService = com.xinzhu.overmind.server.pm.h.get().resolveService(intent, 128, null, userId);
        if (resolveService == null) {
            return info;
        }
        ServiceInfo serviceInfo = resolveService.serviceInfo;
        ProcessRecord c4 = com.xinzhu.overmind.server.d.d().c(serviceInfo.packageName, serviceInfo.processName, userId);
        if (c4 == null && (c4 = com.xinzhu.overmind.server.d.d().p(serviceInfo.packageName, serviceInfo.processName, userId, -1, Binder.getCallingUid(), Binder.getCallingPid())) == null) {
            throw new RuntimeException("Unable to create Process " + serviceInfo.processName);
        }
        return scheduleJob(c4, info, serviceInfo);
    }

    public JobInfo scheduleJob(ProcessRecord processRecord, JobInfo info, ServiceInfo serviceInfo) {
        JobRecord jobRecord = new JobRecord();
        jobRecord.f64277a = info;
        jobRecord.f64278b = serviceInfo;
        this.mJobRecords.put(formatKey(processRecord.processName, info.getId()), jobRecord);
        new com.xinzhu.haunted.android.app.job.b(info).f(new ComponentName(processRecord.runWithPlugin ? Overmind.getPluginPkg() : Overmind.getMainPkg(), com.xinzhu.overmind.client.f.k(processRecord.vpid)));
        return info;
    }

    @Override // com.xinzhu.overmind.server.c
    public void systemReady() {
    }
}
