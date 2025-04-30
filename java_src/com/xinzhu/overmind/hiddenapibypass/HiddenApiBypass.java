package com.xinzhu.overmind.hiddenapibypass;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.hiddenapibypass.Helper;
import dalvik.system.VMRuntime;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandleInfo;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Executable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import sun.misc.Unsafe;
@RequiresApi(28)
/* loaded from: classes.dex */
public final class HiddenApiBypass {

    /* renamed from: a  reason: collision with root package name */
    private static final String f64312a = "HiddenApiBypass";

    /* renamed from: b  reason: collision with root package name */
    private static final Unsafe f64313b;

    /* renamed from: c  reason: collision with root package name */
    private static final long f64314c;

    /* renamed from: d  reason: collision with root package name */
    private static final long f64315d;

    /* renamed from: e  reason: collision with root package name */
    private static final long f64316e;

    /* renamed from: f  reason: collision with root package name */
    private static final long f64317f;

    /* renamed from: g  reason: collision with root package name */
    private static final long f64318g;

    /* renamed from: h  reason: collision with root package name */
    private static final long f64319h;

    /* renamed from: i  reason: collision with root package name */
    private static final long f64320i;

    /* renamed from: j  reason: collision with root package name */
    private static final long f64321j;

    /* renamed from: k  reason: collision with root package name */
    private static final long f64322k;

    /* renamed from: l  reason: collision with root package name */
    private static final long f64323l;

    /* renamed from: m  reason: collision with root package name */
    private static final long f64324m;

    /* renamed from: n  reason: collision with root package name */
    private static final long f64325n;

    /* renamed from: o  reason: collision with root package name */
    private static final Set<String> f64326o = new HashSet();

    /* renamed from: p  reason: collision with root package name */
    static final /* synthetic */ boolean f64327p = false;

    static {
        try {
            Unsafe unsafe = (Unsafe) Unsafe.class.getDeclaredMethod("getUnsafe", new Class[0]).invoke(null, new Object[0]);
            f64313b = unsafe;
            f64314c = unsafe.objectFieldOffset(Helper.Executable.class.getDeclaredField("artMethod"));
            f64315d = unsafe.objectFieldOffset(Helper.Executable.class.getDeclaredField("declaringClass"));
            long objectFieldOffset = unsafe.objectFieldOffset(Helper.MethodHandle.class.getDeclaredField("artFieldOrMethod"));
            f64316e = objectFieldOffset;
            f64317f = unsafe.objectFieldOffset(Helper.MethodHandleImpl.class.getDeclaredField(PapayPayDetialActivity_.f34856k));
            long objectFieldOffset2 = unsafe.objectFieldOffset(Helper.Class.class.getDeclaredField("methods"));
            f64318g = objectFieldOffset2;
            long objectFieldOffset3 = unsafe.objectFieldOffset(Helper.Class.class.getDeclaredField("iFields"));
            f64319h = objectFieldOffset3;
            f64320i = unsafe.objectFieldOffset(Helper.Class.class.getDeclaredField("sFields"));
            f64321j = unsafe.objectFieldOffset(Helper.HandleInfo.class.getDeclaredField("member"));
            Method declaredMethod = Helper.NeverCall.class.getDeclaredMethod("a", new Class[0]);
            Method declaredMethod2 = Helper.NeverCall.class.getDeclaredMethod("b", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod2.setAccessible(true);
            MethodHandle unreflect = MethodHandles.lookup().unreflect(declaredMethod);
            MethodHandle unreflect2 = MethodHandles.lookup().unreflect(declaredMethod2);
            long j4 = unsafe.getLong(unreflect, objectFieldOffset);
            long j5 = unsafe.getLong(unreflect2, objectFieldOffset);
            long j6 = unsafe.getLong(Helper.NeverCall.class, objectFieldOffset2);
            long j7 = j5 - j4;
            f64322k = j7;
            f64323l = (j4 - j6) - j7;
            Field declaredField = Helper.NeverCall.class.getDeclaredField(ai.aA);
            Field declaredField2 = Helper.NeverCall.class.getDeclaredField("j");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            MethodHandle unreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
            MethodHandle unreflectGetter2 = MethodHandles.lookup().unreflectGetter(declaredField2);
            long j8 = unsafe.getLong(unreflectGetter, objectFieldOffset);
            long j9 = unsafe.getLong(unreflectGetter2, objectFieldOffset);
            long j10 = unsafe.getLong(Helper.NeverCall.class, objectFieldOffset3);
            f64324m = j9 - j8;
            f64325n = j8 - j10;
        } catch (ReflectiveOperationException e4) {
            throw new ExceptionInInitializerError(e4);
        }
    }

    @VisibleForTesting
    static boolean a(Class<?>[] params, Object[] args) {
        if (params.length != args.length) {
            return false;
        }
        for (int i2 = 0; i2 < params.length; i2++) {
            if (params[i2].isPrimitive()) {
                if (params[i2] == Integer.TYPE && !(args[i2] instanceof Integer)) {
                    return false;
                }
                if (params[i2] == Byte.TYPE && !(args[i2] instanceof Byte)) {
                    return false;
                }
                if (params[i2] == Character.TYPE && !(args[i2] instanceof Character)) {
                    return false;
                }
                if (params[i2] == Boolean.TYPE && !(args[i2] instanceof Boolean)) {
                    return false;
                }
                if (params[i2] == Double.TYPE && !(args[i2] instanceof Double)) {
                    return false;
                }
                if (params[i2] == Float.TYPE && !(args[i2] instanceof Float)) {
                    return false;
                }
                if (params[i2] == Long.TYPE && !(args[i2] instanceof Long)) {
                    return false;
                }
                if (params[i2] == Short.TYPE && !(args[i2] instanceof Short)) {
                    return false;
                }
            } else if (args[i2] != null && !params[i2].isInstance(args[i2])) {
                return false;
            }
        }
        return true;
    }

    public static boolean addHiddenApiExemptions(String... signaturePrefixes) {
        Set<String> set = f64326o;
        set.addAll(Arrays.asList(signaturePrefixes));
        String[] strArr = new String[set.size()];
        set.toArray(strArr);
        return setHiddenApiExemptions(strArr);
    }

    public static boolean clearHiddenApiExemptions() {
        f64326o.clear();
        return setHiddenApiExemptions(new String[0]);
    }

    @NonNull
    public static Constructor<?> getDeclaredConstructor(@NonNull Class<?> clazz, @NonNull Class<?>... parameterTypes) throws NoSuchMethodException {
        for (Executable executable : getDeclaredMethods(clazz)) {
            if (executable instanceof Constructor) {
                Class<?>[] parameterTypes2 = executable.getParameterTypes();
                if (parameterTypes2.length == parameterTypes.length) {
                    for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                        if (parameterTypes[i2] != parameterTypes2[i2]) {
                            break;
                        }
                    }
                    return (Constructor) executable;
                }
                continue;
            }
        }
        throw new NoSuchMethodException("Cannot find matching constructor");
    }

