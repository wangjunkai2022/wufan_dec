package com.xinzhu.overmind.utils;

import com.xinzhu.overmind.utils.wrappers.ObjectsWrapper;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
/* compiled from: ArrayUtils.java */
/* loaded from: classes.dex */
public class d {
    public static <T> ArrayList<T> a(ArrayList<T> cur, T val) {
        if (cur == null) {
            cur = new ArrayList<>();
        }
        cur.add(val);
        return cur;
    }

    public static <T> T[] b(Class<T> kind, T[] array, T element) {
        return (T[]) c(kind, array, element, false);
    }

    public static <T> T[] c(Class<T> kind, T[] array, T element, boolean allowDuplicates) {
        T[] tArr;
        int i2 = 0;
        if (array != null) {
            if (!allowDuplicates && f(array, element)) {
                return array;
            }
            int length = array.length;
            tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) kind, length + 1));
            System.arraycopy(array, 0, tArr, 0, length);
            i2 = length;
        } else {
            tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) kind, 1));
        }
        tArr[i2] = element;
        return tArr;
    }

    public static void d(int len, int index) {
        if (index < 0 || len <= index) {
            throw new ArrayIndexOutOfBoundsException("length=" + len + "; index=" + index);
        }
    }

    public static boolean e(int[] array, int value) {
        if (array == null) {
            return false;
        }
        for (int i2 : array) {
            if (i2 == value) {
                return true;
            }
        }
        return false;
    }

    public static <T> boolean f(T[] array, T value) {
        return h(array, value) != -1;
    }

    public static <T> T g(T[] items) {
        if (items.length > 0) {
            return items[0];
        }
        return null;
    }

    public static int h(Object[] array, Object value) {
        return i(array, value, 0);
    }

    public static int i(Object[] array, Object value, int start) {
        if (!o(array) && start < array.length) {
            while (start < array.length) {
                if (ObjectsWrapper.equals(array[start], value)) {
                    return start;
                }
                start++;
            }
            return -1;
        }
        return -1;
    }

    public static int j(Object[] array, Class<?> type) {
        return k(array, type, 0);
    }

    public static int k(Object[] array, Class<?> type, int start) {
        if (!o(array) && start < array.length) {
            while (start < array.length) {
                if (type.isInstance(array[start])) {
                    return start;
                }
                start++;
            }
            return -1;
        }
        return -1;
    }

    public static int l(Object[] array, Class<?> type) {
        return m(array, type, 0);
    }

    public static int m(Object[] array, Class<?> type, int start) {
        if (!o(array) && start < array.length) {
            while (start < array.length) {
                if (array[start] != null && array[start].getClass() == type) {
                    return start;
                }
                start++;
            }
            return -1;
        }
        return -1;
    }

    public static int n(Object[] array, Class<?> type) {
        if (o(array)) {
            return -1;
        }
        for (int length = array.length - 1; length >= 0; length--) {
            if (array[length] != null && array[length].getClass() == type) {
                return length;
            }
        }
        return -1;
    }

    public static <T> boolean o(T[] array) {
        return array == null || array.length == 0;
    }

    public static <T> T[] p(T[] array, int size) {
        if (array == null || size == 0) {
            return null;
        }
        return array.length == size ? array : (T[]) Arrays.copyOf(array, size);
    }
}
