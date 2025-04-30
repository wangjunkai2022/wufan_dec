package com.join.mgps.pulltorefresh.library.internal;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
/* compiled from: ViewCompat.java */
/* loaded from: classes4.dex */
public class c {

    /* compiled from: ViewCompat.java */
    @TargetApi(11)
    /* loaded from: classes4.dex */
    static class a {
        a() {
        }

        public static void a(View view, int i2) {
            view.setLayerType(i2, null);
        }
    }

    /* compiled from: ViewCompat.java */
    @TargetApi(16)
    /* loaded from: classes4.dex */
    static class b {
        b() {
        }

        public static void a(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        public static void b(View view, Drawable drawable) {
            view.setBackground(drawable);
        }
    }

    public static void a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            b.a(view, runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }

    public static void b(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            b.b(view, drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    public static void c(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 11) {
            a.a(view, i2);
        }
    }
}
