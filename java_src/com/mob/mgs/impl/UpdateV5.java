package com.mob.mgs.impl;

import com.mob.mgs.MobMGS;
import com.mob.tools.proguard.PublicMemberKeeper;
@Deprecated
/* loaded from: classes4.dex */
public class UpdateV5 implements PublicMemberKeeper {
    public static boolean getDS() {
        return MobMGS.getDS();
    }

    public static void setDS(boolean z3) {
        MobMGS.setDS(z3);
    }
}
