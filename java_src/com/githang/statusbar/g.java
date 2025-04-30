package com.githang.statusbar;

import android.annotation.TargetApi;
import android.view.Window;
/* compiled from: StatusBarLollipopImpl.java */
/* loaded from: classes2.dex */
class g implements b {
    @Override // com.githang.statusbar.b
    @TargetApi(21)
    public void a(Window window, int i2, boolean z3) {
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(i2);
        d.a(window, z3);
    }
}
