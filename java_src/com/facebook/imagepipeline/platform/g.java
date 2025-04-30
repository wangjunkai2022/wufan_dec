package com.facebook.imagepipeline.platform;

import android.os.Build;
import androidx.core.util.Pools;
import com.facebook.imagepipeline.memory.d0;
/* compiled from: PlatformDecoderFactory.java */
/* loaded from: classes2.dex */
public class g {
    public static f a(d0 d0Var, boolean z3) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            int d4 = d0Var.d();
            return new e(d0Var.a(), d4, new Pools.SynchronizedPool(d4));
        } else if (i2 >= 21) {
            int d5 = d0Var.d();
            return new a(d0Var.a(), d5, new Pools.SynchronizedPool(d5));
        } else if (z3 && i2 < 19) {
            return new c();
        } else {
            return new d(d0Var.c());
        }
    }
}
