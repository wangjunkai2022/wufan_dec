package com.yatoooon.screenadaptation;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
/* compiled from: ScreenAdapterTools.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static com.yatoooon.screenadaptation.a f64812a;

    /* compiled from: ScreenAdapterTools.java */
    /* loaded from: classes3.dex */
    static class a implements b {
        a() {
        }

        @Override // com.yatoooon.screenadaptation.e.b
        public com.yatoooon.screenadaptation.a a(Context context, int i2, int i4, float f4, String str) {
            return new d(context, i2, i4, f4, str);
        }
    }

    /* compiled from: ScreenAdapterTools.java */
    /* loaded from: classes3.dex */
    public interface b {
        com.yatoooon.screenadaptation.a a(Context context, int i2, int i4, float f4, String str);
    }

    public static com.yatoooon.screenadaptation.a a() {
        return f64812a;
    }

    public static void b(Context context) {
        c(context, new a());
    }

    public static void c(Context context, b bVar) {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            applicationInfo = null;
        }
        f64812a = bVar.a(context, applicationInfo.metaData.getInt("designwidth"), applicationInfo.metaData.getInt("designdpi"), applicationInfo.metaData.getFloat("fontsize"), applicationInfo.metaData.getString("unit"));
    }
}
