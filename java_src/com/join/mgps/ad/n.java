package com.join.mgps.ad;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* compiled from: ViewUtils.java */
/* loaded from: classes3.dex */
public class n {
    public static void a(View view) {
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
        }
    }
}
