package com.bytedance.sdk.openadsdk.a;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: ActivityLifeCycleListener.java */
/* loaded from: classes2.dex */
class a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private static volatile boolean f10497a;

    /* renamed from: b  reason: collision with root package name */
    private int f10498b = 0;

    /* renamed from: c  reason: collision with root package name */
    private InterfaceC0042a f10499c;

    /* compiled from: ActivityLifeCycleListener.java */
    /* renamed from: com.bytedance.sdk.openadsdk.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0042a {
        void a();

        void b();
    }

    public Boolean a() {
        return Boolean.valueOf(f10497a);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NonNull Activity activity) {
        this.f10498b++;
        f10497a = false;
        InterfaceC0042a interfaceC0042a = this.f10499c;
        if (interfaceC0042a != null) {
            interfaceC0042a.b();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NonNull Activity activity) {
        int i2 = this.f10498b - 1;
        this.f10498b = i2;
        if (i2 == 0) {
            f10497a = true;
            InterfaceC0042a interfaceC0042a = this.f10499c;
            if (interfaceC0042a != null) {
                interfaceC0042a.a();
            }
        }
    }

    public void a(InterfaceC0042a interfaceC0042a) {
        this.f10499c = interfaceC0042a;
    }
}
