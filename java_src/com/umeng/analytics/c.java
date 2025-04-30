package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
/* compiled from: InternalConfig.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static String[] f60370a = new String[2];

    public static void a(Context context, String str, String str2) {
        String[] strArr = f60370a;
        strArr[0] = str;
        strArr[1] = str2;
        if (context != null) {
            com.umeng.common.b.a(context).a(str, str2);
        }
    }

    public static void b(Context context) {
        String[] strArr = f60370a;
        strArr[0] = null;
        strArr[1] = null;
        if (context != null) {
            com.umeng.common.b.a(context).b();
        }
    }

    public static String[] a(Context context) {
        String[] a4;
        if (TextUtils.isEmpty(f60370a[0]) || TextUtils.isEmpty(f60370a[1])) {
            if (context == null || (a4 = com.umeng.common.b.a(context).a()) == null) {
                return null;
            }
            String[] strArr = f60370a;
            strArr[0] = a4[0];
            strArr[1] = a4[1];
            return strArr;
        }
        return f60370a;
    }
}
