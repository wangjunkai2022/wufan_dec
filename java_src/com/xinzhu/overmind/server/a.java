package com.xinzhu.overmind.server;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.res.Configuration;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.JobRecord;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ClientJobServiceManager.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static a f64341b = new a();

    /* renamed from: a  reason: collision with root package name */
    private final Map<Integer, JobRecord> f64342a = new HashMap();

    public static a a() {
        return f64341b;
    }

    Service b(int jobId) {
        Service service;
        synchronized (this.f64342a) {
            JobRecord jobRecord = this.f64342a.get(Integer.valueOf(jobId));
            if (jobRecord == null || (service = jobRecord.f64279c) == null) {
                JobRecord e4 = Overmind.getMindJobManager().e(com.xinzhu.overmind.client.e.getClientConfig().f64269b, jobId);
                if (e4 != null) {
                    e4.f64279c = com.xinzhu.overmind.client.e.getClient().createJobService(e4.f64278b);
                    this.f64342a.put(Integer.valueOf(jobId), e4);
                    return e4.f64279c;
                }
                return null;
            }
            return service;
        }
    }

    public void c(Configuration newConfig) {
        for (JobRecord jobRecord : this.f64342a.values()) {
            Service service = jobRecord.f64279c;
            if (service != null) {
                service.onConfigurationChanged(newConfig);
            }
        }
    }

    public void d() {
    }

    public void e() {
        for (JobRecord jobRecord : this.f64342a.values()) {
            Service service = jobRecord.f64279c;
            if (service != null) {
                service.onLowMemory();
            }
        }
    }

    public boolean f(JobParameters params) {
        try {
            Service b4 = b(params.getJobId());
            if (b4 instanceof JobService) {
                return ((JobService) b4).onStartJob(params);
            }
            return false;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public boolean g(JobParameters params) {
        Service b4 = b(params.getJobId());
        boolean onStopJob = b4 instanceof JobService ? ((JobService) b4).onStopJob(params) : false;
        b4.onDestroy();
        synchronized (this.f64342a) {
            this.f64342a.remove(Integer.valueOf(params.getJobId()));
        }
        return onStopJob;
    }

    public void h(int level) {
        for (JobRecord jobRecord : this.f64342a.values()) {
            Service service = jobRecord.f64279c;
            if (service != null) {
                service.onTrimMemory(level);
            }
        }
    }
}
