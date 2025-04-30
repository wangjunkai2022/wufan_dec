package com.join.mgps.wrapper;

import android.annotation.TargetApi;
import android.app.Activity;
import android.view.MenuItem;
import android.view.View;
/* compiled from: Wrapper11.java */
@TargetApi(11)
/* loaded from: classes4.dex */
public class b {
    public static void a(Activity activity) {
        activity.invalidateOptionsMenu();
    }

    public static void b(MenuItem menuItem, boolean z3) {
        menuItem.setShowAsAction(z3 ? 6 : 0);
    }

    static void c(View view, int i2) {
        view.setSystemUiVisibility(i2);
    }

    public static void d(Activity activity) {
    }

    public static void e(Activity activity) {
    }
}
