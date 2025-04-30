package com.google.protobuf;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;
/* loaded from: classes2.dex */
final class UnsafeUtil {
    private static final Unsafe UNSAFE = getUnsafe();
    private static final boolean HAS_UNSAFE_BYTEBUFFER_OPERATIONS = supportsUnsafeByteBufferOperations();
    private static final boolean HAS_UNSAFE_ARRAY_OPERATIONS = supportsUnsafeArrayOperations();
    private static final long ARRAY_BASE_OFFSET = byteArrayBaseOffset();
    private static final long BUFFER_ADDRESS_OFFSET = fieldOffset(field(Buffer.class, "address"));

    private UnsafeUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long addressOffset(ByteBuffer byteBuffer) {
        return UNSAFE.getLong(byteBuffer, BUFFER_ADDRESS_OFFSET);
    }

    private static int byteArrayBaseOffset() {
        if (HAS_UNSAFE_ARRAY_OPERATIONS) {
            return UNSAFE.arrayBaseOffset(byte[].class);
        }
        return -1;
    }

    static void copyMemory(byte[] bArr, long j4, byte[] bArr2, long j5, long j6) {
        UNSAFE.copyMemory(bArr, j4, bArr2, j5, j6);
    }

    private static Field field(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static long fieldOffset(Field field) {
        Unsafe unsafe;
        if (field == null || (unsafe = UNSAFE) == null) {
            return -1L;
        }
        return unsafe.objectFieldOffset(field);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long getArrayBaseOffset() {
        return ARRAY_BASE_OFFSET;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte getByte(byte[] bArr, long j4) {
        return UNSAFE.getByte(bArr, j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long getLong(byte[] bArr, long j4) {
        return UNSAFE.getLong(bArr, j4);
    }

    private static Unsafe getUnsafe() {
        try {
            return (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.protobuf.UnsafeUtil.1
                @Override // java.security.PrivilegedExceptionAction
                public Unsafe run() throws Exception {
                    Field[] declaredFields;
                    for (Field field : Unsafe.class.getDeclaredFields()) {
                        field.setAccessible(true);
                        Object obj = field.get(null);
                        if (Unsafe.class.isInstance(obj)) {
                            return (Unsafe) Unsafe.class.cast(obj);
                        }
                    }
                    return null;
                }
            });
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean hasUnsafeArrayOperations() {
        return HAS_UNSAFE_ARRAY_OPERATIONS;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean hasUnsafeByteBufferOperations() {
        return HAS_UNSAFE_BYTEBUFFER_OPERATIONS;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putByte(byte[] bArr, long j4, byte b4) {
        UNSAFE.putByte(bArr, j4, b4);
    }

    private static boolean supportsUnsafeArrayOperations() {
        Unsafe unsafe = UNSAFE;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("arrayBaseOffset", Class.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getByte", Object.class, cls2);
                cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    private static boolean supportsUnsafeByteBufferOperations() {
        Unsafe unsafe = UNSAFE;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getByte", cls2);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putByte", cls2, Byte.TYPE);
                cls.getMethod("getLong", cls2);
                cls.getMethod("copyMemory", cls2, cls2, cls2);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    static void copyMemory(long j4, long j5, long j6) {
        UNSAFE.copyMemory(j4, j5, j6);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte getByte(long j4) {
        return UNSAFE.getByte(j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long getLong(long j4) {
        return UNSAFE.getLong(j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putByte(long j4, byte b4) {
        UNSAFE.putByte(j4, b4);
    }
}
