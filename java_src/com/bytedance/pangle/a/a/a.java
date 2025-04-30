package com.bytedance.pangle.a.a;

import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.FieldUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, Field> f10064a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static Map<String, Method> f10065b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private static Map<String, Constructor> f10066c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private static Map<String, Class> f10067d = new HashMap();

    static {
        try {
            FieldUtils.writeField(b.class, "classLoader", (Object) null);
            ZeusLogger.w(ZeusLogger.TAG_INIT, "HackHelper HackHelperImpl use BootClassLoader");
        } catch (Exception e4) {
            ZeusLogger.errReport(ZeusLogger.TAG_INIT, "HackHelperinit failed", e4);
        }
    }

    public static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        Method method;
        String b4 = b(cls, str, clsArr);
        synchronized (f10065b) {
            method = f10065b.get(b4);
        }
        if (method != null) {
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            return method;
        }
        try {
            Method a4 = b.a(cls, str, clsArr);
            if (a4 != null) {
                synchronized (f10065b) {
                    f10065b.put(b4, a4);
                }
            }
            return a4;
        } catch (Throwable th) {
            ZeusLogger.w(ZeusLogger.TAG, "HackHelper" + String.format("getMethod %s#%s failed !!!", cls.getName(), str), th);
            return null;
        }
    }

    private static String b(Class<?> cls, String str, Class<?>... clsArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(cls.getName());
        sb.append("#");
        sb.append(str);
        if (clsArr != null && clsArr.length > 0) {
            for (Class<?> cls2 : clsArr) {
                sb.append(cls2.getName());
                sb.append("#");
            }
        } else {
            sb.append(Void.class.getName());
        }
        return sb.toString();
    }

    public static Constructor a(Class<?> cls, Class<?>... clsArr) {
        Constructor constructor;
        String b4 = b(cls, "clinit", clsArr);
        synchronized (f10066c) {
            constructor = f10066c.get(b4);
        }
        if (constructor != null) {
            if (!constructor.isAccessible()) {
                constructor.setAccessible(true);
            }
            return constructor;
        }
        try {
            Constructor a4 = b.a(cls, clsArr);
            if (a4 != null) {
                synchronized (f10066c) {
                    f10066c.put(b4, a4);
                }
            }
            return a4;
        } catch (Throwable th) {
            ZeusLogger.w(ZeusLogger.TAG, "HackHelper" + String.format("getConstructor %s failed !!!", cls.getName()), th);
            return null;
        }
    }

    public static Field a(Class<?> cls, String str) {
        Field field;
        String str2 = cls.getName() + "#" + str;
        synchronized (f10064a) {
            field = f10064a.get(str2);
        }
        if (field != null) {
            if (!field.isAccessible()) {
                field.setAccessible(true);
            }
            return field;
        }
        try {
            Field a4 = b.a(cls, str);
            if (a4 != null) {
                synchronized (f10064a) {
                    f10064a.put(str2, a4);
                }
            }
            return a4;
        } catch (Throwable th) {
            ZeusLogger.w(ZeusLogger.TAG, "HackHelper" + String.format("getField %s#%s failed !!!", cls.getName(), str), th);
            return null;
        }
    }
}
