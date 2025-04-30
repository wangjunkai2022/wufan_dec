package com.facebook.imagepipeline.common;

import com.facebook.common.internal.h;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;
/* compiled from: BytesRange.java */
@Immutable
/* loaded from: classes.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    public static final int f12546c = Integer.MAX_VALUE;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static Pattern f12547d;

    /* renamed from: a  reason: collision with root package name */
    public final int f12548a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12549b;

    public a(int i2, int i4) {
        this.f12548a = i2;
        this.f12549b = i4;
    }

    public static a b(int i2) {
        h.d(i2 >= 0);
        return new a(i2, Integer.MAX_VALUE);
    }

    @Nullable
    public static a c(@Nullable String str) throws IllegalArgumentException {
        if (str == null) {
            return null;
        }
        if (f12547d == null) {
            f12547d = Pattern.compile("[-/ ]");
        }
        try {
            String[] split = f12547d.split(str);
            h.d(split.length == 4);
            h.d(split[0].equals("bytes"));
            int parseInt = Integer.parseInt(split[1]);
            int parseInt2 = Integer.parseInt(split[2]);
            int parseInt3 = Integer.parseInt(split[3]);
            h.d(parseInt2 > parseInt);
            h.d(parseInt3 > parseInt2);
            if (parseInt2 < parseInt3 - 1) {
                return new a(parseInt, parseInt2);
            }
            return new a(parseInt, Integer.MAX_VALUE);
        } catch (IllegalArgumentException e4) {
            throw new IllegalArgumentException(String.format(null, "Invalid Content-Range header value: \"%s\"", str), e4);
        }
    }

    public static a e(int i2) {
        h.d(i2 > 0);
        return new a(0, i2);
    }

    private static String f(int i2) {
        return i2 == Integer.MAX_VALUE ? "" : Integer.toString(i2);
    }

    public boolean a(@Nullable a aVar) {
        return aVar != null && this.f12548a <= aVar.f12548a && this.f12549b >= aVar.f12549b;
    }

    public String d() {
        return String.format(null, "bytes=%s-%s", f(this.f12548a), f(this.f12549b));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            return this.f12548a == aVar.f12548a && this.f12549b == aVar.f12549b;
        }
        return false;
    }

    public int hashCode() {
        return com.facebook.common.util.b.b(this.f12548a, this.f12549b);
    }

    public String toString() {
        return String.format(null, "%s-%s", f(this.f12548a), f(this.f12549b));
    }
}
