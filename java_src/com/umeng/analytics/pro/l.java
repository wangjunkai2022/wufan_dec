package com.umeng.analytics.pro;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.umeng.commonsdk.debug.UMRTLog;
import java.util.ArrayList;
/* compiled from: BackgroundMonitor.java */
/* loaded from: classes4.dex */
public class l implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private static l f60803a = new l();

    /* renamed from: b  reason: collision with root package name */
    private final int f60804b = 3000;

    /* renamed from: c  reason: collision with root package name */
    private boolean f60805c = false;

    /* renamed from: d  reason: collision with root package name */
    private boolean f60806d = true;

    /* renamed from: e  reason: collision with root package name */
    private Handler f60807e = new Handler(Looper.getMainLooper());

    /* renamed from: f  reason: collision with root package name */
    private ArrayList<m> f60808f = new ArrayList<>();

    /* renamed from: g  reason: collision with root package name */
    private a f60809g = new a();

    /* compiled from: BackgroundMonitor.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (l.this.f60805c && l.this.f60806d) {
                l.this.f60805c = false;
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> went background.");
                for (int i2 = 0; i2 < l.this.f60808f.size(); i2++) {
                    ((m) l.this.f60808f.get(i2)).n();
                }
                return;
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> still foreground.");
        }
    }

    private l() {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f60806d = true;
        a aVar = this.f60809g;
        if (aVar != null) {
            this.f60807e.removeCallbacks(aVar);
            this.f60807e.postDelayed(this.f60809g, 3000L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.f60806d = false;
        this.f60805c = true;
        a aVar = this.f60809g;
        if (aVar != null) {
            this.f60807e.removeCallbacks(aVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    public synchronized void b(m mVar) {
        if (mVar != null) {
            for (int i2 = 0; i2 < this.f60808f.size(); i2++) {
                if (this.f60808f.get(i2) == mVar) {
                    this.f60808f.remove(i2);
                }
            }
        }
    }

    public static void a(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(f60803a);
        }
    }

    public static l a() {
        return f60803a;
    }

    public synchronized void a(m mVar) {
        if (mVar != null) {
            this.f60808f.add(mVar);
        }
    }
}
