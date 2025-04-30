package com.facebook.common.internal;

import java.util.Arrays;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;
/* compiled from: Objects.java */
/* loaded from: classes.dex */
public final class g {

    /* compiled from: Objects.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f11692a;

        /* renamed from: b  reason: collision with root package name */
        private a f11693b;

        /* renamed from: c  reason: collision with root package name */
        private a f11694c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f11695d;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: Objects.java */
        /* loaded from: classes.dex */
        public static final class a {
            @Nullable

            /* renamed from: a  reason: collision with root package name */
            String f11696a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            Object f11697b;

            /* renamed from: c  reason: collision with root package name */
            a f11698c;

            private a() {
            }
        }

        private a h() {
            a aVar = new a();
            this.f11694c.f11698c = aVar;
            this.f11694c = aVar;
            return aVar;
        }

        private b i(@Nullable Object obj) {
            h().f11697b = obj;
            return this;
        }

        private b j(String str, @Nullable Object obj) {
            a h4 = h();
            h4.f11697b = obj;
            h4.f11696a = (String) h.i(str);
            return this;
        }

        public b a(String str, char c4) {
            return j(str, String.valueOf(c4));
        }

        public b b(String str, double d4) {
            return j(str, String.valueOf(d4));
        }

        public b c(String str, float f4) {
            return j(str, String.valueOf(f4));
        }

        public b d(String str, int i2) {
            return j(str, String.valueOf(i2));
        }

        public b e(String str, long j4) {
            return j(str, String.valueOf(j4));
        }

        public b f(String str, @Nullable Object obj) {
            return j(str, obj);
        }

        public b g(String str, boolean z3) {
            return j(str, String.valueOf(z3));
        }

        public b k(char c4) {
            return i(String.valueOf(c4));
        }

        public b l(double d4) {
            return i(String.valueOf(d4));
        }

        public b m(float f4) {
            return i(String.valueOf(f4));
        }

        public b n(int i2) {
            return i(String.valueOf(i2));
        }

        public b o(long j4) {
            return i(String.valueOf(j4));
        }

        public b p(@Nullable Object obj) {
            return i(obj);
        }

        public b q(boolean z3) {
            return i(String.valueOf(z3));
        }

        public b r() {
            this.f11695d = true;
            return this;
        }

        public String toString() {
            boolean z3 = this.f11695d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f11692a);
            sb.append('{');
            String str = "";
            for (a aVar = this.f11693b.f11698c; aVar != null; aVar = aVar.f11698c) {
                if (!z3 || aVar.f11697b != null) {
                    sb.append(str);
                    String str2 = aVar.f11696a;
                    if (str2 != null) {
                        sb.append(str2);
                        sb.append('=');
                    }
                    sb.append(aVar.f11697b);
                    str = ", ";
                }
            }
            sb.append('}');
            return sb.toString();
        }

        private b(String str) {
            a aVar = new a();
            this.f11693b = aVar;
            this.f11694c = aVar;
            this.f11695d = false;
            this.f11692a = (String) h.i(str);
        }
    }

    private g() {
    }

    @CheckReturnValue
    public static boolean a(@Nullable Object obj, @Nullable Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static <T> T b(@Nullable T t3, @Nullable T t4) {
        return t3 != null ? t3 : (T) h.i(t4);
    }

    public static int c(@Nullable Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    private static String d(Class<?> cls) {
        String replaceAll = cls.getName().replaceAll("\\$[0-9]+", "\\$");
        int lastIndexOf = replaceAll.lastIndexOf(36);
        if (lastIndexOf == -1) {
            lastIndexOf = replaceAll.lastIndexOf(46);
        }
        return replaceAll.substring(lastIndexOf + 1);
    }

    public static b e(Class<?> cls) {
        return new b(d(cls));
    }

    public static b f(Object obj) {
        return new b(d(obj.getClass()));
    }

    public static b g(String str) {
        return new b(str);
    }
}
