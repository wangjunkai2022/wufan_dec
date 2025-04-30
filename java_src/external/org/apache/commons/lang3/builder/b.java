package external.org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Comparator;
/* compiled from: CompareToBuilder.java */
/* loaded from: classes3.dex */
public class b implements a<Integer> {

    /* renamed from: a  reason: collision with root package name */
    private int f65345a = 0;

    public static int A(Object lhs, Object rhs, boolean compareTransients, Class<?> reflectUpToClass, String... excludeFields) {
        if (lhs == rhs) {
            return 0;
        }
        if (lhs == null || rhs == null) {
            throw null;
        }
        Class<?> cls = lhs.getClass();
        if (cls.isInstance(rhs)) {
            b bVar = new b();
            w(lhs, rhs, cls, bVar, compareTransients, excludeFields);
            while (cls.getSuperclass() != null && cls != reflectUpToClass) {
                cls = cls.getSuperclass();
                w(lhs, rhs, cls, bVar, compareTransients, excludeFields);
            }
            return bVar.C();
        }
        throw new ClassCastException();
    }

    public static int B(Object lhs, Object rhs, String... excludeFields) {
        return A(lhs, rhs, false, null, excludeFields);
    }

    private static void w(Object lhs, Object rhs, Class<?> clazz, b builder, boolean useTransients, String[] excludeFields) {
        Field[] declaredFields = clazz.getDeclaredFields();
        AccessibleObject.setAccessible(declaredFields, true);
        for (int i2 = 0; i2 < declaredFields.length && builder.f65345a == 0; i2++) {
            Field field = declaredFields[i2];
            if (!external.org.apache.commons.lang3.a.S(excludeFields, field.getName()) && field.getName().indexOf(36) == -1 && ((useTransients || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()))) {
                try {
                    builder.g(field.get(lhs), field.get(rhs));
                } catch (IllegalAccessException unused) {
                    throw new InternalError("Unexpected IllegalAccessException");
                }
            }
        }
    }

    public static int x(Object lhs, Object rhs) {
        return A(lhs, rhs, false, null, new String[0]);
    }

    public static int y(Object lhs, Object rhs, Collection<String> excludeFields) {
        return B(lhs, rhs, f.t0(excludeFields));
    }

    public static int z(Object lhs, Object rhs, boolean compareTransients) {
        return A(lhs, rhs, compareTransients, null, new String[0]);
    }

    public int C() {
        return this.f65345a;
    }

    public b a(byte lhs, byte rhs) {
        if (this.f65345a != 0) {
            return this;
        }
        this.f65345a = lhs < rhs ? -1 : lhs > rhs ? 1 : 0;
        return this;
    }

    public b b(char lhs, char rhs) {
        if (this.f65345a != 0) {
            return this;
        }
        this.f65345a = lhs < rhs ? -1 : lhs > rhs ? 1 : 0;
        return this;
    }

    public b c(double lhs, double rhs) {
        if (this.f65345a != 0) {
            return this;
        }
        this.f65345a = Double.compare(lhs, rhs);
        return this;
    }

    public b d(float lhs, float rhs) {
        if (this.f65345a != 0) {
            return this;
        }
        this.f65345a = Float.compare(lhs, rhs);
        return this;
    }

    public b e(int lhs, int rhs) {
        if (this.f65345a != 0) {
            return this;
        }
        this.f65345a = lhs < rhs ? -1 : lhs > rhs ? 1 : 0;
        return this;
    }

    public b f(long lhs, long rhs) {
        if (this.f65345a != 0) {
            return this;
        }
        this.f65345a = lhs < rhs ? -1 : lhs > rhs ? 1 : 0;
        return this;
    }

    public b g(Object lhs, Object rhs) {
        return h(lhs, rhs, null);
    }

