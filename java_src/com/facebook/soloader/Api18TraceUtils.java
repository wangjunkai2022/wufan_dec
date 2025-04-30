package com.facebook.soloader;

import android.annotation.TargetApi;
import android.os.Trace;
@DoNotOptimize
@TargetApi(18)
/* loaded from: classes2.dex */
class Api18TraceUtils {
    Api18TraceUtils() {
    }

    public static void a(String str) {
        Trace.beginSection(str);
    }

    public static void b() {
        Trace.endSection();
    }
}
