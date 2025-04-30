package com.mob.mgs;

import com.mob.mgs.impl.b;
import com.mob.mgs.impl.g;
import com.mob.tools.proguard.EverythingKeeper;
/* loaded from: classes4.dex */
public class MobMGS implements EverythingKeeper {
    public static final String MGS_TAG = "MOBGUARD";

    public static boolean getDS() {
        return b.b();
    }

    public static void setDS(boolean z3) {
        b.a(z3);
    }

    public static void setOnAppActiveListener(OnAppActiveListener onAppActiveListener) {
        if (onAppActiveListener != null) {
            g.a(onAppActiveListener);
        }
    }
}
