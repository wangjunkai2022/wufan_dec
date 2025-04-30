package com.facebook.imagepipeline.common;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public class RotationOptions {

    /* renamed from: c  reason: collision with root package name */
    public static final int f12535c = 0;

    /* renamed from: d  reason: collision with root package name */
    public static final int f12536d = 90;

    /* renamed from: e  reason: collision with root package name */
    public static final int f12537e = 180;

    /* renamed from: f  reason: collision with root package name */
    public static final int f12538f = 270;

    /* renamed from: g  reason: collision with root package name */
    private static final int f12539g = -1;

    /* renamed from: h  reason: collision with root package name */
    private static final int f12540h = -2;

    /* renamed from: i  reason: collision with root package name */
    private static final RotationOptions f12541i = new RotationOptions(-1, false);

    /* renamed from: j  reason: collision with root package name */
    private static final RotationOptions f12542j = new RotationOptions(-2, false);

    /* renamed from: k  reason: collision with root package name */
    private static final RotationOptions f12543k = new RotationOptions(-1, true);

    /* renamed from: a  reason: collision with root package name */
    private final int f12544a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f12545b;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface RotationAngle {
    }

    private RotationOptions(int i2, boolean z3) {
        this.f12544a = i2;
        this.f12545b = z3;
    }

    public static RotationOptions a() {
        return f12541i;
    }

    public static RotationOptions b() {
        return f12543k;
    }

    public static RotationOptions d() {
        return f12542j;
    }

    public static RotationOptions e(int i2) {
        return new RotationOptions(i2, false);
    }

    public boolean c() {
        return this.f12545b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RotationOptions) {
            RotationOptions rotationOptions = (RotationOptions) obj;
            return this.f12544a == rotationOptions.f12544a && this.f12545b == rotationOptions.f12545b;
        }
        return false;
    }

    public int f() {
        if (!h()) {
            return this.f12544a;
        }
        throw new IllegalStateException("Rotation is set to use EXIF");
    }

    public boolean g() {
        return this.f12544a != -2;
    }

    public boolean h() {
        return this.f12544a == -1;
    }

    public int hashCode() {
        return com.facebook.common.util.b.h(Integer.valueOf(this.f12544a), Boolean.valueOf(this.f12545b));
    }

    public String toString() {
        return String.format(null, "%d defer:%b", Integer.valueOf(this.f12544a), Boolean.valueOf(this.f12545b));
    }
}
