package com.uc.crashsdk;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.Map;
import java.util.WeakHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProGuard */
/* loaded from: classes4.dex */
public final class c implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private boolean f60252a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f60253b = false;

    private void a(Activity activity, int i2) {
        WeakHashMap weakHashMap;
        WeakHashMap weakHashMap2;
        if (1 == i2) {
            String unused = b.ac = activity.getComponentName().flattenToShortString();
        } else {
            String unused2 = b.ac = "";
        }
        b.A();
        if (g.J()) {
            b.L();
            weakHashMap = b.aa;
            synchronized (weakHashMap) {
                weakHashMap2 = b.aa;
                weakHashMap2.put(activity, Integer.valueOf(i2));
                a(i2);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(activity, 2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        WeakHashMap weakHashMap;
        WeakHashMap weakHashMap2;
        if (g.J()) {
            b.L();
            weakHashMap = b.aa;
            synchronized (weakHashMap) {
                weakHashMap2 = b.aa;
                weakHashMap2.remove(activity);
                a(2);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(activity, 2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(activity, 1);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(activity, 1);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(activity, 2);
    }

    private void a(int i2) {
        WeakHashMap weakHashMap;
        WeakHashMap weakHashMap2;
        if (e.t()) {
            com.uc.crashsdk.a.a.a("crashsdk", "[LifeCycle] ignore state change while crashing");
            return;
        }
        boolean z3 = true;
        boolean z4 = 1 == i2;
        if (!z4) {
            weakHashMap2 = b.aa;
            for (Map.Entry entry : weakHashMap2.entrySet()) {
                Object value = entry.getValue();
                if (value != null && ((Integer) value).intValue() == 1) {
                    break;
                }
            }
        }
        z3 = z4;
        if (this.f60252a != z3) {
            b.b(z3);
            this.f60252a = z3;
        }
        weakHashMap = b.aa;
        boolean isEmpty = weakHashMap.isEmpty();
        if (this.f60253b != isEmpty) {
            if (isEmpty) {
                b.t();
            }
            this.f60253b = isEmpty;
        }
    }
}
