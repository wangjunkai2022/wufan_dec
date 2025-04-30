package de.robv.android.xposed;

import android.annotation.SuppressLint;
import android.util.Log;
import com.swift.sandhook.SandHook;
import com.swift.sandhook.xposedcompat.methodgen.DynamicBridge;
import com.swift.sandhook.xposedcompat.utils.DexLog;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.callbacks.XC_InitPackageResources;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class XposedBridge {
    static long BOOT_START_TIME = 0;
    private static final int RUNTIME_ART = 2;
    private static final int RUNTIME_DALVIK = 1;
    public static final String TAG = "SandXposed";
    @Deprecated
    public static int XPOSED_BRIDGE_VERSION;
    public static final ClassLoader BOOTCLASSLOADER = XposedBridge.class.getClassLoader();
    static boolean isZygote = true;
    private static int runtime = 2;
    public static boolean disableHooks = false;
    private static final Object[] EMPTY_ARRAY = new Object[0];
    public static final Map<Member, CopyOnWriteSortedSet<XC_MethodHook>> sHookedMethodCallbacks = new HashMap();
    public static final CopyOnWriteSortedSet<XC_LoadPackage> sLoadedPackageCallbacks = new CopyOnWriteSortedSet<>();
    static final CopyOnWriteSortedSet<XC_InitPackageResources> sInitPackageResourcesCallbacks = new CopyOnWriteSortedSet<>();

    /* loaded from: classes3.dex */
    public static class AdditionalHookInfo {
        public final CopyOnWriteSortedSet<XC_MethodHook> callbacks;
        public final Class<?>[] parameterTypes;
        public final Class<?> returnType;

        private AdditionalHookInfo(CopyOnWriteSortedSet<XC_MethodHook> callbacks, Class<?>[] parameterTypes, Class<?> returnType) {
            this.callbacks = callbacks;
            this.parameterTypes = parameterTypes;
            this.returnType = returnType;
        }
    }

    /* loaded from: classes.dex */
    public static final class CopyOnWriteSortedSet<E> {
        private volatile transient Object[] elements = XposedBridge.EMPTY_ARRAY;

        private int indexOf(Object o3) {
            for (int i2 = 0; i2 < this.elements.length; i2++) {
                if (o3.equals(this.elements[i2])) {
                    return i2;
                }
            }
            return -1;
        }

        public synchronized boolean add(E e4) {
            if (indexOf(e4) >= 0) {
                return false;
            }
            Object[] objArr = new Object[this.elements.length + 1];
            System.arraycopy(this.elements, 0, objArr, 0, this.elements.length);
            objArr[this.elements.length] = e4;
            Arrays.sort(objArr);
            this.elements = objArr;
            return true;
        }

        public Object[] getSnapshot() {
            return this.elements;
        }

        public synchronized boolean remove(E e4) {
            int indexOf = indexOf(e4);
            if (indexOf == -1) {
                return false;
            }
            Object[] objArr = new Object[this.elements.length - 1];
            System.arraycopy(this.elements, 0, objArr, 0, indexOf);
            System.arraycopy(this.elements, indexOf + 1, objArr, indexOf, (this.elements.length - indexOf) - 1);
            this.elements = objArr;
            return true;
        }
    }

    private XposedBridge() {
    }

    @SuppressLint({"SetWorldReadable"})
    private static File ensureSuperDexFile(String clz, Class<?> realSuperClz, Class<?> topClz) throws IOException {
        return null;
    }

    public static int getXposedVersion() {
        return 90;
    }

    public static Set<XC_MethodHook.Unhook> hookAllConstructors(Class<?> hookClass, XC_MethodHook callback) {
        HashSet hashSet = new HashSet();
        for (Constructor<?> constructor : hookClass.getDeclaredConstructors()) {
            hashSet.add(hookMethod(constructor, callback));
        }
        return hashSet;
    }

    public static Set<XC_MethodHook.Unhook> hookAllMethods(Class<?> hookClass, String methodName, XC_MethodHook callback) {
        Method[] declaredMethods;
        HashSet hashSet = new HashSet();
        for (Method method : hookClass.getDeclaredMethods()) {
            if (method.getName().equals(methodName)) {
                hashSet.add(hookMethod(method, callback));
            }
        }
        return hashSet;
    }

    public static void hookInitPackageResources(XC_InitPackageResources callback) {
    }

    public static void hookLoadPackage(XC_LoadPackage callback) {
        CopyOnWriteSortedSet<XC_LoadPackage> copyOnWriteSortedSet = sLoadedPackageCallbacks;
        synchronized (copyOnWriteSortedSet) {
            copyOnWriteSortedSet.add(callback);
        }
    }

    public static XC_MethodHook.Unhook hookMethod(Member hookMethod, XC_MethodHook callback) {
        CopyOnWriteSortedSet<XC_MethodHook> copyOnWriteSortedSet;
        int i2;
        boolean z3;
        Class<?>[] parameterTypes;
        Class<?> cls;
        if (!(hookMethod instanceof Method) && !(hookMethod instanceof Constructor)) {
            throw new IllegalArgumentException("Only methods and constructors can be hooked: " + hookMethod.toString());
        } else if (!hookMethod.getDeclaringClass().isInterface()) {
            if (Modifier.isAbstract(hookMethod.getModifiers())) {
                throw new IllegalArgumentException("Cannot hook abstract methods: " + hookMethod.toString());
            } else if (callback != null) {
                Map<Member, CopyOnWriteSortedSet<XC_MethodHook>> map = sHookedMethodCallbacks;
                synchronized (map) {
                    copyOnWriteSortedSet = map.get(hookMethod);
                    i2 = 0;
                    if (copyOnWriteSortedSet == null) {
                        copyOnWriteSortedSet = new CopyOnWriteSortedSet<>();
                        map.put(hookMethod, copyOnWriteSortedSet);
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                }
                copyOnWriteSortedSet.add(callback);
                if (z3) {
                    Class<?> declaringClass = hookMethod.getDeclaringClass();
                    if (runtime == 2) {
                        cls = null;
                        parameterTypes = null;
                    } else if (hookMethod instanceof Method) {
                        i2 = XposedHelpers.getIntField(hookMethod, "slot");
                        Method method = (Method) hookMethod;
                        parameterTypes = method.getParameterTypes();
                        cls = method.getReturnType();
                    } else {
                        i2 = XposedHelpers.getIntField(hookMethod, "slot");
                        parameterTypes = ((Constructor) hookMethod).getParameterTypes();
                        cls = null;
                    }
                    hookMethodNative(hookMethod, declaringClass, i2, new AdditionalHookInfo(copyOnWriteSortedSet, parameterTypes, cls));
                }
                return new XC_MethodHook.Unhook(hookMethod);
            } else {
                throw new IllegalArgumentException("callback should not be null!");
            }
        } else {
            throw new IllegalArgumentException("Cannot hook interfaces: " + hookMethod.toString());
        }
    }

    private static synchronized void hookMethodNative(final Member method, Class<?> declaringClass, int slot, final Object additionalInfoObj) {
        synchronized (XposedBridge.class) {
            DynamicBridge.hookMethod(method, (AdditionalHookInfo) additionalInfoObj);
        }
    }

    private static void initXResources() throws IOException {
    }

    public static Object invokeOriginalMethod(final Member method, final Object thisObject, final Object[] args) throws NullPointerException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            return SandHook.callOriginMethod(method, thisObject, args);
        } catch (IllegalAccessException e4) {
            throw e4;
        } catch (IllegalArgumentException e5) {
            throw e5;
        } catch (NullPointerException e6) {
            throw e6;
        } catch (InvocationTargetException e7) {
            throw e7;
        } catch (Throwable th) {
            throw new InvocationTargetException(th);
        }
    }

    public static synchronized void log(String text) {
        synchronized (XposedBridge.class) {
            boolean z3 = DexLog.DEBUG;
        }
    }

    public static void main(String[] args) {
    }

    @Deprecated
    public static void unhookMethod(Member hookMethod, XC_MethodHook callback) {
        Map<Member, CopyOnWriteSortedSet<XC_MethodHook>> map = sHookedMethodCallbacks;
        synchronized (map) {
            CopyOnWriteSortedSet<XC_MethodHook> copyOnWriteSortedSet = map.get(hookMethod);
            if (copyOnWriteSortedSet == null) {
                return;
            }
            copyOnWriteSortedSet.remove(callback);
        }
    }

    public static synchronized void log(Throwable t3) {
        synchronized (XposedBridge.class) {
            if (DexLog.DEBUG) {
                Log.getStackTraceString(t3);
            }
        }
    }
}
