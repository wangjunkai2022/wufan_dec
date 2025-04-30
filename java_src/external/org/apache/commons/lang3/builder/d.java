package external.org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
/* compiled from: HashCodeBuilder.java */
/* loaded from: classes3.dex */
public class d implements a<Integer> {

    /* renamed from: c  reason: collision with root package name */
    private static final ThreadLocal<Set<e>> f65348c = new ThreadLocal<>();

    /* renamed from: a  reason: collision with root package name */
    private final int f65349a;

    /* renamed from: b  reason: collision with root package name */
    private int f65350b;

    public d() {
        this.f65350b = 0;
        this.f65349a = 37;
        this.f65350b = 17;
    }

    public static int A(Object object, Collection<String> excludeFields) {
        return C(object, f.t0(excludeFields));
    }

    public static int B(Object object, boolean testTransients) {
        return z(17, 37, object, testTransients, null, new String[0]);
    }

    public static int C(Object object, String... excludeFields) {
        return z(17, 37, object, false, null, excludeFields);
    }

    static void D(Object value) {
        synchronized (d.class) {
            if (u() == null) {
                f65348c.set(new HashSet());
            }
        }
        u().add(new e(value));
    }

    static void F(Object value) {
        Set<e> u3 = u();
        if (u3 != null) {
            u3.remove(new e(value));
            synchronized (d.class) {
                Set<e> u4 = u();
                if (u4 != null && u4.isEmpty()) {
                    f65348c.remove();
                }
            }
        }
    }

    static Set<e> u() {
        return f65348c.get();
    }

    static boolean v(Object value) {
        Set<e> u3 = u();
        return u3 != null && u3.contains(new e(value));
    }

    private static void w(Object object, Class<?> clazz, d builder, boolean useTransients, String[] excludeFields) {
        if (v(object)) {
            return;
        }
        try {
            D(object);
            Field[] declaredFields = clazz.getDeclaredFields();
            AccessibleObject.setAccessible(declaredFields, true);
            for (Field field : declaredFields) {
                if (!external.org.apache.commons.lang3.a.S(excludeFields, field.getName()) && field.getName().indexOf(36) == -1 && ((useTransients || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()))) {
                    try {
                        builder.g(field.get(object));
                    } catch (IllegalAccessException unused) {
                        throw new InternalError("Unexpected IllegalAccessException");
                    }
                }
            }
        } finally {
            F(object);
        }
    }

    public static int x(int initialNonZeroOddNumber, int multiplierNonZeroOddNumber, Object object) {
        return z(initialNonZeroOddNumber, multiplierNonZeroOddNumber, object, false, null, new String[0]);
    }

    public static int y(int initialNonZeroOddNumber, int multiplierNonZeroOddNumber, Object object, boolean testTransients) {
        return z(initialNonZeroOddNumber, multiplierNonZeroOddNumber, object, testTransients, null, new String[0]);
    }

    public static <T> int z(int initialNonZeroOddNumber, int multiplierNonZeroOddNumber, T object, boolean testTransients, Class<? super T> reflectUpToClass, String... excludeFields) {
        if (object != null) {
            d dVar = new d(initialNonZeroOddNumber, multiplierNonZeroOddNumber);
            Class<?> cls = object.getClass();
            w(object, cls, dVar, testTransients, excludeFields);
            while (cls.getSuperclass() != null && cls != reflectUpToClass) {
                cls = cls.getSuperclass();
                w(object, cls, dVar, testTransients, excludeFields);
            }
            return dVar.E();
        }
        throw new IllegalArgumentException("The object to build a hash code for must not be null");
    }

    public int E() {
        return this.f65350b;
    }

    public d a(byte value) {
        this.f65350b = (this.f65350b * this.f65349a) + value;
        return this;
    }

    public d b(char value) {
        this.f65350b = (this.f65350b * this.f65349a) + value;
        return this;
    }

    public d c(double value) {
        return f(Double.doubleToLongBits(value));
    }

    public d d(float value) {
        this.f65350b = (this.f65350b * this.f65349a) + Float.floatToIntBits(value);
        return this;
    }

    public d e(int value) {
        this.f65350b = (this.f65350b * this.f65349a) + value;
        return this;
    }

