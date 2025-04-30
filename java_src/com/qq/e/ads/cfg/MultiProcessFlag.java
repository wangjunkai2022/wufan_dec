package com.qq.e.ads.cfg;

import com.qq.e.comm.util.GDTLogger;
/* loaded from: classes4.dex */
public class MultiProcessFlag {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f56287a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f56288b;

    public static boolean isMultiProcess() {
        return f56287a;
    }

    public static void setMultiProcess(boolean z3) {
        if (f56288b) {
            GDTLogger.w("MultiProcessFlag已经设置过，再次设置无效");
            return;
        }
        f56288b = true;
        f56287a = z3;
    }
}
