package com.xinzhu.overmind.client.frameworks;

import android.app.job.JobInfo;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.JobRecord;
import com.xinzhu.overmind.server.am.e;
/* compiled from: MindJobManager.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private static d f64060b = new d();

    /* renamed from: a  reason: collision with root package name */
    private com.xinzhu.overmind.server.am.e f64061a;

    public static d c() {
        return f64060b;
    }

    private com.xinzhu.overmind.server.am.e d() {
        com.xinzhu.overmind.server.am.e eVar = this.f64061a;
        if (eVar != null && eVar.asBinder().isBinderAlive()) {
            return this.f64061a;
        }
        this.f64061a = e.b.asInterface(Overmind.get().getService(com.xinzhu.overmind.server.g.f64477d));
        return d();
    }

    public int a(String processName, int jobId) {
        try {
            return d().cancel(processName, jobId, com.xinzhu.overmind.client.e.getUserId());
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return -1;
        }
    }

    public void b(String processName) {
        try {
            d().cancelAll(processName, com.xinzhu.overmind.client.e.getUserId());
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public JobRecord e(String processName, int jobId) {
        try {
            return d().queryJobRecord(processName, jobId, com.xinzhu.overmind.client.e.getUserId());
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public JobInfo f(JobInfo info) {
        try {
            return d().schedule(info, com.xinzhu.overmind.client.e.getUserId());
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