    public b h(Object lhs, Object rhs, Comparator<?> comparator) {
        if (this.f65345a == 0 && lhs != rhs) {
            if (lhs == null) {
                this.f65345a = -1;
                return this;
            } else if (rhs == null) {
                this.f65345a = 1;
                return this;
            } else {
                if (lhs.getClass().isArray()) {
                    if (lhs instanceof long[]) {
                        p((long[]) lhs, (long[]) rhs);
                    } else if (lhs instanceof int[]) {
                        o((int[]) lhs, (int[]) rhs);
                    } else if (lhs instanceof short[]) {
                        s((short[]) lhs, (short[]) rhs);
                    } else if (lhs instanceof char[]) {
                        l((char[]) lhs, (char[]) rhs);
                    } else if (lhs instanceof byte[]) {
                        k((byte[]) lhs, (byte[]) rhs);
                    } else if (lhs instanceof double[]) {
                        m((double[]) lhs, (double[]) rhs);
                    } else if (lhs instanceof float[]) {
                        n((float[]) lhs, (float[]) rhs);
                    } else if (lhs instanceof boolean[]) {
                        t((boolean[]) lhs, (boolean[]) rhs);
                    } else {
                        r((Object[]) lhs, (Object[]) rhs, comparator);
                    }
                } else if (comparator == null) {
                    this.f65345a = ((Comparable) lhs).compareTo(rhs);
                } else {
                    this.f65345a = comparator.compare(lhs, rhs);
                }
                return this;
            }
        }
        return this;
    }

    public b i(short lhs, short rhs) {
        if (this.f65345a != 0) {
            return this;
        }
        this.f65345a = lhs < rhs ? -1 : lhs > rhs ? 1 : 0;
        return this;
    }

    public b j(boolean lhs, boolean rhs) {
        if (this.f65345a == 0 && lhs != rhs) {
            if (!lhs) {
                this.f65345a = -1;
            } else {
                this.f65345a = 1;
            }
            return this;
        }
        return this;
    }

    public b k(byte[] lhs, byte[] rhs) {
        if (this.f65345a == 0 && lhs != rhs) {
            if (lhs == null) {
                this.f65345a = -1;
                return this;
            } else if (rhs == null) {
                this.f65345a = 1;
                return this;
            } else if (lhs.length != rhs.length) {
                this.f65345a = lhs.length >= rhs.length ? 1 : -1;
                return this;
            } else {
                for (int i2 = 0; i2 < lhs.length && this.f65345a == 0; i2++) {
                    a(lhs[i2], rhs[i2]);
                }
                return this;
            }
        }
        return this;
    }

    public b l(char[] lhs, char[] rhs) {
        if (this.f65345a == 0 && lhs != rhs) {
            if (lhs == null) {
                this.f65345a = -1;
                return this;
            } else if (rhs == null) {
                this.f65345a = 1;
                return this;
            } else if (lhs.length != rhs.length) {
                this.f65345a = lhs.length >= rhs.length ? 1 : -1;
                return this;
            } else {
                for (int i2 = 0; i2 < lhs.length && this.f65345a == 0; i2++) {
                    b(lhs[i2], rhs[i2]);
                }
                return this;
            }
        }
        return this;
    }

    public b m(double[] lhs, double[] rhs) {
        if (this.f65345a == 0 && lhs != rhs) {
            if (lhs == null) {
                this.f65345a = -1;
                return this;
            } else if (rhs == null) {
                this.f65345a = 1;
                return this;
            } else if (lhs.length != rhs.length) {
                this.f65345a = lhs.length >= rhs.length ? 1 : -1;
                return this;
            } else {
                for (int i2 = 0; i2 < lhs.length && this.f65345a == 0; i2++) {
                    c(lhs[i2], rhs[i2]);
                }
                return this;
            }
        }
        return this;
    }

