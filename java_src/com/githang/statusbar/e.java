package com.githang.statusbar;

import android.os.Build;
/* compiled from: StatusBarExclude.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    static boolean f13903a;

    public static void a() {
        try {
            Build.class.getMethod("hasSmartBar", new Class[0]);
        } catch (NoSuchMethodException unused) {
            f13903a |= Build.BRAND.contains("Meizu");
        }
    }
}
