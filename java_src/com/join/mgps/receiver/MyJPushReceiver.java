package com.join.mgps.receiver;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.Util.u0;
/* loaded from: classes4.dex */
public class MyJPushReceiver extends BroadcastReceiver {

    /* renamed from: b  reason: collision with root package name */
    private static final String f51457b = "JIGUANG-Example";

    /* renamed from: a  reason: collision with root package name */
    private String f51458a;

    private boolean a(Context context) {
        ComponentName componentName = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1).get(0).topActivity;
        u0.c(f51457b, "cn.getClassName():" + componentName.getClassName());
        return componentName.getClassName().contains("MessageMainActivity");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
    }
}
