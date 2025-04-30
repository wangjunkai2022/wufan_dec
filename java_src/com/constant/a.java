package com.constant;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
/* compiled from: QdUtil.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    static String f11066a = "";

    public static String a(Context context) {
        if (TextUtils.isEmpty(f11066a)) {
            if (context == null) {
                return "";
            }
            try {
                String str = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getInt("qd_code") + "";
                f11066a = str;
                return str;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                return "-1";
            }
        }
        return f11066a;
    }

    public static int b(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getInt("wf_single");
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return 0;
        }
    }
}
