package external.org.apache.commons.lang3;

import external.org.apache.commons.lang3.builder.ToStringStyle;
import external.org.apache.commons.lang3.mutable.MutableInt;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
/* compiled from: ArrayUtils.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Object[] f65299a = new Object[0];

    /* renamed from: b  reason: collision with root package name */
    public static final Class<?>[] f65300b = new Class[0];

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f65301c = new String[0];

    /* renamed from: d  reason: collision with root package name */
    public static final long[] f65302d = new long[0];

    /* renamed from: e  reason: collision with root package name */
    public static final Long[] f65303e = new Long[0];

    /* renamed from: f  reason: collision with root package name */
    public static final int[] f65304f = new int[0];

    /* renamed from: g  reason: collision with root package name */
    public static final Integer[] f65305g = new Integer[0];

    /* renamed from: h  reason: collision with root package name */
    public static final short[] f65306h = new short[0];

    /* renamed from: i  reason: collision with root package name */
    public static final Short[] f65307i = new Short[0];

    /* renamed from: j  reason: collision with root package name */
    public static final byte[] f65308j = new byte[0];

    /* renamed from: k  reason: collision with root package name */
    public static final Byte[] f65309k = new Byte[0];

    /* renamed from: l  reason: collision with root package name */
    public static final double[] f65310l = new double[0];

    /* renamed from: m  reason: collision with root package name */
    public static final Double[] f65311m = new Double[0];

    /* renamed from: n  reason: collision with root package name */
    public static final float[] f65312n = new float[0];

    /* renamed from: o  reason: collision with root package name */
    public static final Float[] f65313o = new Float[0];

    /* renamed from: p  reason: collision with root package name */
    public static final boolean[] f65314p = new boolean[0];

    /* renamed from: q  reason: collision with root package name */
    public static final Boolean[] f65315q = new Boolean[0];

    /* renamed from: r  reason: collision with root package name */
    public static final char[] f65316r = new char[0];

    /* renamed from: s  reason: collision with root package name */
    public static final Character[] f65317s = new Character[0];

    /* renamed from: t  reason: collision with root package name */
    public static final int f65318t = -1;

    public static short[] A(short[] array1, short... array2) {
        if (array1 == null) {
            return J(array2);
        }
        if (array2 == null) {
            return J(array1);
        }
        short[] sArr = new short[array1.length + array2.length];
        System.arraycopy(array1, 0, sArr, 0, array1.length);
        System.arraycopy(array2, 0, sArr, array1.length, array2.length);
        return sArr;
    }

    public static boolean A0(short[] array) {
        return array == null || array.length == 0;
    }

    public static Float[] A1(Float[] array) {
        return (array == null || array.length == 0) ? f65313o : array;
    }

    public static void A2(Object[] array) {
        if (array == null) {
            return;
        }
        int length = array.length - 1;
        for (int i2 = 0; length > i2; i2++) {
            Object obj = array[length];
            array[length] = array[i2];
            array[i2] = obj;
            length--;
        }
    }

    public static boolean[] B(boolean[] array1, boolean... array2) {
        if (array1 == null) {
            return K(array2);
        }
        if (array2 == null) {
            return K(array1);
        }
        boolean[] zArr = new boolean[array1.length + array2.length];
        System.arraycopy(array1, 0, zArr, 0, array1.length);
        System.arraycopy(array2, 0, zArr, array1.length, array2.length);
        return zArr;
    }

    public static boolean B0(boolean[] array) {
        return array == null || array.length == 0;
    }

    public static Integer[] B1(Integer[] array) {
        return (array == null || array.length == 0) ? f65305g : array;
    }

    public static void B2(short[] array) {
        if (array == null) {
            return;
        }
        int length = array.length - 1;
        for (int i2 = 0; length > i2; i2++) {
            short s3 = array[length];
            array[length] = array[i2];
            array[i2] = s3;
            length--;
        }
    }

    public static byte[] C(byte[] array) {
        if (array == null) {
            return null;
        }
        return (byte[]) array.clone();
    }

    public static boolean C0(Object array1, Object array2) {
        return new external.org.apache.commons.lang3.builder.c().g(array1, array2).w();
    }

    public static Long[] C1(Long[] array) {
        return (array == null || array.length == 0) ? f65303e : array;
    }

    public static void C2(boolean[] array) {
        if (array == null) {
            return;
        }
        int length = array.length - 1;
        for (int i2 = 0; length > i2; i2++) {
            boolean z3 = array[length];
            array[length] = array[i2];
            array[i2] = z3;
            length--;
        }
    }

    public static char[] D(char[] array) {
        if (array == null) {
            return null;
        }
        return (char[]) array.clone();
    }

    public static boolean D0(byte[] array) {
        return (array == null || array.length == 0) ? false : true;
    }

    public static Object[] D1(Object[] array) {
        return (array == null || array.length == 0) ? f65299a : array;
    }

    public static byte[] D2(byte[] array, int startIndexInclusive, int endIndexExclusive) {
        if (array == null) {
            return null;
        }
        if (startIndexInclusive < 0) {
            startIndexInclusive = 0;
        }
        if (endIndexExclusive > array.length) {
            endIndexExclusive = array.length;
        }
        int i2 = endIndexExclusive - startIndexInclusive;
        if (i2 <= 0) {
            return f65308j;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(array, startIndexInclusive, bArr, 0, i2);
        return bArr;
    }

    public static double[] E(double[] array) {
        if (array == null) {
            return null;
        }
        return (double[]) array.clone();
    }

    public static boolean E0(char[] array) {
        return (array == null || array.length == 0) ? false : true;
    }

    public static Short[] E1(Short[] array) {
        return (array == null || array.length == 0) ? f65307i : array;
    }

    public static char[] E2(char[] array, int startIndexInclusive, int endIndexExclusive) {
        if (array == null) {
            return null;
        }
        if (startIndexInclusive < 0) {
            startIndexInclusive = 0;
        }
        if (endIndexExclusive > array.length) {
            endIndexExclusive = array.length;
        }
        int i2 = endIndexExclusive - startIndexInclusive;
        if (i2 <= 0) {
            return f65316r;
        }
        char[] cArr = new char[i2];
        System.arraycopy(array, startIndexInclusive, cArr, 0, i2);
        return cArr;
    }

    public static float[] F(float[] array) {
        if (array == null) {
            return null;
        }
        return (float[]) array.clone();
    }

    public static boolean F0(double[] array) {
        return (array == null || array.length == 0) ? false : true;
    }

    public static String[] F1(String[] array) {
        return (array == null || array.length == 0) ? f65301c : array;
    }

    public static double[] F2(double[] array, int startIndexInclusive, int endIndexExclusive) {
        if (array == null) {
            return null;
        }
        if (startIndexInclusive < 0) {
            startIndexInclusive = 0;
        }
        if (endIndexExclusive > array.length) {
            endIndexExclusive = array.length;
        }
        int i2 = endIndexExclusive - startIndexInclusive;
        if (i2 <= 0) {
            return f65310l;
        }
        double[] dArr = new double[i2];
        System.arraycopy(array, startIndexInclusive, dArr, 0, i2);
        return dArr;
    }

    public static int[] G(int[] array) {
        if (array == null) {
            return null;
        }
        return (int[]) array.clone();
    }

    public static boolean G0(float[] array) {
        return (array == null || array.length == 0) ? false : true;
    }

    public static short[] G1(short[] array) {
        return (array == null || array.length == 0) ? f65306h : array;
    }

    public static float[] G2(float[] array, int startIndexInclusive, int endIndexExclusive) {
        if (array == null) {
            return null;
        }
        if (startIndexInclusive < 0) {
            startIndexInclusive = 0;
        }
        if (endIndexExclusive > array.length) {
            endIndexExclusive = array.length;
        }
        int i2 = endIndexExclusive - startIndexInclusive;
        if (i2 <= 0) {
            return f65312n;
        }
        float[] fArr = new float[i2];
        System.arraycopy(array, startIndexInclusive, fArr, 0, i2);
        return fArr;
    }

    public static long[] H(long[] array) {
        if (array == null) {
            return null;
        }
        return (long[]) array.clone();
    }

    public static boolean H0(int[] array) {
        return (array == null || array.length == 0) ? false : true;
    }

    public static boolean[] H1(boolean[] array) {
        return (array == null || array.length == 0) ? f65314p : array;
    }

    public static int[] H2(int[] array, int startIndexInclusive, int endIndexExclusive) {
        if (array == null) {
            return null;
        }
        if (startIndexInclusive < 0) {
            startIndexInclusive = 0;
        }
        if (endIndexExclusive > array.length) {
            endIndexExclusive = array.length;
        }
        int i2 = endIndexExclusive - startIndexInclusive;
        if (i2 <= 0) {
            return f65304f;
        }
        int[] iArr = new int[i2];
        System.arraycopy(array, startIndexInclusive, iArr, 0, i2);
        return iArr;
    }

    public static <T> T[] I(T[] array) {
        if (array == null) {
            return null;
        }
        return (T[]) ((Object[]) array.clone());
    }

    public static boolean I0(long[] array) {
        return (array == null || array.length == 0) ? false : true;
    }

    private static Object I1(Object array, int index) {
        int X = X(array);
        if (index >= 0 && index < X) {
            int i2 = X - 1;
            Object newInstance = Array.newInstance(array.getClass().getComponentType(), i2);
            System.arraycopy(array, 0, newInstance, 0, index);
            if (index < i2) {
                System.arraycopy(array, index + 1, newInstance, index, (X - index) - 1);
            }
            return newInstance;
        }
        throw new IndexOutOfBoundsException("Index: " + index + ", Length: " + X);
    }

    public static long[] I2(long[] array, int startIndexInclusive, int endIndexExclusive) {
        if (array == null) {
            return null;
        }
        if (startIndexInclusive < 0) {
            startIndexInclusive = 0;
        }
        if (endIndexExclusive > array.length) {
            endIndexExclusive = array.length;
        }
        int i2 = endIndexExclusive - startIndexInclusive;
        if (i2 <= 0) {
            return f65302d;
        }
        long[] jArr = new long[i2];
        System.arraycopy(array, startIndexInclusive, jArr, 0, i2);
        return jArr;
    }

    public static short[] J(short[] array) {
        if (array == null) {
            return null;
        }
        return (short[]) array.clone();
    }

    public static <T> boolean J0(T[] array) {
        return (array == null || array.length == 0) ? false : true;
    }

    public static byte[] J1(byte[] array, int index) {
        return (byte[]) I1(array, index);
    }

    public static <T> T[] J2(T[] array, int startIndexInclusive, int endIndexExclusive) {
        if (array == null) {
            return null;
        }
        if (startIndexInclusive < 0) {
            startIndexInclusive = 0;
        }
        if (endIndexExclusive > array.length) {
            endIndexExclusive = array.length;
        }
        int i2 = endIndexExclusive - startIndexInclusive;
        Class<?> componentType = array.getClass().getComponentType();
        if (i2 <= 0) {
            return (T[]) ((Object[]) Array.newInstance(componentType, 0));
        }
        T[] tArr = (T[]) ((Object[]) Array.newInstance(componentType, i2));
        System.arraycopy(array, startIndexInclusive, tArr, 0, i2);
        return tArr;
    }

    public static boolean[] K(boolean[] array) {
        if (array == null) {
            return null;
        }
        return (boolean[]) array.clone();
    }

    public static boolean K0(short[] array) {
        return (array == null || array.length == 0) ? false : true;
    }

    public static char[] K1(char[] array, int index) {
        return (char[]) I1(array, index);
    }

    public static short[] K2(short[] array, int startIndexInclusive, int endIndexExclusive) {
        if (array == null) {
            return null;
        }
        if (startIndexInclusive < 0) {
            startIndexInclusive = 0;
        }
        if (endIndexExclusive > array.length) {
            endIndexExclusive = array.length;
        }
        int i2 = endIndexExclusive - startIndexInclusive;
        if (i2 <= 0) {
            return f65306h;
        }
        short[] sArr = new short[i2];
        System.arraycopy(array, startIndexInclusive, sArr, 0, i2);
        return sArr;
    }

    public static boolean L(byte[] array, byte valueToFind) {
        return Z(array, valueToFind) != -1;
    }

    public static boolean L0(boolean[] array) {
        return (array == null || array.length == 0) ? false : true;
    }

    public static double[] L1(double[] array, int index) {
        return (double[]) I1(array, index);
    }

    public static boolean[] L2(boolean[] array, int startIndexInclusive, int endIndexExclusive) {
        if (array == null) {
            return null;
        }
        if (startIndexInclusive < 0) {
            startIndexInclusive = 0;
        }
        if (endIndexExclusive > array.length) {
            endIndexExclusive = array.length;
        }
        int i2 = endIndexExclusive - startIndexInclusive;
        if (i2 <= 0) {
            return f65314p;
        }
        boolean[] zArr = new boolean[i2];
        System.arraycopy(array, startIndexInclusive, zArr, 0, i2);
        return zArr;
    }

    public static boolean M(char[] array, char valueToFind) {
        return b0(array, valueToFind) != -1;
    }

    public static boolean M0(byte[] array1, byte[] array2) {
        if (array1 != null || array2 == null || array2.length <= 0) {
            if (array2 != null || array1 == null || array1.length <= 0) {
                return array1 == null || array2 == null || array1.length == array2.length;
            }
            return false;
        }
        return false;
    }

    public static float[] M1(float[] array, int index) {
        return (float[]) I1(array, index);
    }

    public static <T> T[] M2(final T... items) {
        return items;
    }

    public static boolean N(double[] array, double valueToFind) {
        return d0(array, valueToFind) != -1;
    }

    public static boolean N0(char[] array1, char[] array2) {
        if (array1 != null || array2 == null || array2.length <= 0) {
            if (array2 != null || array1 == null || array1.length <= 0) {
                return array1 == null || array2 == null || array1.length == array2.length;
            }
            return false;
        }
        return false;
    }

    public static int[] N1(int[] array, int index) {
        return (int[]) I1(array, index);
    }

    public static Map<Object, Object> N2(Object[] array) {
        if (array == null) {
            return null;
        }
        double length = array.length;
        Double.isNaN(length);
        HashMap hashMap = new HashMap((int) (length * 1.5d));
        for (int i2 = 0; i2 < array.length; i2++) {
            Object obj = array[i2];
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                hashMap.put(entry.getKey(), entry.getValue());
            } else if (obj instanceof Object[]) {
                Object[] objArr = (Object[]) obj;
                if (objArr.length >= 2) {
                    hashMap.put(objArr[0], objArr[1]);
                } else {
                    throw new IllegalArgumentException("Array element " + i2 + ", '" + obj + "', has a length less than 2");
                }
            } else {
                throw new IllegalArgumentException("Array element " + i2 + ", '" + obj + "', is neither of type Map.Entry nor an Array");
            }
        }
        return hashMap;
    }

    public static boolean O(double[] array, double valueToFind, double tolerance) {
        return g0(array, valueToFind, 0, tolerance) != -1;
    }

    public static boolean O0(double[] array1, double[] array2) {
        if (array1 != null || array2 == null || array2.length <= 0) {
            if (array2 != null || array1 == null || array1.length <= 0) {
                return array1 == null || array2 == null || array1.length == array2.length;
            }
            return false;
        }
        return false;
    }

    public static long[] O1(long[] array, int index) {
        return (long[]) I1(array, index);
    }

    public static Boolean[] O2(boolean[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65315q;
        }
        Boolean[] boolArr = new Boolean[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            boolArr[i2] = array[i2] ? Boolean.TRUE : Boolean.FALSE;
        }
        return boolArr;
    }

    public static boolean P(float[] array, float valueToFind) {
        return h0(array, valueToFind) != -1;
    }

    public static boolean P0(float[] array1, float[] array2) {
        if (array1 != null || array2 == null || array2.length <= 0) {
            if (array2 != null || array1 == null || array1.length <= 0) {
                return array1 == null || array2 == null || array1.length == array2.length;
            }
            return false;
        }
        return false;
    }

    public static <T> T[] P1(T[] array, int index) {
        return (T[]) ((Object[]) I1(array, index));
    }

    public static Byte[] P2(byte[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65309k;
        }
        Byte[] bArr = new Byte[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            bArr[i2] = Byte.valueOf(array[i2]);
        }
        return bArr;
    }

    public static boolean Q(int[] array, int valueToFind) {
        return j0(array, valueToFind) != -1;
    }

    public static boolean Q0(int[] array1, int[] array2) {
        if (array1 != null || array2 == null || array2.length <= 0) {
            if (array2 != null || array1 == null || array1.length <= 0) {
                return array1 == null || array2 == null || array1.length == array2.length;
            }
            return false;
        }
        return false;
    }

    public static short[] Q1(short[] array, int index) {
        return (short[]) I1(array, index);
    }

    public static Character[] Q2(char[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65317s;
        }
        Character[] chArr = new Character[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            chArr[i2] = Character.valueOf(array[i2]);
        }
        return chArr;
    }

    public static boolean R(long[] array, long valueToFind) {
        return l0(array, valueToFind) != -1;
    }

    public static boolean R0(long[] array1, long[] array2) {
        if (array1 != null || array2 == null || array2.length <= 0) {
            if (array2 != null || array1 == null || array1.length <= 0) {
                return array1 == null || array2 == null || array1.length == array2.length;
            }
            return false;
        }
        return false;
    }

    public static boolean[] R1(boolean[] array, int index) {
        return (boolean[]) I1(array, index);
    }

    public static Double[] R2(double[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65311m;
        }
        Double[] dArr = new Double[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            dArr[i2] = Double.valueOf(array[i2]);
        }
        return dArr;
    }

    public static boolean S(Object[] array, Object objectToFind) {
        return n0(array, objectToFind) != -1;
    }

    public static boolean S0(Object[] array1, Object[] array2) {
        if (array1 != null || array2 == null || array2.length <= 0) {
            if (array2 != null || array1 == null || array1.length <= 0) {
                return array1 == null || array2 == null || array1.length == array2.length;
            }
            return false;
        }
        return false;
    }

    private static Object S1(Object array, int... indices) {
        int i2;
        int i4;
        int X = X(array);
        if (H0(indices)) {
            Arrays.sort(indices);
            int length = indices.length;
            int i5 = X;
            i2 = 0;
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                i4 = indices[length];
                if (i4 < 0 || i4 >= X) {
                    break;
                } else if (i4 < i5) {
                    i2++;
                    i5 = i4;
                }
            }
            throw new IndexOutOfBoundsException("Index: " + i4 + ", Length: " + X);
        }
        i2 = 0;
        int i6 = X - i2;
        Object newInstance = Array.newInstance(array.getClass().getComponentType(), i6);
        if (i2 < X) {
            int length2 = indices.length - 1;
            while (length2 >= 0) {
                int i7 = indices[length2];
                int i8 = X - i7;
                if (i8 > 1) {
                    int i9 = i8 - 1;
                    i6 -= i9;
                    System.arraycopy(array, i7 + 1, newInstance, i6, i9);
                }
                length2--;
                X = i7;
            }
            if (X > 0) {
                System.arraycopy(array, 0, newInstance, 0, X);
            }
        }
        return newInstance;
    }

    public static Float[] S2(float[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65313o;
        }
        Float[] fArr = new Float[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            fArr[i2] = Float.valueOf(array[i2]);
        }
        return fArr;
    }

    public static boolean T(short[] array, short valueToFind) {
        return p0(array, valueToFind) != -1;
    }

    public static boolean T0(short[] array1, short[] array2) {
        if (array1 != null || array2 == null || array2.length <= 0) {
            if (array2 != null || array1 == null || array1.length <= 0) {
                return array1 == null || array2 == null || array1.length == array2.length;
            }
            return false;
        }
        return false;
    }

    public static byte[] T1(byte[] array, int... indices) {
        return (byte[]) S1(array, G(indices));
    }

    public static Integer[] T2(int[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65305g;
        }
        Integer[] numArr = new Integer[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            numArr[i2] = Integer.valueOf(array[i2]);
        }
        return numArr;
    }

    public static boolean U(boolean[] array, boolean valueToFind) {
        return r0(array, valueToFind) != -1;
    }

    public static boolean U0(boolean[] array1, boolean[] array2) {
        if (array1 != null || array2 == null || array2.length <= 0) {
            if (array2 != null || array1 == null || array1.length <= 0) {
                return array1 == null || array2 == null || array1.length == array2.length;
            }
            return false;
        }
        return false;
    }

    public static char[] U1(char[] array, int... indices) {
        return (char[]) S1(array, G(indices));
    }

    public static Long[] U2(long[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65303e;
        }
        Long[] lArr = new Long[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            lArr[i2] = Long.valueOf(array[i2]);
        }
        return lArr;
    }

    private static Object V(Object array, Class<?> newArrayComponentType) {
        if (array != null) {
            int length = Array.getLength(array);
            Object newInstance = Array.newInstance(array.getClass().getComponentType(), length + 1);
            System.arraycopy(array, 0, newInstance, 0, length);
            return newInstance;
        }
        return Array.newInstance(newArrayComponentType, 1);
    }

    public static boolean V0(Object array1, Object array2) {
        if (array1 != null && array2 != null) {
            return array1.getClass().getName().equals(array2.getClass().getName());
        }
        throw new IllegalArgumentException("The Array must not be null");
    }

    public static double[] V1(double[] array, int... indices) {
        return (double[]) S1(array, G(indices));
    }

    public static Short[] V2(short[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65307i;
        }
        Short[] shArr = new Short[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            shArr[i2] = Short.valueOf(array[i2]);
        }
        return shArr;
    }

    private static int[] W(HashSet<Integer> coll) {
        int[] iArr = new int[coll.size()];
        Iterator<Integer> it2 = coll.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            iArr[i2] = it2.next().intValue();
            i2++;
        }
        return iArr;
    }

    public static int W0(byte[] array, byte valueToFind) {
        return X0(array, valueToFind, Integer.MAX_VALUE);
    }

    public static float[] W1(float[] array, int... indices) {
        return (float[]) S1(array, G(indices));
    }

    public static byte[] W2(Byte[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65308j;
        }
        byte[] bArr = new byte[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            bArr[i2] = array[i2].byteValue();
        }
        return bArr;
    }

    public static int X(Object array) {
        if (array == null) {
            return 0;
        }
        return Array.getLength(array);
    }

    public static int X0(byte[] array, byte valueToFind, int startIndex) {
        if (array != null && startIndex >= 0) {
            if (startIndex >= array.length) {
                startIndex = array.length - 1;
            }
            while (startIndex >= 0) {
                if (valueToFind == array[startIndex]) {
                    return startIndex;
                }
                startIndex--;
            }
            return -1;
        }
        return -1;
    }

    public static int[] X1(int[] array, int... indices) {
        return (int[]) S1(array, G(indices));
    }

    public static byte[] X2(Byte[] array, byte valueForNull) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65308j;
        }
        byte[] bArr = new byte[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            Byte b4 = array[i2];
            bArr[i2] = b4 == null ? valueForNull : b4.byteValue();
        }
        return bArr;
    }

    public static int Y(Object array) {
        return new external.org.apache.commons.lang3.builder.d().g(array).E();
    }

    public static int Y0(char[] array, char valueToFind) {
        return Z0(array, valueToFind, Integer.MAX_VALUE);
    }

    public static long[] Y1(long[] array, int... indices) {
        return (long[]) S1(array, G(indices));
    }

    public static char[] Y2(Character[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65316r;
        }
        char[] cArr = new char[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            cArr[i2] = array[i2].charValue();
        }
        return cArr;
    }

    public static int Z(byte[] array, byte valueToFind) {
        return a0(array, valueToFind, 0);
    }

    public static int Z0(char[] array, char valueToFind, int startIndex) {
        if (array != null && startIndex >= 0) {
            if (startIndex >= array.length) {
                startIndex = array.length - 1;
            }
            while (startIndex >= 0) {
                if (valueToFind == array[startIndex]) {
                    return startIndex;
                }
                startIndex--;
            }
            return -1;
        }
        return -1;
    }

    public static <T> T[] Z1(T[] array, int... indices) {
        return (T[]) ((Object[]) S1(array, G(indices)));
    }

    public static char[] Z2(Character[] array, char valueForNull) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65316r;
        }
        char[] cArr = new char[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            Character ch = array[i2];
            cArr[i2] = ch == null ? valueForNull : ch.charValue();
        }
        return cArr;
    }

    private static Object a(Object array, int index, Object element, Class<?> clss) {
        if (array == null) {
            if (index == 0) {
                Object newInstance = Array.newInstance(clss, 1);
                Array.set(newInstance, 0, element);
                return newInstance;
            }
            throw new IndexOutOfBoundsException("Index: " + index + ", Length: 0");
        }
        int length = Array.getLength(array);
        if (index <= length && index >= 0) {
            Object newInstance2 = Array.newInstance(clss, length + 1);
            System.arraycopy(array, 0, newInstance2, 0, index);
            Array.set(newInstance2, index, element);
            if (index < length) {
                System.arraycopy(array, index, newInstance2, index + 1, length - index);
            }
            return newInstance2;
        }
        throw new IndexOutOfBoundsException("Index: " + index + ", Length: " + length);
    }

    public static int a0(byte[] array, byte valueToFind, int startIndex) {
        if (array == null) {
            return -1;
        }
        if (startIndex < 0) {
            startIndex = 0;
        }
        while (startIndex < array.length) {
            if (valueToFind == array[startIndex]) {
                return startIndex;
            }
            startIndex++;
        }
        return -1;
    }

    public static int a1(double[] array, double valueToFind) {
        return c1(array, valueToFind, Integer.MAX_VALUE);
    }

    public static short[] a2(short[] array, int... indices) {
        return (short[]) S1(array, G(indices));
    }

    public static double[] a3(Double[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65310l;
        }
        double[] dArr = new double[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            dArr[i2] = array[i2].doubleValue();
        }
        return dArr;
    }

    public static byte[] b(byte[] array, byte element) {
        byte[] bArr = (byte[]) V(array, Byte.TYPE);
        bArr[bArr.length - 1] = element;
        return bArr;
    }

    public static int b0(char[] array, char valueToFind) {
        return c0(array, valueToFind, 0);
    }

    public static int b1(double[] array, double valueToFind, double tolerance) {
        return d1(array, valueToFind, Integer.MAX_VALUE, tolerance);
    }

    public static boolean[] b2(boolean[] array, int... indices) {
        return (boolean[]) S1(array, G(indices));
    }

    public static double[] b3(Double[] array, double valueForNull) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65310l;
        }
        double[] dArr = new double[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            Double d4 = array[i2];
            dArr[i2] = d4 == null ? valueForNull : d4.doubleValue();
        }
        return dArr;
    }

    public static byte[] c(byte[] array, int index, byte element) {
        return (byte[]) a(array, index, Byte.valueOf(element), Byte.TYPE);
    }

    public static int c0(char[] array, char valueToFind, int startIndex) {
        if (array == null) {
            return -1;
        }
        if (startIndex < 0) {
            startIndex = 0;
        }
        while (startIndex < array.length) {
            if (valueToFind == array[startIndex]) {
                return startIndex;
            }
            startIndex++;
        }
        return -1;
    }

    public static int c1(double[] array, double valueToFind, int startIndex) {
        if (!v0(array) && startIndex >= 0) {
            if (startIndex >= array.length) {
                startIndex = array.length - 1;
            }
            while (startIndex >= 0) {
                if (valueToFind == array[startIndex]) {
                    return startIndex;
                }
                startIndex--;
            }
            return -1;
        }
        return -1;
    }

    public static byte[] c2(byte[] array, byte element) {
        int Z = Z(array, element);
        if (Z == -1) {
            return C(array);
        }
        return J1(array, Z);
    }

    public static float[] c3(Float[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65312n;
        }
        float[] fArr = new float[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            fArr[i2] = array[i2].floatValue();
        }
        return fArr;
    }

    public static char[] d(char[] array, char element) {
        char[] cArr = (char[]) V(array, Character.TYPE);
        cArr[cArr.length - 1] = element;
        return cArr;
    }

    public static int d0(double[] array, double valueToFind) {
        return f0(array, valueToFind, 0);
    }

    public static int d1(double[] array, double valueToFind, int startIndex, double tolerance) {
        if (!v0(array) && startIndex >= 0) {
            if (startIndex >= array.length) {
                startIndex = array.length - 1;
            }
            double d4 = valueToFind - tolerance;
            double d5 = valueToFind + tolerance;
            while (startIndex >= 0) {
                if (array[startIndex] >= d4 && array[startIndex] <= d5) {
                    return startIndex;
                }
                startIndex--;
            }
            return -1;
        }
        return -1;
    }

    public static char[] d2(char[] array, char element) {
        int b02 = b0(array, element);
        if (b02 == -1) {
            return D(array);
        }
        return K1(array, b02);
    }

    public static float[] d3(Float[] array, float valueForNull) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65312n;
        }
        float[] fArr = new float[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            Float f4 = array[i2];
            fArr[i2] = f4 == null ? valueForNull : f4.floatValue();
        }
        return fArr;
    }

    public static char[] e(char[] array, int index, char element) {
        return (char[]) a(array, index, Character.valueOf(element), Character.TYPE);
    }

    public static int e0(double[] array, double valueToFind, double tolerance) {
        return g0(array, valueToFind, 0, tolerance);
    }

    public static int e1(float[] array, float valueToFind) {
        return f1(array, valueToFind, Integer.MAX_VALUE);
    }

    public static double[] e2(double[] array, double element) {
        int d02 = d0(array, element);
        if (d02 == -1) {
            return E(array);
        }
        return L1(array, d02);
    }

    public static int[] e3(Integer[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65304f;
        }
        int[] iArr = new int[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            iArr[i2] = array[i2].intValue();
        }
        return iArr;
    }

    public static double[] f(double[] array, double element) {
        double[] dArr = (double[]) V(array, Double.TYPE);
        dArr[dArr.length - 1] = element;
        return dArr;
    }

    public static int f0(double[] array, double valueToFind, int startIndex) {
        if (v0(array)) {
            return -1;
        }
        if (startIndex < 0) {
            startIndex = 0;
        }
        while (startIndex < array.length) {
            if (valueToFind == array[startIndex]) {
                return startIndex;
            }
            startIndex++;
        }
        return -1;
    }

    public static int f1(float[] array, float valueToFind, int startIndex) {
        if (!w0(array) && startIndex >= 0) {
            if (startIndex >= array.length) {
                startIndex = array.length - 1;
            }
            while (startIndex >= 0) {
                if (valueToFind == array[startIndex]) {
                    return startIndex;
                }
                startIndex--;
            }
            return -1;
        }
        return -1;
    }

    public static float[] f2(float[] array, float element) {
        int h02 = h0(array, element);
        if (h02 == -1) {
            return F(array);
        }
        return M1(array, h02);
    }

    public static int[] f3(Integer[] array, int valueForNull) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65304f;
        }
        int[] iArr = new int[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            Integer num = array[i2];
            iArr[i2] = num == null ? valueForNull : num.intValue();
        }
        return iArr;
    }

    public static double[] g(double[] array, int index, double element) {
        return (double[]) a(array, index, Double.valueOf(element), Double.TYPE);
    }

    public static int g0(double[] array, double valueToFind, int startIndex, double tolerance) {
        if (v0(array)) {
            return -1;
        }
        if (startIndex < 0) {
            startIndex = 0;
        }
        double d4 = valueToFind - tolerance;
        double d5 = valueToFind + tolerance;
        while (startIndex < array.length) {
            if (array[startIndex] >= d4 && array[startIndex] <= d5) {
                return startIndex;
            }
            startIndex++;
        }
        return -1;
    }

    public static int g1(int[] array, int valueToFind) {
        return h1(array, valueToFind, Integer.MAX_VALUE);
    }

    public static int[] g2(int[] array, int element) {
        int j02 = j0(array, element);
        if (j02 == -1) {
            return G(array);
        }
        return N1(array, j02);
    }

    public static long[] g3(Long[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65302d;
        }
        long[] jArr = new long[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            jArr[i2] = array[i2].longValue();
        }
        return jArr;
    }

    public static float[] h(float[] array, float element) {
        float[] fArr = (float[]) V(array, Float.TYPE);
        fArr[fArr.length - 1] = element;
        return fArr;
    }

    public static int h0(float[] array, float valueToFind) {
        return i0(array, valueToFind, 0);
    }

    public static int h1(int[] array, int valueToFind, int startIndex) {
        if (array != null && startIndex >= 0) {
            if (startIndex >= array.length) {
                startIndex = array.length - 1;
            }
            while (startIndex >= 0) {
                if (valueToFind == array[startIndex]) {
                    return startIndex;
                }
                startIndex--;
            }
            return -1;
        }
        return -1;
    }

    public static long[] h2(long[] array, long element) {
        int l02 = l0(array, element);
        if (l02 == -1) {
            return H(array);
        }
        return O1(array, l02);
    }

    public static long[] h3(Long[] array, long valueForNull) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65302d;
        }
        long[] jArr = new long[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            Long l4 = array[i2];
            jArr[i2] = l4 == null ? valueForNull : l4.longValue();
        }
        return jArr;
    }

    public static float[] i(float[] array, int index, float element) {
        return (float[]) a(array, index, Float.valueOf(element), Float.TYPE);
    }

    public static int i0(float[] array, float valueToFind, int startIndex) {
        if (w0(array)) {
            return -1;
        }
        if (startIndex < 0) {
            startIndex = 0;
        }
        while (startIndex < array.length) {
            if (valueToFind == array[startIndex]) {
                return startIndex;
            }
            startIndex++;
        }
        return -1;
    }

    public static int i1(long[] array, long valueToFind) {
        return j1(array, valueToFind, Integer.MAX_VALUE);
    }

    public static <T> T[] i2(T[] array, Object element) {
        int n02 = n0(array, element);
        if (n02 == -1) {
            return (T[]) I(array);
        }
        return (T[]) P1(array, n02);
    }

    public static short[] i3(Short[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65306h;
        }
        short[] sArr = new short[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            sArr[i2] = array[i2].shortValue();
        }
        return sArr;
    }

    public static int[] j(int[] array, int element) {
        int[] iArr = (int[]) V(array, Integer.TYPE);
        iArr[iArr.length - 1] = element;
        return iArr;
    }

    public static int j0(int[] array, int valueToFind) {
        return k0(array, valueToFind, 0);
    }

    public static int j1(long[] array, long valueToFind, int startIndex) {
        if (array != null && startIndex >= 0) {
            if (startIndex >= array.length) {
                startIndex = array.length - 1;
            }
            while (startIndex >= 0) {
                if (valueToFind == array[startIndex]) {
                    return startIndex;
                }
                startIndex--;
            }
            return -1;
        }
        return -1;
    }

    public static short[] j2(short[] array, short element) {
        int p02 = p0(array, element);
        if (p02 == -1) {
            return J(array);
        }
        return Q1(array, p02);
    }

    public static short[] j3(Short[] array, short valueForNull) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65306h;
        }
        short[] sArr = new short[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            Short sh = array[i2];
            sArr[i2] = sh == null ? valueForNull : sh.shortValue();
        }
        return sArr;
    }

    public static int[] k(int[] array, int index, int element) {
        return (int[]) a(array, index, Integer.valueOf(element), Integer.TYPE);
    }

    public static int k0(int[] array, int valueToFind, int startIndex) {
        if (array == null) {
            return -1;
        }
        if (startIndex < 0) {
            startIndex = 0;
        }
        while (startIndex < array.length) {
            if (valueToFind == array[startIndex]) {
                return startIndex;
            }
            startIndex++;
        }
        return -1;
    }

    public static int k1(Object[] array, Object objectToFind) {
        return l1(array, objectToFind, Integer.MAX_VALUE);
    }

    public static boolean[] k2(boolean[] array, boolean element) {
        int r02 = r0(array, element);
        if (r02 == -1) {
            return K(array);
        }
        return R1(array, r02);
    }

    public static boolean[] k3(Boolean[] array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65314p;
        }
        boolean[] zArr = new boolean[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            zArr[i2] = array[i2].booleanValue();
        }
        return zArr;
    }

    public static long[] l(long[] array, int index, long element) {
        return (long[]) a(array, index, Long.valueOf(element), Long.TYPE);
    }

    public static int l0(long[] array, long valueToFind) {
        return m0(array, valueToFind, 0);
    }

    public static int l1(Object[] array, Object objectToFind, int startIndex) {
        if (array != null && startIndex >= 0) {
            if (startIndex >= array.length) {
                startIndex = array.length - 1;
            }
            if (objectToFind == null) {
                while (startIndex >= 0) {
                    if (array[startIndex] == null) {
                        return startIndex;
                    }
                    startIndex--;
                }
            } else if (array.getClass().getComponentType().isInstance(objectToFind)) {
                while (startIndex >= 0) {
                    if (objectToFind.equals(array[startIndex])) {
                        return startIndex;
                    }
                    startIndex--;
                }
            }
            return -1;
        }
        return -1;
    }

    public static byte[] l2(byte[] array, byte... values) {
        if (!t0(array) && !t0(values)) {
            HashMap hashMap = new HashMap(values.length);
            for (byte b4 : values) {
                Byte valueOf = Byte.valueOf(b4);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.Y();
                }
            }
            HashSet hashSet = new HashSet();
            for (Map.Entry entry : hashMap.entrySet()) {
                Byte b5 = (Byte) entry.getKey();
                int intValue = ((MutableInt) entry.getValue()).intValue();
                int i2 = 0;
                int i4 = 0;
                while (i2 < intValue) {
                    int a02 = a0(array, b5.byteValue(), i4);
                    if (a02 < 0) {
                        break;
                    }
                    hashSet.add(Integer.valueOf(a02));
                    i2++;
                    i4 = a02 + 1;
                }
            }
            return T1(array, W(hashSet));
        }
        return C(array);
    }

    public static boolean[] l3(Boolean[] array, boolean valueForNull) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return f65314p;
        }
        boolean[] zArr = new boolean[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            Boolean bool = array[i2];
            zArr[i2] = bool == null ? valueForNull : bool.booleanValue();
        }
        return zArr;
    }

    public static long[] m(long[] array, long element) {
        long[] jArr = (long[]) V(array, Long.TYPE);
        jArr[jArr.length - 1] = element;
        return jArr;
    }

    public static int m0(long[] array, long valueToFind, int startIndex) {
        if (array == null) {
            return -1;
        }
        if (startIndex < 0) {
            startIndex = 0;
        }
        while (startIndex < array.length) {
            if (valueToFind == array[startIndex]) {
                return startIndex;
            }
            startIndex++;
        }
        return -1;
    }

    public static int m1(short[] array, short valueToFind) {
        return n1(array, valueToFind, Integer.MAX_VALUE);
    }

    public static char[] m2(char[] array, char... values) {
        if (!u0(array) && !u0(values)) {
            HashMap hashMap = new HashMap(values.length);
            for (char c4 : values) {
                Character valueOf = Character.valueOf(c4);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.Y();
                }
            }
            HashSet hashSet = new HashSet();
            for (Map.Entry entry : hashMap.entrySet()) {
                Character ch = (Character) entry.getKey();
                int intValue = ((MutableInt) entry.getValue()).intValue();
                int i2 = 0;
                int i4 = 0;
                while (i2 < intValue) {
                    int c02 = c0(array, ch.charValue(), i4);
                    if (c02 < 0) {
                        break;
                    }
                    hashSet.add(Integer.valueOf(c02));
                    i2++;
                    i4 = c02 + 1;
                }
            }
            return U1(array, W(hashSet));
        }
        return D(array);
    }

    public static String m3(Object array) {
        return n3(array, "{}");
    }

    public static <T> T[] n(T[] array, int index, T element) {
        Class<?> cls;
        if (array != null) {
            cls = array.getClass().getComponentType();
        } else if (element != null) {
            cls = element.getClass();
        } else {
            throw new IllegalArgumentException("Array and element cannot both be null");
        }
        return (T[]) ((Object[]) a(array, index, element, cls));
    }

    public static int n0(Object[] array, Object objectToFind) {
        return o0(array, objectToFind, 0);
    }

    public static int n1(short[] array, short valueToFind, int startIndex) {
        if (array != null && startIndex >= 0) {
            if (startIndex >= array.length) {
                startIndex = array.length - 1;
            }
            while (startIndex >= 0) {
                if (valueToFind == array[startIndex]) {
                    return startIndex;
                }
                startIndex--;
            }
            return -1;
        }
        return -1;
    }

    public static double[] n2(double[] array, double... values) {
        if (!v0(array) && !v0(values)) {
            HashMap hashMap = new HashMap(values.length);
            for (double d4 : values) {
                Double valueOf = Double.valueOf(d4);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.Y();
                }
            }
            HashSet hashSet = new HashSet();
            for (Map.Entry entry : hashMap.entrySet()) {
                Double d5 = (Double) entry.getKey();
                int intValue = ((MutableInt) entry.getValue()).intValue();
                int i2 = 0;
                int i4 = 0;
                while (i2 < intValue) {
                    int f02 = f0(array, d5.doubleValue(), i4);
                    if (f02 < 0) {
                        break;
                    }
                    hashSet.add(Integer.valueOf(f02));
                    i2++;
                    i4 = f02 + 1;
                }
            }
            return V1(array, W(hashSet));
        }
        return E(array);
    }

    public static String n3(Object array, String stringIfNull) {
        return array == null ? stringIfNull : new external.org.apache.commons.lang3.builder.g(array, ToStringStyle.f65323y).g(array).toString();
    }

    public static <T> T[] o(T[] array, T element) {
        Class<?> cls;
        if (array != null) {
            cls = array.getClass();
        } else if (element != null) {
            cls = element.getClass();
        } else {
            throw new IllegalArgumentException("Arguments cannot both be null");
        }
        T[] tArr = (T[]) ((Object[]) V(array, cls));
        tArr[tArr.length - 1] = element;
        return tArr;
    }

    public static int o0(Object[] array, Object objectToFind, int startIndex) {
        if (array == null) {
            return -1;
        }
        if (startIndex < 0) {
            startIndex = 0;
        }
        if (objectToFind == null) {
            while (startIndex < array.length) {
                if (array[startIndex] == null) {
                    return startIndex;
                }
                startIndex++;
            }
        } else if (array.getClass().getComponentType().isInstance(objectToFind)) {
            while (startIndex < array.length) {
                if (objectToFind.equals(array[startIndex])) {
                    return startIndex;
                }
                startIndex++;
            }
        }
        return -1;
    }

    public static int o1(boolean[] array, boolean valueToFind) {
        return p1(array, valueToFind, Integer.MAX_VALUE);
    }

    public static float[] o2(float[] array, float... values) {
        if (!w0(array) && !w0(values)) {
            HashMap hashMap = new HashMap(values.length);
            for (float f4 : values) {
                Float valueOf = Float.valueOf(f4);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.Y();
                }
            }
            HashSet hashSet = new HashSet();
            for (Map.Entry entry : hashMap.entrySet()) {
                Float f5 = (Float) entry.getKey();
                int intValue = ((MutableInt) entry.getValue()).intValue();
                int i2 = 0;
                int i4 = 0;
                while (i2 < intValue) {
                    int i02 = i0(array, f5.floatValue(), i4);
                    if (i02 < 0) {
                        break;
                    }
                    hashSet.add(Integer.valueOf(i02));
                    i2++;
                    i4 = i02 + 1;
                }
            }
            return W1(array, W(hashSet));
        }
        return F(array);
    }

    public static short[] p(short[] array, int index, short element) {
        return (short[]) a(array, index, Short.valueOf(element), Short.TYPE);
    }

    public static int p0(short[] array, short valueToFind) {
        return q0(array, valueToFind, 0);
    }

    public static int p1(boolean[] array, boolean valueToFind, int startIndex) {
        if (!B0(array) && startIndex >= 0) {
            if (startIndex >= array.length) {
                startIndex = array.length - 1;
            }
            while (startIndex >= 0) {
                if (valueToFind == array[startIndex]) {
                    return startIndex;
                }
                startIndex--;
            }
            return -1;
        }
        return -1;
    }

    public static int[] p2(int[] array, int... values) {
        if (!x0(array) && !x0(values)) {
            HashMap hashMap = new HashMap(values.length);
            for (int i2 : values) {
                Integer valueOf = Integer.valueOf(i2);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.Y();
                }
            }
            HashSet hashSet = new HashSet();
            for (Map.Entry entry : hashMap.entrySet()) {
                Integer num = (Integer) entry.getKey();
                int intValue = ((MutableInt) entry.getValue()).intValue();
                int i4 = 0;
                int i5 = 0;
                while (i4 < intValue) {
                    int k02 = k0(array, num.intValue(), i5);
                    if (k02 < 0) {
                        break;
                    }
                    hashSet.add(Integer.valueOf(k02));
                    i4++;
                    i5 = k02 + 1;
                }
            }
            return X1(array, W(hashSet));
        }
        return G(array);
    }

    public static short[] q(short[] array, short element) {
        short[] sArr = (short[]) V(array, Short.TYPE);
        sArr[sArr.length - 1] = element;
        return sArr;
    }

    public static int q0(short[] array, short valueToFind, int startIndex) {
        if (array == null) {
            return -1;
        }
        if (startIndex < 0) {
            startIndex = 0;
        }
        while (startIndex < array.length) {
            if (valueToFind == array[startIndex]) {
                return startIndex;
            }
            startIndex++;
        }
        return -1;
    }

    public static byte[] q1(byte[] array) {
        return (array == null || array.length == 0) ? f65308j : array;
    }

    public static long[] q2(long[] array, long... values) {
        if (!y0(array) && !y0(values)) {
            HashMap hashMap = new HashMap(values.length);
            for (long j4 : values) {
                Long valueOf = Long.valueOf(j4);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.Y();
                }
            }
            HashSet hashSet = new HashSet();
            for (Map.Entry entry : hashMap.entrySet()) {
                Long l4 = (Long) entry.getKey();
                int intValue = ((MutableInt) entry.getValue()).intValue();
                int i2 = 0;
                int i4 = 0;
                while (i2 < intValue) {
                    int m02 = m0(array, l4.longValue(), i4);
                    if (m02 < 0) {
                        break;
                    }
                    hashSet.add(Integer.valueOf(m02));
                    i2++;
                    i4 = m02 + 1;
                }
            }
            return Y1(array, W(hashSet));
        }
        return H(array);
    }

    public static boolean[] r(boolean[] array, int index, boolean element) {
        return (boolean[]) a(array, index, Boolean.valueOf(element), Boolean.TYPE);
    }

    public static int r0(boolean[] array, boolean valueToFind) {
        return s0(array, valueToFind, 0);
    }

    public static char[] r1(char[] array) {
        return (array == null || array.length == 0) ? f65316r : array;
    }

    public static <T> T[] r2(T[] array, T... values) {
        if (!z0(array) && !z0(values)) {
            HashMap hashMap = new HashMap(values.length);
            for (T t3 : values) {
                MutableInt mutableInt = (MutableInt) hashMap.get(t3);
                if (mutableInt == null) {
                    hashMap.put(t3, new MutableInt(1));
                } else {
                    mutableInt.Y();
                }
            }
            HashSet hashSet = new HashSet();
            for (Map.Entry entry : hashMap.entrySet()) {
                Object key = entry.getKey();
                int intValue = ((MutableInt) entry.getValue()).intValue();
                int i2 = 0;
                int i4 = 0;
                while (i2 < intValue) {
                    int o02 = o0(array, key, i4);
                    if (o02 < 0) {
                        break;
                    }
                    hashSet.add(Integer.valueOf(o02));
                    i2++;
                    i4 = o02 + 1;
                }
            }
            return (T[]) Z1(array, W(hashSet));
        }
        return (T[]) I(array);
    }

    public static boolean[] s(boolean[] array, boolean element) {
        boolean[] zArr = (boolean[]) V(array, Boolean.TYPE);
        zArr[zArr.length - 1] = element;
        return zArr;
    }

    public static int s0(boolean[] array, boolean valueToFind, int startIndex) {
        if (B0(array)) {
            return -1;
        }
        if (startIndex < 0) {
            startIndex = 0;
        }
        while (startIndex < array.length) {
            if (valueToFind == array[startIndex]) {
                return startIndex;
            }
            startIndex++;
        }
        return -1;
    }

    public static double[] s1(double[] array) {
        return (array == null || array.length == 0) ? f65310l : array;
    }

    public static short[] s2(short[] array, short... values) {
        if (!A0(array) && !A0(values)) {
            HashMap hashMap = new HashMap(values.length);
            for (short s3 : values) {
                Short valueOf = Short.valueOf(s3);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.Y();
                }
            }
            HashSet hashSet = new HashSet();
            for (Map.Entry entry : hashMap.entrySet()) {
                Short sh = (Short) entry.getKey();
                int intValue = ((MutableInt) entry.getValue()).intValue();
                int i2 = 0;
                int i4 = 0;
                while (i2 < intValue) {
                    int q02 = q0(array, sh.shortValue(), i4);
                    if (q02 < 0) {
                        break;
                    }
                    hashSet.add(Integer.valueOf(q02));
                    i2++;
                    i4 = q02 + 1;
                }
            }
            return a2(array, W(hashSet));
        }
        return J(array);
    }

    public static byte[] t(byte[] array1, byte... array2) {
        if (array1 == null) {
            return C(array2);
        }
        if (array2 == null) {
            return C(array1);
        }
        byte[] bArr = new byte[array1.length + array2.length];
        System.arraycopy(array1, 0, bArr, 0, array1.length);
        System.arraycopy(array2, 0, bArr, array1.length, array2.length);
        return bArr;
    }

    public static boolean t0(byte[] array) {
        return array == null || array.length == 0;
    }

    public static float[] t1(float[] array) {
        return (array == null || array.length == 0) ? f65312n : array;
    }

    public static boolean[] t2(boolean[] array, boolean... values) {
        if (!B0(array) && !B0(values)) {
            HashMap hashMap = new HashMap(values.length);
            for (boolean z3 : values) {
                Boolean valueOf = Boolean.valueOf(z3);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.Y();
                }
            }
            HashSet hashSet = new HashSet();
            for (Map.Entry entry : hashMap.entrySet()) {
                Boolean bool = (Boolean) entry.getKey();
                int intValue = ((MutableInt) entry.getValue()).intValue();
                int i2 = 0;
                int i4 = 0;
                while (i2 < intValue) {
                    int s02 = s0(array, bool.booleanValue(), i4);
                    if (s02 < 0) {
                        break;
                    }
                    hashSet.add(Integer.valueOf(s02));
                    i2++;
                    i4 = s02 + 1;
                }
            }
            return b2(array, W(hashSet));
        }
        return K(array);
    }

    public static char[] u(char[] array1, char... array2) {
        if (array1 == null) {
            return D(array2);
        }
        if (array2 == null) {
            return D(array1);
        }
        char[] cArr = new char[array1.length + array2.length];
        System.arraycopy(array1, 0, cArr, 0, array1.length);
        System.arraycopy(array2, 0, cArr, array1.length, array2.length);
        return cArr;
    }

    public static boolean u0(char[] array) {
        return array == null || array.length == 0;
    }

    public static int[] u1(int[] array) {
        return (array == null || array.length == 0) ? f65304f : array;
    }

    public static void u2(byte[] array) {
        if (array == null) {
            return;
        }
        int length = array.length - 1;
        for (int i2 = 0; length > i2; i2++) {
            byte b4 = array[length];
            array[length] = array[i2];
            array[i2] = b4;
            length--;
        }
    }

    public static double[] v(double[] array1, double... array2) {
        if (array1 == null) {
            return E(array2);
        }
        if (array2 == null) {
            return E(array1);
        }
        double[] dArr = new double[array1.length + array2.length];
        System.arraycopy(array1, 0, dArr, 0, array1.length);
        System.arraycopy(array2, 0, dArr, array1.length, array2.length);
        return dArr;
    }

    public static boolean v0(double[] array) {
        return array == null || array.length == 0;
    }

    public static long[] v1(long[] array) {
        return (array == null || array.length == 0) ? f65302d : array;
    }

    public static void v2(char[] array) {
        if (array == null) {
            return;
        }
        int length = array.length - 1;
        for (int i2 = 0; length > i2; i2++) {
            char c4 = array[length];
            array[length] = array[i2];
            array[i2] = c4;
            length--;
        }
    }

    public static float[] w(float[] array1, float... array2) {
        if (array1 == null) {
            return F(array2);
        }
        if (array2 == null) {
            return F(array1);
        }
        float[] fArr = new float[array1.length + array2.length];
        System.arraycopy(array1, 0, fArr, 0, array1.length);
        System.arraycopy(array2, 0, fArr, array1.length, array2.length);
        return fArr;
    }

    public static boolean w0(float[] array) {
        return array == null || array.length == 0;
    }

    public static Boolean[] w1(Boolean[] array) {
        return (array == null || array.length == 0) ? f65315q : array;
    }

    public static void w2(double[] array) {
        if (array == null) {
            return;
        }
        int length = array.length - 1;
        for (int i2 = 0; length > i2; i2++) {
            double d4 = array[length];
            array[length] = array[i2];
            array[i2] = d4;
            length--;
        }
    }

    public static int[] x(int[] array1, int... array2) {
        if (array1 == null) {
            return G(array2);
        }
        if (array2 == null) {
            return G(array1);
        }
        int[] iArr = new int[array1.length + array2.length];
        System.arraycopy(array1, 0, iArr, 0, array1.length);
        System.arraycopy(array2, 0, iArr, array1.length, array2.length);
        return iArr;
    }

    public static boolean x0(int[] array) {
        return array == null || array.length == 0;
    }

    public static Byte[] x1(Byte[] array) {
        return (array == null || array.length == 0) ? f65309k : array;
    }

    public static void x2(float[] array) {
        if (array == null) {
            return;
        }
        int length = array.length - 1;
        for (int i2 = 0; length > i2; i2++) {
            float f4 = array[length];
            array[length] = array[i2];
            array[i2] = f4;
            length--;
        }
    }

    public static long[] y(long[] array1, long... array2) {
        if (array1 == null) {
            return H(array2);
        }
        if (array2 == null) {
            return H(array1);
        }
        long[] jArr = new long[array1.length + array2.length];
        System.arraycopy(array1, 0, jArr, 0, array1.length);
        System.arraycopy(array2, 0, jArr, array1.length, array2.length);
        return jArr;
    }

    public static boolean y0(long[] array) {
        return array == null || array.length == 0;
    }

    public static Character[] y1(Character[] array) {
        return (array == null || array.length == 0) ? f65317s : array;
    }

    public static void y2(int[] array) {
        if (array == null) {
            return;
        }
        int length = array.length - 1;
        for (int i2 = 0; length > i2; i2++) {
            int i4 = array[length];
            array[length] = array[i2];
            array[i2] = i4;
            length--;
        }
    }

    public static <T> T[] z(T[] array1, T... array2) {
        if (array1 == null) {
            return (T[]) I(array2);
        }
        if (array2 == null) {
            return (T[]) I(array1);
        }
        Class<?> componentType = array1.getClass().getComponentType();
        T[] tArr = (T[]) ((Object[]) Array.newInstance(componentType, array1.length + array2.length));
        System.arraycopy(array1, 0, tArr, 0, array1.length);
        try {
            System.arraycopy(array2, 0, tArr, array1.length, array2.length);
            return tArr;
        } catch (ArrayStoreException e4) {
            Class<?> componentType2 = array2.getClass().getComponentType();
            if (!componentType.isAssignableFrom(componentType2)) {
                throw new IllegalArgumentException("Cannot store " + componentType2.getName() + " in an array of " + componentType.getName(), e4);
            }
            throw e4;
        }
    }

    public static boolean z0(Object[] array) {
        return array == null || array.length == 0;
    }

    public static Double[] z1(Double[] array) {
        return (array == null || array.length == 0) ? f65311m : array;
    }

    public static void z2(long[] array) {
        if (array == null) {
            return;
        }
        int length = array.length - 1;
        for (int i2 = 0; length > i2; i2++) {
            long j4 = array[length];
            array[length] = array[i2];
            array[i2] = j4;
            length--;
        }
    }
}