    @NonNull
    public static Method getDeclaredMethod(@NonNull Class<?> clazz, @NonNull String methodName, @NonNull Class<?>... parameterTypes) throws NoSuchMethodException {
        for (Executable executable : getDeclaredMethods(clazz)) {
            if (executable.getName().equals(methodName) && (executable instanceof Method)) {
                Class<?>[] parameterTypes2 = executable.getParameterTypes();
                if (parameterTypes2.length == parameterTypes.length) {
                    for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                        if (parameterTypes[i2] != parameterTypes2[i2]) {
                            break;
                        }
                    }
                    return (Method) executable;
                }
                continue;
            }
        }
        throw new NoSuchMethodException("Cannot find matching method");
    }

    @NonNull
    public static List<Executable> getDeclaredMethods(@NonNull Class<?> clazz) {
        ArrayList arrayList = new ArrayList();
        if (!clazz.isPrimitive() && !clazz.isArray()) {
            try {
                Method declaredMethod = Helper.NeverCall.class.getDeclaredMethod("a", new Class[0]);
                declaredMethod.setAccessible(true);
                MethodHandle unreflect = MethodHandles.lookup().unreflect(declaredMethod);
                Unsafe unsafe = f64313b;
                long j4 = unsafe.getLong(clazz, f64318g);
                if (j4 == 0) {
                    return arrayList;
                }
                int i2 = unsafe.getInt(j4);
                for (int i4 = 0; i4 < i2; i4++) {
                    long j5 = (i4 * f64322k) + j4 + f64323l;
                    Unsafe unsafe2 = f64313b;
                    unsafe2.putLong(unreflect, f64316e, j5);
                    unsafe2.putObject(unreflect, f64317f, null);
                    try {
                        MethodHandles.lookup().revealDirect(unreflect);
                    } catch (Throwable unused) {
                    }
                    Unsafe unsafe3 = f64313b;
                    arrayList.add((Executable) unsafe3.getObject((MethodHandleInfo) unsafe3.getObject(unreflect, f64317f), f64321j));
                }
            } catch (IllegalAccessException | NoSuchMethodException unused2) {
            }
        }
        return arrayList;
    }

    @NonNull
    public static List<Field> getInstanceFields(@NonNull Class<?> clazz) {
        ArrayList arrayList = new ArrayList();
        if (!clazz.isPrimitive() && !clazz.isArray()) {
            try {
                Field declaredField = Helper.NeverCall.class.getDeclaredField(ai.aA);
                declaredField.setAccessible(true);
                MethodHandle unreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
                Unsafe unsafe = f64313b;
                long j4 = unsafe.getLong(clazz, f64319h);
                if (j4 == 0) {
                    return arrayList;
                }
                int i2 = unsafe.getInt(j4);
                for (int i4 = 0; i4 < i2; i4++) {
                    long j5 = (i4 * f64324m) + j4 + f64325n;
                    Unsafe unsafe2 = f64313b;
                    unsafe2.putLong(unreflectGetter, f64316e, j5);
                    unsafe2.putObject(unreflectGetter, f64317f, null);
                    try {
                        MethodHandles.lookup().revealDirect(unreflectGetter);
                    } catch (Throwable unused) {
                    }
                    Unsafe unsafe3 = f64313b;
                    arrayList.add((Field) unsafe3.getObject((MethodHandleInfo) unsafe3.getObject(unreflectGetter, f64317f), f64321j));
                }
            } catch (IllegalAccessException | NoSuchFieldException unused2) {
            }
        }
        return arrayList;
    }

    @NonNull
    public static List<Field> getStaticFields(@NonNull Class<?> clazz) {
        ArrayList arrayList = new ArrayList();
        if (!clazz.isPrimitive() && !clazz.isArray()) {
            try {
                Field declaredField = Helper.NeverCall.class.getDeclaredField(ai.az);
                declaredField.setAccessible(true);
                MethodHandle unreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
                Unsafe unsafe = f64313b;
                long j4 = unsafe.getLong(clazz, f64320i);
                if (j4 == 0) {
                    return arrayList;
                }
                int i2 = unsafe.getInt(j4);
                for (int i4 = 0; i4 < i2; i4++) {
                    long j5 = (i4 * f64324m) + j4 + f64325n;
                    Unsafe unsafe2 = f64313b;
                    unsafe2.putLong(unreflectGetter, f64316e, j5);
                    unsafe2.putObject(unreflectGetter, f64317f, null);
                    try {
                        MethodHandles.lookup().revealDirect(unreflectGetter);
                    } catch (Throwable unused) {
                    }
                    Unsafe unsafe3 = f64313b;
                    arrayList.add((Field) unsafe3.getObject((MethodHandleInfo) unsafe3.getObject(unreflectGetter, f64317f), f64321j));
                }
            } catch (IllegalAccessException | NoSuchFieldException unused2) {
            }
        }
        return arrayList;
    }

    public static Object invoke(@NonNull Class<?> clazz, @Nullable Object thiz, @NonNull String methodName, Object... args) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        if (thiz != null && !clazz.isInstance(thiz)) {
            throw new IllegalArgumentException("this object is not an instance of the given class");
        }
        Method declaredMethod = Helper.InvokeStub.class.getDeclaredMethod("invoke", Object[].class);
        declaredMethod.setAccessible(true);
        Unsafe unsafe = f64313b;
        long j4 = unsafe.getLong(clazz, f64318g);
        if (j4 != 0) {
            int i2 = unsafe.getInt(j4);
            for (int i4 = 0; i4 < i2; i4++) {
                f64313b.putLong(declaredMethod, f64314c, (i4 * f64322k) + j4 + f64323l);
                if (methodName.equals(declaredMethod.getName()) && a(declaredMethod.getParameterTypes(), args)) {
                    return declaredMethod.invoke(thiz, args);
                }
            }
            throw new NoSuchMethodException("Cannot find matching method");
        }
        throw new NoSuchMethodException("Cannot find matching method");
    }

    public static Object newInstance(@NonNull Class<?> clazz, Object... initargs) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException {
        Method declaredMethod = Helper.InvokeStub.class.getDeclaredMethod("invoke", Object[].class);
        Constructor declaredConstructor = Helper.InvokeStub.class.getDeclaredConstructor(Object[].class);
        declaredConstructor.setAccessible(true);
        Unsafe unsafe = f64313b;
        long j4 = unsafe.getLong(clazz, f64318g);
        if (j4 != 0) {
            int i2 = unsafe.getInt(j4);
            for (int i4 = 0; i4 < i2; i4++) {
                long j5 = (i4 * f64322k) + j4 + f64323l;
                Unsafe unsafe2 = f64313b;
                long j6 = f64314c;
                unsafe2.putLong(declaredMethod, j6, j5);
                if ("<init>".equals(declaredMethod.getName())) {
                    unsafe2.putLong(declaredConstructor, j6, j5);
                    unsafe2.putObject(declaredConstructor, f64315d, clazz);
                    if (a(declaredConstructor.getParameterTypes(), initargs)) {
                        return declaredConstructor.newInstance(initargs);
                    }
                }
            }
            throw new NoSuchMethodException("Cannot find matching constructor");
        }
        throw new NoSuchMethodException("Cannot find matching constructor");
    }

    public static boolean setHiddenApiExemptions(@NonNull String... signaturePrefixes) {
        try {
            invoke(VMRuntime.class, invoke(VMRuntime.class, null, "getRuntime", new Object[0]), "setHiddenApiExemptions", signaturePrefixes);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
