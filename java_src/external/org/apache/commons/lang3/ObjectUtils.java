package external.org.apache.commons.lang3;

import external.org.apache.commons.lang3.exception.CloneFailedException;
import external.org.apache.commons.lang3.mutable.MutableInt;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.TreeSet;
/* loaded from: classes3.dex */
public class ObjectUtils {

    /* renamed from: a  reason: collision with root package name */
    public static final Null f65298a = new Null();

    /* loaded from: classes3.dex */
    public static class Null implements Serializable {
        private static final long serialVersionUID = 7092611880189329093L;

        Null() {
        }

        private Object readResolve() {
            return ObjectUtils.f65298a;
        }
    }

    public static <T> T a(final T obj) {
        if (!(obj instanceof Cloneable)) {
            return null;
        }
        if (obj.getClass().isArray()) {
            Class<?> componentType = obj.getClass().getComponentType();
            if (!componentType.isPrimitive()) {
                return (T) ((Object[]) obj).clone();
            }
            int length = Array.getLength(obj);
            T t3 = (T) Array.newInstance(componentType, length);
            while (true) {
                int i2 = length - 1;
                if (length <= 0) {
                    return t3;
                }
                Array.set(t3, i2, Array.get(obj, i2));
                length = i2;
            }
        } else {
            try {
                return (T) obj.getClass().getMethod("clone", new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException e4) {
                throw new CloneFailedException("Cannot clone Cloneable type " + obj.getClass().getName(), e4);
            } catch (NoSuchMethodException e5) {
                throw new CloneFailedException("Cloneable type " + obj.getClass().getName() + " has no clone method", e5);
            } catch (InvocationTargetException e6) {
                throw new CloneFailedException("Exception cloning Cloneable type " + obj.getClass().getName(), e6.getCause());
            }
        }
    }

    public static <T> T b(final T obj) {
        T t3 = (T) a(obj);
        return t3 == null ? obj : t3;
    }

    public static <T extends Comparable<? super T>> int c(T c12, T c22) {
        return d(c12, c22, false);
    }

    public static <T extends Comparable<? super T>> int d(T c12, T c22, boolean nullGreater) {
        if (c12 == c22) {
            return 0;
        }
        if (c12 == null) {
            return nullGreater ? 1 : -1;
        } else if (c22 == null) {
            return nullGreater ? -1 : 1;
        } else {
            return c12.compareTo(c22);
        }
    }

    public static <T> T e(T object, T defaultValue) {
        return object != null ? object : defaultValue;
    }

    public static boolean f(Object object1, Object object2) {
        if (object1 == object2) {
            return true;
        }
        if (object1 == null || object2 == null) {
            return false;
        }
        return object1.equals(object2);
    }

    public static <T> T g(T... values) {
        if (values != null) {
            for (T t3 : values) {
                if (t3 != null) {
                    return t3;
                }
            }
            return null;
        }
        return null;
    }

    public static int h(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static int i(Object... objects) {
        int i2 = 1;
        if (objects != null) {
            for (Object obj : objects) {
                i2 = (i2 * 31) + h(obj);
            }
        }
        return i2;
    }

    public static String j(Object object) {
        if (object == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        k(stringBuffer, object);
        return stringBuffer.toString();
    }

    public static void k(StringBuffer buffer, Object object) {
        Objects.requireNonNull(object, "Cannot get the toString of a null identity");
        buffer.append(object.getClass().getName());
        buffer.append('@');
        buffer.append(Integer.toHexString(System.identityHashCode(object)));
    }

    public static <T extends Comparable<? super T>> T l(T... values) {
        T t3 = null;
        if (values != null) {
            for (T t4 : values) {
                if (d(t4, t3, false) > 0) {
                    t3 = t4;
                }
            }
        }
        return t3;
    }

    public static <T extends Comparable<? super T>> T m(T... items) {
        g.A(items);
        g.q(items);
        TreeSet treeSet = new TreeSet();
        Collections.addAll(treeSet, items);
        return (T) treeSet.toArray()[(treeSet.size() - 1) / 2];
    }

    public static <T> T n(Comparator<T> comparator, T... items) {
        g.B(items, "null/empty items", new Object[0]);
        g.q(items);
        g.D(comparator, "null comparator", new Object[0]);
        TreeSet treeSet = new TreeSet(comparator);
        Collections.addAll(treeSet, items);
        return (T) treeSet.toArray()[(treeSet.size() - 1) / 2];
    }

    public static <T extends Comparable<? super T>> T o(T... values) {
        T t3 = null;
        if (values != null) {
            for (T t4 : values) {
                if (d(t4, t3, true) < 0) {
                    t3 = t4;
                }
            }
        }
        return t3;
    }

    public static <T> T p(T... items) {
        if (a.J0(items)) {
            HashMap hashMap = new HashMap(items.length);
            int i2 = 0;
            for (T t3 : items) {
                MutableInt mutableInt = (MutableInt) hashMap.get(t3);
                if (mutableInt == null) {
                    hashMap.put(t3, new MutableInt(1));
                } else {
                    mutableInt.Y();
                }
            }
            while (true) {
                T t4 = null;
                for (Map.Entry entry : hashMap.entrySet()) {
                    int intValue = ((MutableInt) entry.getValue()).intValue();
                    if (intValue == i2) {
                        break;
                    } else if (intValue > i2) {
                        t4 = (T) entry.getKey();
                        i2 = intValue;
                    }
                }
                return t4;
            }
        }
        return null;
    }

    public static boolean q(Object object1, Object object2) {
        return !f(object1, object2);
    }

    public static String r(Object obj) {
        return obj == null ? "" : obj.toString();
    }

    public static String s(Object obj, String nullStr) {
        return obj == null ? nullStr : obj.toString();
    }
}
