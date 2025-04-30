package external.org.apache.commons.lang3;

import java.util.Collection;
import java.util.Map;
import java.util.regex.Pattern;
/* compiled from: Validate.java */
/* loaded from: classes3.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final String f65435a = "The value %s is not in the specified exclusive range of %s to %s";

    /* renamed from: b  reason: collision with root package name */
    private static final String f65436b = "The value %s is not in the specified inclusive range of %s to %s";

    /* renamed from: c  reason: collision with root package name */
    private static final String f65437c = "The string %s does not match the pattern %s";

    /* renamed from: d  reason: collision with root package name */
    private static final String f65438d = "The validated object is null";

    /* renamed from: e  reason: collision with root package name */
    private static final String f65439e = "The validated expression is false";

    /* renamed from: f  reason: collision with root package name */
    private static final String f65440f = "The validated array contains null element at index: %d";

    /* renamed from: g  reason: collision with root package name */
    private static final String f65441g = "The validated collection contains null element at index: %d";

    /* renamed from: h  reason: collision with root package name */
    private static final String f65442h = "The validated character sequence is blank";

    /* renamed from: i  reason: collision with root package name */
    private static final String f65443i = "The validated array is empty";

    /* renamed from: j  reason: collision with root package name */
    private static final String f65444j = "The validated character sequence is empty";

    /* renamed from: k  reason: collision with root package name */
    private static final String f65445k = "The validated collection is empty";

    /* renamed from: l  reason: collision with root package name */
    private static final String f65446l = "The validated map is empty";

    /* renamed from: m  reason: collision with root package name */
    private static final String f65447m = "The validated array index is invalid: %d";

    /* renamed from: n  reason: collision with root package name */
    private static final String f65448n = "The validated character sequence index is invalid: %d";

    /* renamed from: o  reason: collision with root package name */
    private static final String f65449o = "The validated collection index is invalid: %d";

    /* renamed from: p  reason: collision with root package name */
    private static final String f65450p = "The validated state is false";

    /* renamed from: q  reason: collision with root package name */
    private static final String f65451q = "Cannot assign a %s to a %s";

    /* renamed from: r  reason: collision with root package name */
    private static final String f65452r = "Expected type: %s, actual: %s";

    public static <T> T[] A(T[] array) {
        return (T[]) B(array, f65443i, new Object[0]);
    }

    public static <T> T[] B(T[] array, String message, Object... values) {
        if (array != null) {
            if (array.length != 0) {
                return array;
            }
            throw new IllegalArgumentException(String.format(message, values));
        }
        throw new NullPointerException(String.format(message, values));
    }

    public static <T> T C(T object) {
        return (T) D(object, f65438d, new Object[0]);
    }

    public static <T> T D(T object, String message, Object... values) {
        if (object != null) {
            return object;
        }
        throw new NullPointerException(String.format(message, values));
    }

    public static <T extends CharSequence> T E(T chars, int index) {
        return (T) F(chars, index, f65448n, Integer.valueOf(index));
    }

    public static <T extends CharSequence> T F(T chars, int index, String message, Object... values) {
        C(chars);
        if (index < 0 || index >= chars.length()) {
            throw new IndexOutOfBoundsException(String.format(message, values));
        }
        return chars;
    }

    public static <T extends Collection<?>> T G(T collection, int index) {
        return (T) H(collection, index, f65449o, Integer.valueOf(index));
    }

    public static <T extends Collection<?>> T H(T collection, int index, String message, Object... values) {
        C(collection);
        if (index < 0 || index >= collection.size()) {
            throw new IndexOutOfBoundsException(String.format(message, values));
        }
        return collection;
    }

    public static <T> T[] I(T[] array, int index) {
        return (T[]) J(array, index, f65447m, Integer.valueOf(index));
    }

    public static <T> T[] J(T[] array, int index, String message, Object... values) {
        C(array);
        if (index < 0 || index >= array.length) {
            throw new IndexOutOfBoundsException(String.format(message, values));
        }
        return array;
    }

    public static void K(boolean expression) {
        if (!expression) {
            throw new IllegalStateException(f65450p);
        }
    }

    public static void L(boolean expression, String message, Object... values) {
        if (!expression) {
            throw new IllegalStateException(String.format(message, values));
        }
    }

    public static <T> void a(T start, T end, Comparable<T> value) {
        if (value.compareTo(start) <= 0 || value.compareTo(end) >= 0) {
            throw new IllegalArgumentException(String.format(f65435a, value, start, end));
        }
    }

    public static <T> void b(T start, T end, Comparable<T> value, String message, Object... values) {
        if (value.compareTo(start) <= 0 || value.compareTo(end) >= 0) {
            throw new IllegalArgumentException(String.format(message, values));
        }
    }

    public static <T> void c(T start, T end, Comparable<T> value) {
        if (value.compareTo(start) < 0 || value.compareTo(end) > 0) {
            throw new IllegalArgumentException(String.format(f65436b, value, start, end));
        }
    }

    public static <T> void d(T start, T end, Comparable<T> value, String message, Object... values) {
        if (value.compareTo(start) < 0 || value.compareTo(end) > 0) {
            throw new IllegalArgumentException(String.format(message, values));
        }
    }

    public static void e(Class<?> superType, Class<?> type) {
        if (superType.isAssignableFrom(type)) {
            return;
        }
        Object[] objArr = new Object[2];
        objArr[0] = type == null ? "null" : type.getName();
        objArr[1] = superType.getName();
        throw new IllegalArgumentException(String.format(f65451q, objArr));
    }

    public static void f(Class<?> superType, Class<?> type, String message, Object... values) {
        if (!superType.isAssignableFrom(type)) {
            throw new IllegalArgumentException(String.format(message, values));
        }
    }

    public static void g(Class<?> type, Object obj) {
        if (type.isInstance(obj)) {
            return;
        }
        Object[] objArr = new Object[2];
        objArr[0] = type.getName();
        objArr[1] = obj == null ? "null" : obj.getClass().getName();
        throw new IllegalArgumentException(String.format(f65452r, objArr));
    }

    public static void h(Class<?> type, Object obj, String message, Object... values) {
        if (!type.isInstance(obj)) {
            throw new IllegalArgumentException(String.format(message, values));
        }
    }

    public static void i(boolean expression) {
        if (!expression) {
            throw new IllegalArgumentException(f65439e);
        }
    }

    public static void j(boolean expression, String message, double value) {
        if (!expression) {
            throw new IllegalArgumentException(String.format(message, Double.valueOf(value)));
        }
    }

    public static void k(boolean expression, String message, long value) {
        if (!expression) {
            throw new IllegalArgumentException(String.format(message, Long.valueOf(value)));
        }
    }

    public static void l(boolean expression, String message, Object... values) {
        if (!expression) {
            throw new IllegalArgumentException(String.format(message, values));
        }
    }

    public static void m(CharSequence input, String pattern) {
        if (!Pattern.matches(pattern, input)) {
            throw new IllegalArgumentException(String.format(f65437c, input, pattern));
        }
    }

    public static void n(CharSequence input, String pattern, String message, Object... values) {
        if (!Pattern.matches(pattern, input)) {
            throw new IllegalArgumentException(String.format(message, values));
        }
    }

    public static <T extends Iterable<?>> T o(T iterable) {
        return (T) p(iterable, f65441g, new Object[0]);
    }

    public static <T extends Iterable<?>> T p(T iterable, String message, Object... values) {
        C(iterable);
        int i2 = 0;
        for (Object obj : iterable) {
            if (obj == null) {
                throw new IllegalArgumentException(String.format(message, a.z(values, Integer.valueOf(i2))));
            }
            i2++;
        }
        return iterable;
    }

    public static <T> T[] q(T[] array) {
        return (T[]) r(array, f65440f, new Object[0]);
    }

    public static <T> T[] r(T[] array, String message, Object... values) {
        C(array);
        for (int i2 = 0; i2 < array.length; i2++) {
            if (array[i2] == null) {
                throw new IllegalArgumentException(String.format(message, a.o(values, Integer.valueOf(i2))));
            }
        }
        return array;
    }

    public static <T extends CharSequence> T s(T chars) {
        return (T) t(chars, f65442h, new Object[0]);
    }

    public static <T extends CharSequence> T t(T chars, String message, Object... values) {
        if (chars != null) {
            if (e.e0(chars)) {
                throw new IllegalArgumentException(String.format(message, values));
            }
            return chars;
        }
        throw new NullPointerException(String.format(message, values));
    }

    public static <T extends CharSequence> T u(T chars) {
        return (T) v(chars, f65444j, new Object[0]);
    }

    public static <T extends CharSequence> T v(T chars, String message, Object... values) {
        if (chars != null) {
            if (chars.length() != 0) {
                return chars;
            }
            throw new IllegalArgumentException(String.format(message, values));
        }
        throw new NullPointerException(String.format(message, values));
    }

    public static <T extends Collection<?>> T w(T collection) {
        return (T) x(collection, f65445k, new Object[0]);
    }

    public static <T extends Collection<?>> T x(T collection, String message, Object... values) {
        if (collection != null) {
            if (collection.isEmpty()) {
                throw new IllegalArgumentException(String.format(message, values));
            }
            return collection;
        }
        throw new NullPointerException(String.format(message, values));
    }

    public static <T extends Map<?, ?>> T y(T map) {
        return (T) z(map, f65446l, new Object[0]);
    }

    public static <T extends Map<?, ?>> T z(T map, String message, Object... values) {
        if (map != null) {
            if (map.isEmpty()) {
                throw new IllegalArgumentException(String.format(message, values));
            }
            return map;
        }
        throw new NullPointerException(String.format(message, values));
    }
}