    public d f(long value) {
        this.f65350b = (this.f65350b * this.f65349a) + ((int) (value ^ (value >> 32)));
        return this;
    }

    public d g(Object object) {
        if (object == null) {
            this.f65350b *= this.f65349a;
        } else if (object.getClass().isArray()) {
            if (object instanceof long[]) {
                o((long[]) object);
            } else if (object instanceof int[]) {
                n((int[]) object);
            } else if (object instanceof short[]) {
                q((short[]) object);
            } else if (object instanceof char[]) {
                k((char[]) object);
            } else if (object instanceof byte[]) {
                j((byte[]) object);
            } else if (object instanceof double[]) {
                l((double[]) object);
            } else if (object instanceof float[]) {
                m((float[]) object);
            } else if (object instanceof boolean[]) {
                r((boolean[]) object);
            } else {
                p((Object[]) object);
            }
        } else {
            this.f65350b = (this.f65350b * this.f65349a) + object.hashCode();
        }
        return this;
    }

    public d h(short value) {
        this.f65350b = (this.f65350b * this.f65349a) + value;
        return this;
    }

    public int hashCode() {
        return E();
    }

    public d i(boolean value) {
        this.f65350b = (this.f65350b * this.f65349a) + (!value ? 1 : 0);
        return this;
    }

    public d j(byte[] array) {
        if (array == null) {
            this.f65350b *= this.f65349a;
        } else {
            for (byte b4 : array) {
                a(b4);
            }
        }
        return this;
    }

    public d k(char[] array) {
        if (array == null) {
            this.f65350b *= this.f65349a;
        } else {
            for (char c4 : array) {
                b(c4);
            }
        }
        return this;
    }

    public d l(double[] array) {
        if (array == null) {
            this.f65350b *= this.f65349a;
        } else {
            for (double d4 : array) {
                c(d4);
            }
        }
        return this;
    }

    public d m(float[] array) {
        if (array == null) {
            this.f65350b *= this.f65349a;
        } else {
            for (float f4 : array) {
                d(f4);
            }
        }
        return this;
    }

    public d n(int[] array) {
        if (array == null) {
            this.f65350b *= this.f65349a;
        } else {
            for (int i2 : array) {
                e(i2);
            }
        }
        return this;
    }

    public d o(long[] array) {
        if (array == null) {
            this.f65350b *= this.f65349a;
        } else {
            for (long j4 : array) {
                f(j4);
            }
        }
        return this;
    }

    public d p(Object[] array) {
        if (array == null) {
            this.f65350b *= this.f65349a;
        } else {
            for (Object obj : array) {
                g(obj);
            }
        }
        return this;
    }

    public d q(short[] array) {
        if (array == null) {
            this.f65350b *= this.f65349a;
        } else {
            for (short s3 : array) {
                h(s3);
            }
        }
        return this;
    }

    public d r(boolean[] array) {
        if (array == null) {
            this.f65350b *= this.f65349a;
        } else {
            for (boolean z3 : array) {
                i(z3);
            }
        }
        return this;
    }

    public d s(int superHashCode) {
        this.f65350b = (this.f65350b * this.f65349a) + superHashCode;
        return this;
    }

    @Override // external.org.apache.commons.lang3.builder.a
    /* renamed from: t */
    public Integer build() {
        return Integer.valueOf(E());
    }

    public d(int initialNonZeroOddNumber, int multiplierNonZeroOddNumber) {
        this.f65350b = 0;
        if (initialNonZeroOddNumber != 0) {
            if (initialNonZeroOddNumber % 2 == 0) {
                throw new IllegalArgumentException("HashCodeBuilder requires an odd initial value");
            }
            if (multiplierNonZeroOddNumber != 0) {
                if (multiplierNonZeroOddNumber % 2 != 0) {
                    this.f65349a = multiplierNonZeroOddNumber;
                    this.f65350b = initialNonZeroOddNumber;
                    return;
                }
                throw new IllegalArgumentException("HashCodeBuilder requires an odd multiplier");
            }
            throw new IllegalArgumentException("HashCodeBuilder requires a non zero multiplier");
        }
        throw new IllegalArgumentException("HashCodeBuilder requires a non zero initial value");
    }
}
