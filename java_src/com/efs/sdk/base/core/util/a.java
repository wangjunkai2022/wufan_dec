package com.efs.sdk.base.core.util;

import android.content.Context;
import com.join.mgps.activity.UploadActivity;
import java.io.File;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f11386a = "efs";

    /* renamed from: b  reason: collision with root package name */
    private static File f11387b;

    public static void a(String str) {
        f11386a = str;
    }

    public static File b(Context context, String str) {
        return new File(g(context, str), "efs_config");
    }

    public static File c(Context context, String str) {
        return new File(g(context, str), "efs_flow");
    }

    public static File d(Context context, String str) {
        File file = new File(g(context, str), "ready");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File e(Context context, String str) {
        File file = new File(d(context, str), String.valueOf(e.a()));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File f(Context context, String str) {
        File file = new File(g(context, str), UploadActivity.f36007o0);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private static File g(Context context, String str) {
        if (f11387b == null) {
            synchronized (a.class) {
                if (f11387b == null) {
                    f11387b = a(context);
                }
            }
        }
        File file = new File(f11387b, str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File a(Context context) {
        File dir = context.getDir(f11386a, 0);
        if (!dir.exists()) {
            dir.mkdirs();
        }
        return dir;
    }

    public static File a(Context context, String str) {
        return new File(g(context, str), "efs_cst");
    }
}
