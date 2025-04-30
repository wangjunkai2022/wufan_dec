package com.netease.nis.quicklogin.listener;

import android.app.Activity;
/* loaded from: classes4.dex */
public interface ActivityLifecycleCallbacks {
    void onCreate(Activity activity);

    void onDestroy(Activity activity);

    void onPause(Activity activity);

    void onResume(Activity activity);

    void onStart(Activity activity);

    void onStop(Activity activity);
}
