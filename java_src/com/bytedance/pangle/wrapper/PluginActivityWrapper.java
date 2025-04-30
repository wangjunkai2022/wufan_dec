package com.bytedance.pangle.wrapper;

import android.annotation.SuppressLint;
import android.app.Activity;
import androidx.annotation.Keep;
import com.bytedance.pangle.PluginContext;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.h;
@Keep
@SuppressLint({"NewApi"})
/* loaded from: classes2.dex */
public class PluginActivityWrapper extends GenerateActivityWrapper {
    public PluginActivityWrapper(Activity activity, PluginContext pluginContext) {
        this.mOriginActivity = activity;
        this.pluginContext = pluginContext;
        if (!activity.isDestroyed()) {
            Zeus.getAppApplication().registerActivityLifecycleCallbacks(new com.bytedance.pangle.a() { // from class: com.bytedance.pangle.wrapper.PluginActivityWrapper.1
                @Override // com.bytedance.pangle.a, android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityDestroyed(Activity activity2) {
                    super.onActivityDestroyed(activity2);
                    if (activity2 == PluginActivityWrapper.this.mOriginActivity) {
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
}
