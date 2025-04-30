package com.join.mgps.mod.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* compiled from: ClassUtils.java */
/* loaded from: classes4.dex */
public class c {
    public static void a(ClassLoader classLoader, Context context) {
        IOException[] iOExceptionArr;
        if (context == null || classLoader == null) {
            return;
        }
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            applicationInfo.toString();
            classLoader.toString();
            Object obj = d(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new File(applicationInfo.publicSourceDir));
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(new File(applicationInfo.nativeLibraryDir));
            int i2 = Build.VERSION.SDK_INT;
            if (i2 > 25) {
                c(obj, "nativeLibraryDirectories", new File[]{new File(applicationInfo.nativeLibraryDir)});
                b(obj, "nativeLibraryPathElements", (Object[]) e(obj, "makePathElements", List.class).invoke(obj, arrayList3));
            } else if (i2 >= 23) {
                c(obj, "nativeLibraryDirectories", new File[]{new File(applicationInfo.nativeLibraryDir)});
                b(obj, "nativeLibraryPathElements", g(obj, arrayList3, arrayList));
            } else {
                b(obj, "nativeLibraryDirectories", new File[]{new File(applicationInfo.nativeLibraryDir)});
            }
            b(obj, "dexElements", g(obj, arrayList2, arrayList));
            if (arrayList.size() > 0) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    IOException iOException = (IOException) it2.next();
                }
                Field d4 = d(classLoader, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) d4.get(classLoader);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    IOException[] iOExceptionArr3 = new IOException[arrayList.size() + iOExceptionArr2.length];
                    arrayList.toArray(iOExceptionArr3);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                    iOExceptionArr = iOExceptionArr3;
                }
                d4.set(classLoader, iOExceptionArr);
            }
            classLoader.toString();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void b(Object obj, String str, Object[] objArr) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        Field d4 = d(obj, str);
        Object[] objArr2 = (Object[]) d4.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        d4.set(obj, objArr3);
    }

    public static void c(Object obj, String str, Object[] objArr) throws NoSuchFieldException, IllegalAccessException {
        Field d4 = d(obj, str);
        Object[] array = ((List) d4.get(obj)).toArray();
        Object[] objArr2 = (Object[]) Array.newInstance(array.getClass().getComponentType(), array.length + 1);
        System.arraycopy(array, 0, objArr2, 0, array.length);
        System.arraycopy(objArr, 0, objArr2, array.length, 1);
        d4.set(obj, Arrays.asList(objArr2));
    }

    public static Field d(Object obj, String str) throws NoSuchFieldException {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
    }

    public static Method e(Object obj, String str, Class<?>... clsArr) throws NoSuchMethodException {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    public static Class<?> f(ClassLoader classLoader, String str) {
        try {
            return classLoader.loadClass(str);
        } catch (ClassNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static Object[] g(Object obj, ArrayList<File> arrayList, ArrayList<IOException> arrayList2) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
        return (Object[]) (Build.VERSION.SDK_INT >= 23 ? e(obj, "makePathElements", List.class, File.class, List.class) : e(obj, "makeDexElements", ArrayList.class, File.class, ArrayList.class)).invoke(obj, arrayList, null, arrayList2);
    }
}
