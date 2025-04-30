package com.google.android.material.internal;

import android.os.Build;
import androidx.annotation.RestrictTo;
import java.util.Locale;
/* compiled from: ManufacturerUtils.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f15146a = "lge";

    /* renamed from: b  reason: collision with root package name */
    private static final String f15147b = "samsung";

    /* renamed from: c  reason: collision with root package name */
    private static final String f15148c = "meizu";

    private f() {
    }

    public static boolean a() {
        return b() || d();
    }

    public static boolean b() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals(f15146a);
    }

    public static boolean c() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals(f15148c);
    }

    public static boolean d() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals(f15147b);
    }
}
