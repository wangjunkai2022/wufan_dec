package com.meituan.android.walle;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.util.Map;
/* compiled from: WalleChannelReader.java */
/* loaded from: classes4.dex */
public final class g {
    private g() {
    }

    @Nullable
    public static String a(@NonNull Context context, @NonNull String str) {
        Map<String, String> f4 = f(context);
        if (f4 == null) {
            return null;
        }
        return f4.get(str);
    }

    @Nullable
    private static String b(@NonNull Context context) {
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo == null) {
                return null;
            }
            return applicationInfo.sourceDir;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    public static String c(@NonNull Context context) {
        return d(context, null);
    }

    @Nullable
    public static String d(@NonNull Context context, @NonNull String str) {
        c e4 = e(context);
        return e4 == null ? str : e4.a();
    }

    @Nullable
    public static c e(@NonNull Context context) {
        String b4 = b(context);
        if (TextUtils.isEmpty(b4)) {
            return null;
        }
        return d.a(new File(b4));
    }

    @Nullable
    public static Map<String, String> f(@NonNull Context context) {
        String b4 = b(context);
        if (TextUtils.isEmpty(b4)) {
            return null;
        }
        return d.b(new File(b4));
    }
}
