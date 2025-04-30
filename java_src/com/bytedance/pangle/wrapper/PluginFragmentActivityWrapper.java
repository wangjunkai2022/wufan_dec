package com.bytedance.pangle.wrapper;

import android.app.Activity;
import androidx.annotation.Keep;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import com.bytedance.pangle.PluginContext;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.h;
@Keep
/* loaded from: classes2.dex */
public class PluginFragmentActivityWrapper extends GenerateFragmentActivityWrapper {
    boolean hasInit = true;

    public PluginFragmentActivityWrapper(Activity activity, PluginContext pluginContext) {
        FragmentActivity fragmentActivity = (FragmentActivity) activity;
        this.mOriginActivity = fragmentActivity;
        this.pluginContext = pluginContext;
        if (!fragmentActivity.isDestroyed()) {
            Zeus.getAppApplication().registerActivityLifecycleCallbacks(new com.bytedance.pangle.a() { // from class: com.bytedance.pangle.wrapper.PluginFragmentActivityWrapper.1
                @Override // com.bytedance.pangle.a, android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityDestroyed(Activity activity2) {
                    super.onActivityDestroyed(activity2);
                    if (activity2 == PluginFragmentActivityWrapper.this.mOriginActivity) {
                        Zeus.getAppApplication().unregisterActivityLifecycleCallbacks(this);
                    }
                }
            });
        }
        if (h.f() && h.d()) {
            try {
                FieldUtils.writeField(this, "mWindow", this.mOriginActivity.getWindow());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        try {
            FieldUtils.writeField(this, "mBase", pluginContext);
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        }
        try {
            FieldUtils.writeField(this, "mApplication", activity.getApplication());
        } catch (IllegalAccessException e5) {
            e5.printStackTrace();
        }
        com.bytedance.pangle.util.a.a(this, activity);
    }

    @Override // com.bytedance.pangle.wrapper.GenerateFragmentActivityWrapper, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.lifecycle.LifecycleOwner
    public Lifecycle getLifecycle() {
        if (!this.hasInit) {
            try {
                return new LifecycleRegistry(this);
            } catch (Throwable unused) {
            }
        }
        return super.getLifecycle();
    }

    public Activity getOriginActivity() {
        return this.mOriginActivity;
    }
}
