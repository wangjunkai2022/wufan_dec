package com.efs.sdk.base.core.util;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import java.io.File;
import java.util.UUID;
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static volatile String f11408a = "";

    public static String a(Context context) {
        if (TextUtils.isEmpty(f11408a)) {
            synchronized (f.class) {
                if (TextUtils.isEmpty(f11408a)) {
                    String b4 = b(context);
                    f11408a = b4;
                    if (TextUtils.isEmpty(b4)) {
                        f11408a = c(context);
                    }
                }
            }
        }
        return f11408a;
    }

    private static String b(Context context) {
        try {
            File file = new File(a.a(context), "efsid");
            if (file.exists()) {
                return b.a(file);
            }
            return null;
        } catch (Exception e4) {
            d.b("efs.base", "get uuid error", e4);
            return null;
        }
    }

    private static String c(Context context) {
        String str = "";
        for (int i2 = 0; i2 < 3; i2++) {
            try {
                str = UUID.randomUUID().toString();
            } catch (Throwable unused) {
            }
            if (TextUtils.isEmpty(str)) {
            }
        }
        try {
            File a4 = a.a(context);
            File file = new File(a4, "efsid" + Process.myPid());
            if (file.exists()) {
                file.delete();
            }
            file.createNewFile();
            b.a(file, str);
            if (file.renameTo(new File(a4, "efsid"))) {
                file.delete();
            }
        } catch (Exception e4) {
            d.b("efs.base", "save uuid '" + str + "' error", e4);
        }
        return str;
    }
}
