package com.cmic.sso.sdk.view;

import android.content.Context;
import android.content.res.Resources;
/* compiled from: ResourceUtil.java */
/* loaded from: classes2.dex */
public class b {
    public static int a(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, context.getPackageName());
    }

    public static int b(Context context, String str) {
        int a4 = a(context, str, "drawable");
        if (a4 != 0) {
            return a4;
        }
        throw new Resources.NotFoundException(str);
    }

    public static int c(Context context, String str) {
        int a4 = a(context, str, "anim");
        if (a4 != 0) {
            return a4;
        }
        throw new Resources.NotFoundException(str);
    }

    public static int a(Context context, String str) {
        int a4 = a(context, str, "id");
        if (a4 != 0) {
            return a4;
        }
        throw new Resources.NotFoundException(str);
    }
}
