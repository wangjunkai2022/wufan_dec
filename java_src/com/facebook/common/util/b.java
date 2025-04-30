package com.facebook.common.util;

import javax.annotation.Nullable;
/* compiled from: HashCodeUtil.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int f11758a = 31;

    public static int a(int i2) {
        return i2 + 31;
    }

    public static int b(int i2, int i4) {
        return ((i2 + 31) * 31) + i4;
    }

    public static int c(int i2, int i4, int i5) {
        return ((((i2 + 31) * 31) + i4) * 31) + i5;
    }

    public static int d(int i2, int i4, int i5, int i6) {
        return ((((((i2 + 31) * 31) + i4) * 31) + i5) * 31) + i6;
    }

    public static int e(int i2, int i4, int i5, int i6, int i7) {
        return ((((((((i2 + 31) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7;
    }

    public static int f(int i2, int i4, int i5, int i6, int i7, int i8) {
        return ((((((((((i2 + 31) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8;
    }

    public static int g(@Nullable Object obj) {
        return a(obj == null ? 0 : obj.hashCode());
    }

    public static int h(@Nullable Object obj, @Nullable Object obj2) {
        return b(obj == null ? 0 : obj.hashCode(), obj2 != null ? obj2.hashCode() : 0);
    }

    public static int i(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3) {
        return c(obj == null ? 0 : obj.hashCode(), obj2 == null ? 0 : obj2.hashCode(), obj3 != null ? obj3.hashCode() : 0);
    }

    public static int j(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4) {
        return d(obj == null ? 0 : obj.hashCode(), obj2 == null ? 0 : obj2.hashCode(), obj3 == null ? 0 : obj3.hashCode(), obj4 != null ? obj4.hashCode() : 0);
    }

    public static int k(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5) {
        return e(obj == null ? 0 : obj.hashCode(), obj2 == null ? 0 : obj2.hashCode(), obj3 == null ? 0 : obj3.hashCode(), obj4 == null ? 0 : obj4.hashCode(), obj5 != null ? obj5.hashCode() : 0);
    }

    public static int l(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6) {
        return f(obj == null ? 0 : obj.hashCode(), obj2 == null ? 0 : obj2.hashCode(), obj3 == null ? 0 : obj3.hashCode(), obj4 == null ? 0 : obj4.hashCode(), obj5 == null ? 0 : obj5.hashCode(), obj6 == null ? 0 : obj6.hashCode());
    }
}
