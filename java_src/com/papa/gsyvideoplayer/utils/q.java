package com.papa.gsyvideoplayer.utils;

import android.content.Context;
import android.os.Environment;
import java.io.File;
/* compiled from: StorageUtils.java */
/* loaded from: classes4.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private static final String f55316a = "video-cache";

    private static File a(Context context, boolean z3) {
        String str;
        try {
            str = Environment.getExternalStorageState();
        } catch (NullPointerException unused) {
            str = "";
        }
        File b4 = (z3 && "mounted".equals(str)) ? b(context) : null;
        if (b4 == null) {
            b4 = context.getCacheDir();
        }
        if (b4 == null) {
            return new File("/data/data/" + context.getPackageName() + "/cache/");
        }
        return b4;
    }

    private static File b(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), "cache");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    public static File c(Context context) {
        return new File(a(context, true), f55316a);
    }
}
