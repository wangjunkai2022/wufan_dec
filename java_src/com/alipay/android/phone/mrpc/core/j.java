package com.alipay.android.phone.mrpc.core;

import android.os.Looper;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: d  reason: collision with root package name */
    private static final ThreadLocal<Object> f9468d = new ThreadLocal<>();

    /* renamed from: e  reason: collision with root package name */
    private static final ThreadLocal<Map<String, Object>> f9469e = new ThreadLocal<>();

    /* renamed from: a  reason: collision with root package name */
    private byte f9470a = 0;

    /* renamed from: b  reason: collision with root package name */
    private AtomicInteger f9471b = new AtomicInteger();

    /* renamed from: c  reason: collision with root package name */
    private h f9472c;

    public j(h hVar) {
        this.f9472c = hVar;
    }

    public final Object a(Method method, Object[] objArr) {
        if (Looper.myLooper() != null && Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalThreadStateException("can't in main thread call rpc .");
        }
        com.alipay.mobile.framework.service.annotation.a aVar = (com.alipay.mobile.framework.service.annotation.a) method.getAnnotation(com.alipay.mobile.framework.service.annotation.a.class);
        boolean z3 = method.getAnnotation(com.alipay.mobile.framework.service.annotation.b.class) != null;
        Type genericReturnType = method.getGenericReturnType();
        method.getAnnotations();
        ThreadLocal<Object> threadLocal = f9468d;
        threadLocal.set(null);
        ThreadLocal<Map<String, Object>> threadLocal2 = f9469e;
        threadLocal2.set(null);
        if (aVar != null) {
            String a4 = aVar.a();
            int incrementAndGet = this.f9471b.incrementAndGet();
            try {
                if (this.f9470a == 0) {
                    com.alipay.android.phone.mrpc.core.a.e eVar = new com.alipay.android.phone.mrpc.core.a.e(incrementAndGet, a4, objArr);
                    if (threadLocal2.get() != null) {
                        eVar.a(threadLocal2.get());
                    }
                    byte[] a5 = eVar.a();
                    threadLocal2.set(null);
                    Object a6 = new com.alipay.android.phone.mrpc.core.a.d(genericReturnType, (byte[]) new x(this.f9472c.f9463a, method, incrementAndGet, a4, a5, z3).a()).a();
                    if (genericReturnType != Void.TYPE) {
                        threadLocal.set(a6);
                    }
                }
                return threadLocal.get();
            } catch (c e4) {
                e4.c(a4);
                throw e4;
            }
        }
        throw new IllegalStateException("OperationType must be set.");
    }
}
