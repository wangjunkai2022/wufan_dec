package com.xinzhu.overmind.client.hook.delegate;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.IBinder;
/* compiled from: ActivityLifecycleDelegate.java */
/* loaded from: classes.dex */
public class a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public static a f64098a = new C0403a();

    /* compiled from: ActivityLifecycleDelegate.java */
    /* renamed from: com.xinzhu.overmind.client.hook.delegate.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0403a extends a {
        C0403a() {
        }
    }

    private IBinder a(Activity activity) {
        return new com.xinzhu.haunted.android.app.a(activity).l();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