    public b n(float[] lhs, float[] rhs) {
        if (this.f65345a == 0 && lhs != rhs) {
            if (lhs == null) {
                this.f65345a = -1;
                return this;
            } else if (rhs == null) {
                this.f65345a = 1;
                return this;
            } else if (lhs.length != rhs.length) {
                this.f65345a = lhs.length >= rhs.length ? 1 : -1;
                return this;
            } else {
                for (int i2 = 0; i2 < lhs.length && this.f65345a == 0; i2++) {
                    d(lhs[i2], rhs[i2]);
                }
                return this;
            }
        }
        return this;
    }

    public b o(int[] lhs, int[] rhs) {
        if (this.f65345a == 0 && lhs != rhs) {
            if (lhs == null) {
                this.f65345a = -1;
                return this;
            } else if (rhs == null) {
                this.f65345a = 1;
                return this;
            } else if (lhs.length != rhs.length) {
                this.f65345a = lhs.length >= rhs.length ? 1 : -1;
                return this;
            } else {
                for (int i2 = 0; i2 < lhs.length && this.f65345a == 0; i2++) {
                    e(lhs[i2], rhs[i2]);
                }
                return this;
            }
        }
        return this;
    }

    public b p(long[] lhs, long[] rhs) {
        if (this.f65345a == 0 && lhs != rhs) {
            if (lhs == null) {
                this.f65345a = -1;
                return this;
            } else if (rhs == null) {
                this.f65345a = 1;
                return this;
            } else if (lhs.length != rhs.length) {
                this.f65345a = lhs.length >= rhs.length ? 1 : -1;
                return this;
            } else {
                for (int i2 = 0; i2 < lhs.length && this.f65345a == 0; i2++) {
                    f(lhs[i2], rhs[i2]);
                }
                return this;
            }
        }
        return this;
    }

    public b q(Object[] lhs, Object[] rhs) {
        return r(lhs, rhs, null);
    }

    public b r(Object[] lhs, Object[] rhs, Comparator<?> comparator) {
        if (this.f65345a == 0 && lhs != rhs) {
            if (lhs == null) {
                this.f65345a = -1;
                return this;
            } else if (rhs == null) {
                this.f65345a = 1;
                return this;
            } else if (lhs.length != rhs.length) {
                this.f65345a = lhs.length >= rhs.length ? 1 : -1;
                return this;
            } else {
                for (int i2 = 0; i2 < lhs.length && this.f65345a == 0; i2++) {
                    h(lhs[i2], rhs[i2], comparator);
                }
                return this;
            }
        }
        return this;
    }

    public b s(short[] lhs, short[] rhs) {
        if (this.f65345a == 0 && lhs != rhs) {
            if (lhs == null) {
                this.f65345a = -1;
                return this;
            } else if (rhs == null) {
                this.f65345a = 1;
                return this;
            } else if (lhs.length != rhs.length) {
                this.f65345a = lhs.length >= rhs.length ? 1 : -1;
                return this;
            } else {
                for (int i2 = 0; i2 < lhs.length && this.f65345a == 0; i2++) {
                    i(lhs[i2], rhs[i2]);
                }
                return this;
            }
        }
        return this;
    }

    public b t(boolean[] lhs, boolean[] rhs) {
        if (this.f65345a == 0 && lhs != rhs) {
            if (lhs == null) {
                this.f65345a = -1;
                return this;
            } else if (rhs == null) {
                this.f65345a = 1;
                return this;
            } else if (lhs.length != rhs.length) {
                this.f65345a = lhs.length >= rhs.length ? 1 : -1;
                return this;
            } else {
                for (int i2 = 0; i2 < lhs.length && this.f65345a == 0; i2++) {
                    j(lhs[i2], rhs[i2]);
                }
                return this;
            }
        }
        return this;
    }

    public b u(int superCompareTo) {
        if (this.f65345a != 0) {
            return this;
        }
        this.f65345a = superCompareTo;
        return this;
    }

    @Override // external.org.apache.commons.lang3.builder.a
    /* renamed from: v */
    public Integer build() {
        return Integer.valueOf(C());
    }
}
