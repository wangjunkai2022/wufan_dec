package sun.misc;

import java.lang.reflect.Field;
/* loaded from: classes.dex */
public class Unsafe {
    public native int addressSize();

    public int arrayBaseOffset(Class clazz) {
        throw new RuntimeException("Stub!");
    }

    public native byte getByte(long address);

    public native int getInt(long address);

    public native int getInt(Object obj, long offset);

    public native long getLong(long address);

    public native long getLong(Object obj, long offset);

    public native Object getObject(Object obj, long offset);

    public native short getShort(Object obj, long offset);

    public long objectFieldOffset(Field field) {
        throw new RuntimeException("Stub!");
    }

    public native void putByte(long address, byte x3);

    public native void putInt(Object obj, long offset, int newValue);

    public native void putLong(Object obj, long offset, long newValue);

    public native void putObject(Object obj, long offset, Object newValue);
}
