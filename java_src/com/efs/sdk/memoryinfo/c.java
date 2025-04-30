package com.efs.sdk.memoryinfo;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.Process;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c {
    final String activity;
    final String bg;

    /* renamed from: n  reason: collision with root package name */
    final long f11457n;

    /* renamed from: o  reason: collision with root package name */
    final long f11458o;

    /* renamed from: p  reason: collision with root package name */
    final long f11459p;

    /* renamed from: q  reason: collision with root package name */
    final long f11460q;

    /* renamed from: r  reason: collision with root package name */
    final float f11461r;

    /* renamed from: s  reason: collision with root package name */
    final long f11462s;

    /* renamed from: t  reason: collision with root package name */
    final long f11463t;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context) {
        Debug.MemoryInfo[] processMemoryInfo;
        Debug.MemoryInfo memoryInfo = null;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager != null && (processMemoryInfo = activityManager.getProcessMemoryInfo(new int[]{Process.myPid()})) != null && processMemoryInfo.length > 0) {
                memoryInfo = processMemoryInfo[0];
            }
        } catch (Throwable unused) {
        }
        if (memoryInfo == null) {
            memoryInfo = new Debug.MemoryInfo();
            Debug.getMemoryInfo(memoryInfo);
        }
        this.bg = UMMemoryMonitor.get().isForeground() ? "fg" : "bg";
        this.f11457n = memoryInfo.getTotalPss() * 1024;
        this.f11458o = memoryInfo.dalvikPss * 1024;
        this.f11459p = memoryInfo.nativePss * 1024;
        this.f11462s = f.a(memoryInfo) * 1024;
        long freeMemory = Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
        this.f11460q = freeMemory;
        long maxMemory = Runtime.getRuntime().maxMemory();
        if (maxMemory != 0) {
            this.f11461r = (((float) freeMemory) * 1.0f) / ((float) maxMemory);
        } else {
            this.f11461r = 1.0f;
        }
        this.f11463t = f.a() * 1024;
        this.activity = UMMemoryMonitor.get().getCurrentActivity();
    }
}
