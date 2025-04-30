package com.githang.statusbar;

import android.annotation.TargetApi;
import android.view.View;
import android.view.Window;
/* compiled from: StatusBarMImpl.java */
/* loaded from: classes2.dex */
class h implements b {
    @Override // com.githang.statusbar.b
    @TargetApi(23)
    public void a(Window window, int i2, boolean z3) {
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(i2);
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        decorView.setSystemUiVisibility(z3 ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        View findViewById = window.findViewById(16908290);
        if (findViewById != null) {
            findViewById.setForeground(null);
        }
    }
}
