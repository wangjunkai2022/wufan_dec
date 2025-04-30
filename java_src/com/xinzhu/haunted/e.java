package com.xinzhu.haunted;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: HtMethod.java */
/* loaded from: classes3.dex */
public final class e<T> {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63922b = "e";

    /* renamed from: a  reason: collision with root package name */
    private Method f63923a;

    public e(Class<?> ego, String methodName, Object... args) throws NoSuchMethodException {
        this(ego, null, methodName, args);
    }

    public T a(Object thiz, Object... args) throws Throwable {
        try {
            return (T) this.f63923a.invoke(thiz, args);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() != null) {
                throw e4.getCause();
            }
            throw e4;
        }
    }

    public T call(Object thiz, Object... args) {
        try {
            return (T) this.f63923a.invoke(thiz, args);
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
            return null;
        } catch (InvocationTargetException e5) {
            Throwable cause = e5.getCause();
            Throwable th = e5;
            if (cause != null) {
                th = e5.getCause();
            }
            th.printStackTrace();
            return null;
        }
    }

    public e(Class<?> ego, ClassLoader cl, String methodName, Object... args) throws NoSuchMethodException {
    }
}
