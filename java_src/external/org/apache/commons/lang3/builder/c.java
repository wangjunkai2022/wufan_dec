package external.org.apache.commons.lang3.builder;

import external.org.apache.commons.lang3.tuple.Pair;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
/* compiled from: EqualsBuilder.java */
/* loaded from: classes3.dex */
public class c implements a<Boolean> {

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<Set<Pair<e, e>>> f65346b = new ThreadLocal<>();

    /* renamed from: a  reason: collision with root package name */
    private boolean f65347a = true;

    public static boolean A(Object lhs, Object rhs, boolean testTransients) {
        return B(lhs, rhs, testTransients, null, new String[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001c, code lost:
        if (r2.isInstance(r11) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0029, code lost:
        if (r1.isInstance(r12) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002c, code lost:
        r1 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean B(java.lang.Object r11, java.lang.Object r12, boolean r13, java.lang.Class<?> r14, java.lang.String... r15) {
        /*
            if (r11 != r12) goto L4
            r11 = 1
            return r11
        L4:
            r0 = 0
            if (r11 == 0) goto L56
            if (r12 != 0) goto La
            goto L56
        La:
            java.lang.Class r1 = r11.getClass()
            java.lang.Class r2 = r12.getClass()
            boolean r3 = r1.isInstance(r12)
            if (r3 == 0) goto L1f
            boolean r3 = r2.isInstance(r11)
            if (r3 != 0) goto L2d
            goto L2c
        L1f:
            boolean r3 = r2.isInstance(r11)
            if (r3 == 0) goto L56
            boolean r3 = r1.isInstance(r12)
            if (r3 != 0) goto L2c
            goto L2d
        L2c:
            r1 = r2
        L2d:
            external.org.apache.commons.lang3.builder.c r10 = new external.org.apache.commons.lang3.builder.c
            r10.<init>()
            r4 = r11
            r5 = r12
            r6 = r1
            r7 = r10
            r8 = r13
            r9 = r15
            y(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.IllegalArgumentException -> L56
        L3b:
            java.lang.Class r2 = r1.getSuperclass()     // Catch: java.lang.IllegalArgumentException -> L56
            if (r2 == 0) goto L51
            if (r1 == r14) goto L51
            java.lang.Class r1 = r1.getSuperclass()     // Catch: java.lang.IllegalArgumentException -> L56
            r2 = r11
            r3 = r12
            r4 = r1
            r5 = r10
            r6 = r13
            r7 = r15
            y(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.IllegalArgumentException -> L56
            goto L3b
        L51:
            boolean r11 = r10.w()
            return r11
        L56:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: external.org.apache.commons.lang3.builder.c.B(java.lang.Object, java.lang.Object, boolean, java.lang.Class, java.lang.String[]):boolean");
    }

    public static boolean C(Object lhs, Object rhs, String... excludeFields) {
        return B(lhs, rhs, false, null, excludeFields);
    }

    static void D(Object lhs, Object rhs) {
        synchronized (c.class) {
            if (v() == null) {
                f65346b.set(new HashSet());
            }
        }
        v().add(u(lhs, rhs));
    }

    static void G(Object lhs, Object rhs) {
        Set<Pair<e, e>> v3 = v();
        if (v3 != null) {
            v3.remove(u(lhs, rhs));
            synchronized (c.class) {
                Set<Pair<e, e>> v4 = v();
                if (v4 != null && v4.isEmpty()) {
                    f65346b.remove();
                }
            }
        }
    }

    static Pair<e, e> u(Object lhs, Object rhs) {
        return Pair.A(new e(lhs), new e(rhs));
    }

    static Set<Pair<e, e>> v() {
        return f65346b.get();
    }

    static boolean x(Object lhs, Object rhs) {
        Set<Pair<e, e>> v3 = v();
        Pair<e, e> u3 = u(lhs, rhs);
        return v3 != null && (v3.contains(u3) || v3.contains(Pair.A(u3.s(), u3.x())));
    }

    private static void y(Object lhs, Object rhs, Class<?> clazz, c builder, boolean useTransients, String[] excludeFields) {
        if (x(lhs, rhs)) {
            return;
        }
        try {
            D(lhs, rhs);
            Field[] declaredFields = clazz.getDeclaredFields();
            AccessibleObject.setAccessible(declaredFields, true);
            for (int i2 = 0; i2 < declaredFields.length && builder.f65347a; i2++) {
                Field field = declaredFields[i2];
                if (!external.org.apache.commons.lang3.a.S(excludeFields, field.getName()) && field.getName().indexOf(36) == -1 && ((useTransients || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()))) {
                    try {
                        builder.g(field.get(lhs), field.get(rhs));
                    } catch (IllegalAccessException unused) {
                        throw new InternalError("Unexpected IllegalAccessException");
                    }
                }
            }
        } finally {
            G(lhs, rhs);
        }
    }

    public static boolean z(Object lhs, Object rhs, Collection<String> excludeFields) {
        return C(lhs, rhs, f.t0(excludeFields));
    }

    public void E() {
        this.f65347a = true;
    }

    protected void F(boolean isEquals) {
        this.f65347a = isEquals;
    }

    public c a(byte lhs, byte rhs) {
        if (this.f65347a) {
            this.f65347a = lhs == rhs;
            return this;
        }
        return this;
    }

    public c b(char lhs, char rhs) {
        if (this.f65347a) {
            this.f65347a = lhs == rhs;
            return this;
        }
        return this;
    }

    public c c(double lhs, double rhs) {
        return !this.f65347a ? this : f(Double.doubleToLongBits(lhs), Double.doubleToLongBits(rhs));
    }

    public c d(float lhs, float rhs) {
        return !this.f65347a ? this : e(Float.floatToIntBits(lhs), Float.floatToIntBits(rhs));
    }

    public c e(int lhs, int rhs) {
        if (this.f65347a) {
            this.f65347a = lhs == rhs;
            return this;
        }
        return this;
    }

    public c f(long lhs, long rhs) {
        if (this.f65347a) {
            this.f65347a = lhs == rhs;
            return this;
        }
        return this;
    }

    public c g(Object lhs, Object rhs) {
        if (this.f65347a && lhs != rhs) {
            if (lhs != null && rhs != null) {
                if (!lhs.getClass().isArray()) {
                    this.f65347a = lhs.equals(rhs);
                } else if (lhs.getClass() != rhs.getClass()) {
                    F(false);
                } else if (lhs instanceof long[]) {
                    o((long[]) lhs, (long[]) rhs);
                } else if (lhs instanceof int[]) {
                    n((int[]) lhs, (int[]) rhs);
                } else if (lhs instanceof short[]) {
                    q((short[]) lhs, (short[]) rhs);
                } else if (lhs instanceof char[]) {
                    k((char[]) lhs, (char[]) rhs);
                } else if (lhs instanceof byte[]) {
                    j((byte[]) lhs, (byte[]) rhs);
                } else if (lhs instanceof double[]) {
                    l((double[]) lhs, (double[]) rhs);
                } else if (lhs instanceof float[]) {
                    m((float[]) lhs, (float[]) rhs);
                } else if (lhs instanceof boolean[]) {
                    r((boolean[]) lhs, (boolean[]) rhs);
                } else {
                    p((Object[]) lhs, (Object[]) rhs);
                }
                return this;
            }
            F(false);
            return this;
        }
        return this;
    }

    public c h(short lhs, short rhs) {
        if (this.f65347a) {
            this.f65347a = lhs == rhs;
            return this;
        }
        return this;
    }

    public c i(boolean lhs, boolean rhs) {
        if (this.f65347a) {
            this.f65347a = lhs == rhs;
            return this;
        }
        return this;
    }

    public c j(byte[] lhs, byte[] rhs) {
        if (this.f65347a && lhs != rhs) {
            if (lhs != null && rhs != null) {
                if (lhs.length != rhs.length) {
                    F(false);
                    return this;
                }
                for (int i2 = 0; i2 < lhs.length && this.f65347a; i2++) {
                    a(lhs[i2], rhs[i2]);
                }
                return this;
            }
            F(false);
            return this;
        }
        return this;
    }

    public c k(char[] lhs, char[] rhs) {
        if (this.f65347a && lhs != rhs) {
            if (lhs != null && rhs != null) {
                if (lhs.length != rhs.length) {
                    F(false);
                    return this;
                }
                for (int i2 = 0; i2 < lhs.length && this.f65347a; i2++) {
                    b(lhs[i2], rhs[i2]);
                }
                return this;
            }
            F(false);
            return this;
        }
        return this;
    }

    public c l(double[] lhs, double[] rhs) {
        if (this.f65347a && lhs != rhs) {
            if (lhs != null && rhs != null) {
                if (lhs.length != rhs.length) {
                    F(false);
                    return this;
                }
                for (int i2 = 0; i2 < lhs.length && this.f65347a; i2++) {
                    c(lhs[i2], rhs[i2]);
                }
                return this;
            }
            F(false);
            return this;
        }
        return this;
    }

    public c m(float[] lhs, float[] rhs) {
        if (this.f65347a && lhs != rhs) {
            if (lhs != null && rhs != null) {
                if (lhs.length != rhs.length) {
                    F(false);
                    return this;
                }
                for (int i2 = 0; i2 < lhs.length && this.f65347a; i2++) {
                    d(lhs[i2], rhs[i2]);
                }
                return this;
            }
            F(false);
            return this;
        }
        return this;
    }

    public c n(int[] lhs, int[] rhs) {
        if (this.f65347a && lhs != rhs) {
            if (lhs != null && rhs != null) {
                if (lhs.length != rhs.length) {
                    F(false);
                    return this;
                }
                for (int i2 = 0; i2 < lhs.length && this.f65347a; i2++) {
                    e(lhs[i2], rhs[i2]);
                }
                return this;
            }
            F(false);
            return this;
        }
        return this;
    }

    public c o(long[] lhs, long[] rhs) {
        if (this.f65347a && lhs != rhs) {
            if (lhs != null && rhs != null) {
                if (lhs.length != rhs.length) {
                    F(false);
                    return this;
                }
                for (int i2 = 0; i2 < lhs.length && this.f65347a; i2++) {
                    f(lhs[i2], rhs[i2]);
                }
                return this;
            }
            F(false);
            return this;
        }
        return this;
    }

    public c p(Object[] lhs, Object[] rhs) {
        if (this.f65347a && lhs != rhs) {
            if (lhs != null && rhs != null) {
                if (lhs.length != rhs.length) {
                    F(false);
                    return this;
                }
                for (int i2 = 0; i2 < lhs.length && this.f65347a; i2++) {
                    g(lhs[i2], rhs[i2]);
                }
                return this;
            }
            F(false);
            return this;
        }
        return this;
    }

    public c q(short[] lhs, short[] rhs) {
        if (this.f65347a && lhs != rhs) {
            if (lhs != null && rhs != null) {
                if (lhs.length != rhs.length) {
                    F(false);
                    return this;
                }
                for (int i2 = 0; i2 < lhs.length && this.f65347a; i2++) {
                    h(lhs[i2], rhs[i2]);
                }
                return this;
            }
            F(false);
            return this;
        }
        return this;
    }

    public c r(boolean[] lhs, boolean[] rhs) {
        if (this.f65347a && lhs != rhs) {
            if (lhs != null && rhs != null) {
                if (lhs.length != rhs.length) {
                    F(false);
                    return this;
                }
                for (int i2 = 0; i2 < lhs.length && this.f65347a; i2++) {
                    i(lhs[i2], rhs[i2]);
                }
                return this;
            }
            F(false);
            return this;
        }
        return this;
    }

    public c s(boolean superEquals) {
        if (this.f65347a) {
            this.f65347a = superEquals;
            return this;
        }
        return this;
    }

    @Override // external.org.apache.commons.lang3.builder.a
    /* renamed from: t */
    public Boolean build() {
        return Boolean.valueOf(w());
    }

    public boolean w() {
        return this.f65347a;
    }
}
