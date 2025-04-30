package io.reactivex.internal.functions;

import java.util.Objects;
import w2.d;
/* compiled from: ObjectHelper.java */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final d<Object, Object> f65863a = new C0450a();

    /* compiled from: ObjectHelper.java */
    /* renamed from: io.reactivex.internal.functions.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static final class C0450a implements d<Object, Object> {
        C0450a() {
        }

        @Override // w2.d
        public boolean a(Object obj, Object obj2) {
            return a.c(obj, obj2);
        }
    }

    private a() {
        throw new IllegalStateException("No instances!");
    }

    public static int a(int i2, int i4) {
        if (i2 < i4) {
            return -1;
        }
        return i2 > i4 ? 1 : 0;
    }

    public static int b(long j4, long j5) {
        if (j4 < j5) {
            return -1;
        }
        return j4 > j5 ? 1 : 0;
    }

    public static boolean c(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static <T> d<T, T> d() {
        return (d<T, T>) f65863a;
    }

    public static int e(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    @Deprecated
    public static long f(long j4, String str) {
        throw new InternalError("Null check on a primitive: " + str);
    }

    public static <T> T g(T t3, String str) {
        Objects.requireNonNull(t3, str);
        return t3;
    }

    public static int h(int i2, String str) {
        if (i2 > 0) {
            return i2;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i2);
    }

    public static long i(long j4, String str) {
        if (j4 > 0) {
            return j4;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + j4);
    }
}
