package com.yatoooon.screenadaptation;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
/* compiled from: ActualScreen.java */
/* loaded from: classes3.dex */
public class b {
    public static float[] a(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return new float[]{displayMetrics.widthPixels, displayMetrics.heightPixels, displayMetrics.density, displayMetrics.densityDpi};
    }
}
