package com.xinzhu.overmind.hiddenapibypass;

import java.lang.invoke.MethodHandleInfo;
import java.lang.invoke.MethodType;
import java.lang.reflect.Member;
/* loaded from: classes3.dex */
public class Helper {

    /* loaded from: classes.dex */
    public static class AccessibleObject {
        private boolean override;
    }

    /* loaded from: classes.dex */
    public static final class Class {
        private transient int accessFlags;
        private transient int classFlags;
        private transient ClassLoader classLoader;
        private transient int classSize;
        private transient int clinitThreadId;
        private transient java.lang.Class<?> componentType;
        private transient short copiedMethodsOffset;
        private transient Object dexCache;
        private transient int dexClassDefIndex;
        private volatile transient int dexTypeIndex;
        private transient Object extData;
        private transient long iFields;
        private transient Object[] ifTable;
        private transient long methods;
        private transient String name;
        private transient int numReferenceInstanceFields;
        private transient int numReferenceStaticFields;
        private transient int objectSize;
        private transient int objectSizeAllocFastPath;
        private transient int primitiveType;
        private transient int referenceInstanceOffsets;
        private transient long sFields;
        private transient int status;
        private transient java.lang.Class<?> superClass;
        private transient short virtualMethodsOffset;
        private transient Object vtable;
    }

    /* loaded from: classes.dex */
    public static final class Executable extends AccessibleObject {
        private int accessFlags;
        private long artMethod;
        private Class declaringClass;
        private Class declaringClassOfOverriddenMethod;
        private Object[] parameters;
    }

    /* loaded from: classes.dex */
    public static final class HandleInfo {
        private final Member member = null;
        private final MethodHandle handle = null;
    }

    /* loaded from: classes.dex */
    public static class InvokeStub {
        private InvokeStub(Object... args) {
            throw new IllegalStateException("Failed to new a instance");
        }

        private static Object invoke(Object... args) {
            throw new IllegalStateException("Failed to invoke the method");
        }
    }

    /* loaded from: classes.dex */
    public static class MethodHandle {
        private MethodHandle cachedSpreadInvoker;
        private MethodType nominalType;
        private final MethodType type = null;
        protected final int handleKind = 0;
        protected final long artFieldOrMethod = 0;
    }

    /* loaded from: classes.dex */
    public static final class MethodHandleImpl extends MethodHandle {
        private final MethodHandleInfo info = null;
    }

    /* loaded from: classes.dex */
    public static class NeverCall {

        /* renamed from: s  reason: collision with root package name */
        private static int f64308s;

        /* renamed from: t  reason: collision with root package name */
        private static int f64309t;

        /* renamed from: i  reason: collision with root package name */
        private int f64310i;

        /* renamed from: j  reason: collision with root package name */
        private int f64311j;

        private static void a() {
        }

        private static void b() {
        }
    }
}
