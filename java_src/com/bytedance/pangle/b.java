package com.bytedance.pangle;

import android.os.Build;
import com.bytedance.pangle.flipped.FlippedV2Impl;
/* loaded from: classes2.dex */
public final class b {
    public static void a() {
        com.bytedance.pangle.flipped.c aVar;
        int i2 = Build.VERSION.SDK_INT;
        boolean z3 = false;
        if (i2 >= 30 || (i2 == 29 && Build.VERSION.PREVIEW_SDK_INT > 0)) {
            aVar = new FlippedV2Impl();
        } else {
            if (i2 >= 28 || (i2 == 27 && Build.VERSION.PREVIEW_SDK_INT > 0)) {
                z3 = true;
            }
            if (z3) {
                aVar = new com.bytedance.pangle.flipped.b();
            } else {
                aVar = new com.bytedance.pangle.flipped.a();
            }
        }
        aVar.invokeHiddenApiRestrictions();
    }
}
