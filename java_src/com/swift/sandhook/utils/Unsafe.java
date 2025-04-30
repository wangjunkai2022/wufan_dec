package com.swift.sandhook.utils;

import com.swift.sandhook.HookLog;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public final class Unsafe {
    private static final String TAG = "Unsafe";
    private static Method arrayBaseOffsetMethod;
    private static Method arrayIndexScaleMethod;
    private static Method getIntMethod;
    private static Method getLongMethod;
    private static Class objectArrayClass = Object[].class;
    private static volatile boolean supported;
    private static Object unsafe;
    private static Class unsafeClass;

    static {
        try {
            try {
                unsafeClass = sun.misc.Unsafe.class;
                Field declaredField = sun.misc.Unsafe.class.getDeclaredField("theUnsafe");
                declaredField.setAccessible(true);
                unsafe = declaredField.get(null);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            Field declaredField2 = unsafeClass.getDeclaredField("THE_ONE");
            declaredField2.setAccessible(true);
            unsafe = declaredField2.get(null);
        }
        if (unsafe != null) {
            try {
                arrayBaseOffsetMethod = unsafeClass.getDeclaredMethod("arrayBaseOffset", Class.class);
                arrayIndexScaleMethod = unsafeClass.getDeclaredMethod("arrayIndexScale", Class.class);
                Class cls = unsafeClass;
                Class<?> cls2 = Long.TYPE;
                getIntMethod = cls.getDeclaredMethod("getInt", Object.class, cls2);
                getLongMethod = unsafeClass.getDeclaredMethod("getLong", Object.class, cls2);
                supported = true;
            } catch (Exception unused3) {
            }
        }
    }

    private Unsafe() {
    }

    public static int arrayBaseOffset(Class cls) {
        try {
            return ((Integer) arrayBaseOffsetMethod.invoke(unsafe, cls)).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static int arrayIndexScale(Class cls) {
        try {
            return ((Integer) arrayIndexScaleMethod.invoke(unsafe, cls)).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static int getInt(Object array, long offset) {
        try {
            return ((Integer) getIntMethod.invoke(unsafe, array, Long.valueOf(offset))).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static long getLong(Object array, long offset) {
        try {
            return ((Long) getLongMethod.invoke(unsafe, array, Long.valueOf(offset))).longValue();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static long getObjectAddress(Object obj) {
        try {
            Object[] objArr = {obj};
            if (arrayIndexScale(objectArrayClass) == 8) {
                return getLong(objArr, arrayBaseOffset(objectArrayClass));
            }
            return 4294967295L & getInt(objArr, arrayBaseOffset(objectArrayClass));
        } catch (Exception e4) {
            HookLog.e("get object address error", e4);
            return -1L;
        }
    }

    public static boolean support() {
        return supported;
    }
}
