package org.jboss.netty.util.internal;

import java.lang.reflect.Method;
import java.nio.ByteBuffer;
/* compiled from: ByteBufferUtil.java */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f73725a;

    /* renamed from: b  reason: collision with root package name */
    private static final Method f73726b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f73727c;

    static {
        Method method;
        Method method2;
        Method method3 = null;
        boolean z3 = true;
        try {
            method2 = Class.forName("java.nio.DirectByteBuffer").getMethod("cleaner", new Class[0]);
        } catch (Exception unused) {
            method = null;
        }
        try {
            method2.setAccessible(true);
            method3 = Class.forName("sun.misc.Cleaner").getMethod("clean", new Class[0]);
            method3.setAccessible(true);
        } catch (Exception unused2) {
            method = method3;
            method3 = method2;
            method2 = method3;
            method3 = method;
            z3 = false;
            f73725a = z3;
            f73726b = method2;
            f73727c = method3;
        }
        f73725a = z3;
        f73726b = method2;
        f73727c = method3;
    }

    private a() {
    }

    public static void a(ByteBuffer byteBuffer) {
        if (f73725a && byteBuffer.isDirect()) {
            try {
                f73727c.invoke(f73726b.invoke(byteBuffer, new Object[0]), new Object[0]);
            } catch (Exception unused) {
            }
        }
    }
}
