package com.xinzhu.overmind.utils.helpers;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
/* compiled from: StartActivityHelper.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static int f64709a;

    /* renamed from: b  reason: collision with root package name */
    private static int f64710b;

    /* renamed from: c  reason: collision with root package name */
    private static int f64711c;

    /* renamed from: d  reason: collision with root package name */
    private static int f64712d;

    /* renamed from: e  reason: collision with root package name */
    private static int f64713e;

    /* renamed from: f  reason: collision with root package name */
    private static int f64714f;

    /* renamed from: g  reason: collision with root package name */
    private static int f64715g;

    /* renamed from: h  reason: collision with root package name */
    private static int f64716h;

    /* renamed from: i  reason: collision with root package name */
    private static int f64717i;

    /* renamed from: j  reason: collision with root package name */
    private static int f64718j;

    /* renamed from: k  reason: collision with root package name */
    private static int f64719k;

    /* renamed from: l  reason: collision with root package name */
    private static int f64720l;

    static {
        if (com.xinzhu.overmind.utils.e.g()) {
            int i2 = f64709a;
            int i4 = i2 + 1;
            f64709a = i4;
            f64710b = i2;
            int i5 = i4 + 1;
            f64709a = i5;
            f64711c = i4;
            int i6 = i5 + 1;
            f64709a = i6;
            f64712d = i5;
            int i7 = i6 + 1;
            f64709a = i7;
            f64713e = i6;
            int i8 = i7 + 1;
            f64709a = i8;
            f64714f = i7;
            int i9 = i8 + 1;
            f64709a = i9;
            f64715g = i8;
            int i10 = i9 + 1;
            f64709a = i10;
            f64716h = i9;
            int i11 = i10 + 1;
            f64709a = i11;
            f64717i = i10;
            int i12 = i11 + 1;
            f64709a = i12;
            f64718j = i11;
            int i13 = i12 + 1;
            f64709a = i13;
            f64719k = i12;
            f64709a = i13 + 1;
            f64720l = i13;
            return;
        }
        int i14 = f64709a;
        int i15 = i14 + 1;
        f64709a = i15;
        f64710b = i14;
        int i16 = i15 + 1;
        f64709a = i16;
        f64711c = i15;
        int i17 = i16 + 1;
        f64709a = i17;
        f64713e = i16;
        int i18 = i17 + 1;
        f64709a = i18;
        f64714f = i17;
        int i19 = i18 + 1;
        f64709a = i19;
        f64715g = i18;
        int i20 = i19 + 1;
        f64709a = i20;
        f64716h = i19;
        int i21 = i20 + 1;
        f64709a = i21;
        f64717i = i20;
        int i22 = i21 + 1;
        f64709a = i22;
        f64718j = i21;
        int i23 = i22 + 1;
        f64709a = i23;
        f64719k = i22;
        f64709a = i23 + 1;
        f64720l = i23;
    }

    public static void A(int requestCodeIndex) {
        f64717i = requestCodeIndex;
    }

    public static void B(int resolvedTypeIndex) {
        f64714f = resolvedTypeIndex;
    }

    public static void C(int resultToIndex) {
        f64715g = resultToIndex;
    }

    public static void D(int resultWhoIndex) {
        f64716h = resultWhoIndex;
    }

    public static int a() {
        return f64710b;
    }

    public static String b(Object[] args) {
        if (args != null) {
            int length = args.length;
            int i2 = f64711c;
            if (length < i2) {
                return null;
            }
            return (String) args[i2];
        }
        return null;
    }

    public static int c() {
        return f64711c;
    }

    public static int d(Object[] args) {
        if (args != null) {
            int length = args.length;
            int i2 = f64718j;
            if (length < i2) {
                return -1;
            }
            return ((Integer) args[i2]).intValue();
        }
        return -1;
    }

    public static int e() {
        return f64718j;
    }

    public static Object f(Object[] args) {
        if (args != null) {
            int length = args.length;
            int i2 = f64710b;
            if (length < i2) {
                return null;
            }
            return args[i2];
        }
        return null;
    }

    public static Intent g(Object[] args) {
        if (args != null) {
            int length = args.length;
            int i2 = f64713e;
            if (length < i2) {
                return null;
            }
            return (Intent) args[i2];
        }
        return null;
    }

    public static int h() {
        return f64713e;
    }

    public static Bundle i(Object[] args) {
        if (args != null) {
            int length = args.length;
            int i2 = f64720l;
            if (length < i2) {
                return null;
            }
            return (Bundle) args[i2];
        }
        return null;
    }

    public static int j() {
        return f64720l;
    }

    public static Object k(Object[] args) {
        if (args != null) {
            int length = args.length;
            int i2 = f64719k;
            if (length < i2) {
                return null;
            }
            return args[i2];
        }
        return null;
    }

    public static int l() {
        return f64719k;
    }

    public static int m(Object[] args) {
        if (args != null) {
            int length = args.length;
            int i2 = f64717i;
            if (length < i2) {
                return -1;
            }
            return ((Integer) args[i2]).intValue();
        }
        return -1;
    }

    public static int n() {
        return f64717i;
    }

    public static String o(Object[] args) {
        if (args != null) {
            int length = args.length;
            int i2 = f64714f;
            if (length < i2) {
                return null;
            }
            return (String) args[i2];
        }
        return null;
    }

    public static int p() {
        return f64714f;
    }

    public static IBinder q(Object[] args) {
        if (args != null) {
            int length = args.length;
            int i2 = f64715g;
            if (length < i2) {
                return null;
            }
            return (IBinder) args[i2];
        }
        return null;
    }

    public static int r() {
        return f64715g;
    }

    public static String s(Object[] args) {
        if (args != null) {
            int length = args.length;
            int i2 = f64716h;
            if (length < i2) {
                return null;
            }
            return (String) args[i2];
        }
        return null;
    }

    public static int t() {
        return f64716h;
    }

    public static void u(int appThreadIndex) {
        f64710b = appThreadIndex;
    }

    public static void v(int callingPageIndex) {
        f64711c = callingPageIndex;
    }

    public static void w(int flagsIndex) {
        f64718j = flagsIndex;
    }

    public static void x(int intentIndex) {
        f64713e = intentIndex;
    }

    public static void y(int optionsIndex) {
        f64720l = optionsIndex;
    }

    public static void z(int profilerInfoIndex) {
        f64719k = profilerInfoIndex;
    }
}
