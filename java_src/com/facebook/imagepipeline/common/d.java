package com.facebook.imagepipeline.common;

import com.facebook.common.internal.h;
import javax.annotation.Nullable;
/* compiled from: ResizeOptions.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: e  reason: collision with root package name */
    public static final float f12569e = 0.6666667f;

    /* renamed from: a  reason: collision with root package name */
    public final int f12570a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12571b;

    /* renamed from: c  reason: collision with root package name */
    public final float f12572c;

    /* renamed from: d  reason: collision with root package name */
    public final float f12573d;

    public d(int i2, int i4) {
        this(i2, i4, 2048.0f);
    }

    @Nullable
    public static d a(int i2, int i4) {
        if (i2 <= 0 || i4 <= 0) {
            return null;
        }
        return new d(i2, i4);
    }

    @Nullable
    public static d b(int i2) {
        if (i2 <= 0) {
            return null;
        }
        return new d(i2, i2);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            return this.f12570a == dVar.f12570a && this.f12571b == dVar.f12571b;
        }
        return false;
    }

    public int hashCode() {
        return com.facebook.common.util.b.b(this.f12570a, this.f12571b);
    }

    public String toString() {
        return String.format(null, "%dx%d", Integer.valueOf(this.f12570a), Integer.valueOf(this.f12571b));
    }

    public d(int i2, int i4, float f4) {
        this(i2, i4, f4, 0.6666667f);
    }

    public d(int i2, int i4, float f4, float f5) {
        h.d(i2 > 0);
        h.d(i4 > 0);
        this.f12570a = i2;
        this.f12571b = i4;
        this.f12572c = f4;
        this.f12573d = f5;
    }
}
