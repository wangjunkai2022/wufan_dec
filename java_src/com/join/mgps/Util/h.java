package com.join.mgps.Util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.util.DisplayMetrics;
/* compiled from: AppUtils.java */
/* loaded from: classes3.dex */
public class h {
    public static String a() {
        return Build.MODEL;
    }

    public static int b(Context context, String str) {
        return context.getResources().getIdentifier(str, "drawable", context.getPackageName());
    }

    public static String c(Exception exc) {
        StringBuffer stringBuffer = new StringBuffer();
        for (StackTraceElement stackTraceElement : exc.getStackTrace()) {
            try {
                stringBuffer.append(stackTraceElement.toString());
            } catch (Exception unused) {
            }
        }
        return stringBuffer.toString();
    }

    public static int d(String str) {
        try {
            return Color.parseColor(str.trim());
        } catch (Exception unused) {
            return Long.decode("0xff626262").intValue();
        }
    }

    public static DisplayMetrics e(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }
}
